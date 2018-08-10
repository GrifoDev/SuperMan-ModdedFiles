.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ApdrRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_UP_STEP_COUNT:I = 0x1f4

.field private static final DEFAULT_WAKE_UP_TIME_COUNT:I = 0x258

.field private static final STEP_COUNT_HIGH:I = 0x32

.field private static final STEP_COUNT_LOW:I = 0x1f4

.field private static final STEP_COUNT_MEDIUM:I = 0x12c

.field private static final TIME_COUNT_HIGH:I = 0x3c

.field private static final TIME_COUNT_LOW:I = 0x258

.field private static final TIME_COUNT_MEDIUM:I = 0x78

.field private static final TIME_SYNC_TIMER:I = 0x1c20


# instance fields
.field private mLppResolution:I

.field private mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSyncTime:Landroid/text/format/Time;

.field private mSyncTimeTask:Ljava/lang/Runnable;

.field private mWakeUpStepCount:I

.field private mWakeUpTimeCount:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCurTimeToSensorHub()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method private sendCurTimeToSensorHub()V
    .locals 4

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    const-string/jumbo v2, "GMT+00:00"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/4 v2, 0x3

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    iget v2, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    iget v2, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    iget v2, v1, Landroid/text/format/Time;->second:I

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
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
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Alert"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Count"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hour"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Minute"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Second"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "doe"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeDifference"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "IncrementEast"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "IncrementNorth"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "ActivityType"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingArea"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [B

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x1c

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

.method public final getSyncTime()Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    return-object v0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public gpsAvailable()V
    .locals 4

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final gpsBatchStarted()V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 4

    const/4 v3, 0x5

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsUnavailable()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [B

    aput-byte v2, v0, v2

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final locationUpdate(Landroid/location/Location;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v7, v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v8, v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-int v3, v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    float-to-int v14, v14

    int-to-byte v2, v14

    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/text/format/Time;->set(J)V

    const-string/jumbo v14, "GMT+00:00"

    invoke-virtual {v12, v14}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    const-string/jumbo v14, "satellites"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    int-to-byte v10, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "satellites:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    float-to-int v11, v14

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    if-eqz v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "gps"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x1

    :cond_1
    :goto_0
    const/16 v14, 0x16

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v14, 0x4

    invoke-static {v7, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x4

    invoke-static {v8, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x4

    invoke-static {v3, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v14, v12, Landroid/text/format/Time;->hour:I

    int-to-byte v14, v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v14, v12, Landroid/text/format/Time;->minute:I

    int-to-byte v14, v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v14, v12, Landroid/text/format/Time;->second:I

    int-to-byte v14, v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x2

    invoke-static {v11, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x2

    invoke-static {v6, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const-string/jumbo v14, "LPPApdrR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "loc time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "LPPApdrR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "hr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "LPPApdrR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "hr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/16 v15, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCommonValueToSensorHub(B[B)Z

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "network"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, 0x2

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "GPS batch"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v13, 0x4

    goto/16 :goto_0
.end method

.method public final parse([BI)I
    .locals 18

    move/from16 v13, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "LppApdr"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "parse:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    array-length v15, v0

    sub-int v15, v15, p2

    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_0

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v15, -0x1

    return v15

    :cond_0
    aget-byte v15, p1, p2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    add-int/lit8 v13, p2, 0x1

    aget-byte v17, p1, v13

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    add-int/lit8 v13, v13, 0x1

    return v13

    :cond_1
    add-int/lit8 v13, p2, 0x1

    aget-byte v15, p1, p2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v15, -0x1

    return v15

    :cond_2
    add-int/lit8 v14, v13, 0x1

    aget-byte v3, p1, v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "dataSize:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    if-gtz v3, :cond_3

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v15, -0x1

    return v15

    :cond_3
    move-object/from16 v0, p1

    array-length v15, v0

    sub-int/2addr v15, v14

    mul-int/lit8 v16, v3, 0x5

    add-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "packet len:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " tmpNext:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v15, -0x1

    return v15

    :cond_4
    add-int/lit8 v13, v14, 0x1

    aget-byte v5, p1, v14

    add-int/lit8 v14, v13, 0x1

    aget-byte v9, p1, v13

    add-int/lit8 v13, v14, 0x1

    aget-byte v11, p1, v14

    add-int/lit8 v14, v13, 0x1

    aget-byte v4, p1, v13

    new-array v12, v3, [J

    new-array v7, v3, [I

    new-array v8, v3, [I

    new-array v2, v3, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "packet length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "  tmpNext:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    add-int/lit8 v13, v14, 0x1

    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v14, v13, 0x1

    aget-byte v16, p1, v13

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/lit8 v15, v15, 0x64

    int-to-long v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, v12, v6

    add-int/lit8 v13, v14, 0x1

    aget-byte v15, p1, v14

    mul-int/lit8 v15, v15, 0xa

    aput v15, v7, v6

    add-int/lit8 v14, v13, 0x1

    aget-byte v15, p1, v13

    mul-int/lit8 v15, v15, 0xa

    aput v15, v8, v6

    add-int/lit8 v13, v14, 0x1

    aget-byte v15, p1, v14

    aput v15, v2, v6

    add-int/lit8 v6, v6, 0x1

    move v14, v13

    goto :goto_0

    :cond_5
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return v14
.end method

.method public final sendSleepModeCmdToSensorHub([B)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v2

    if-ltz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, p1

    if-lez v2, :cond_0

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    new-array v1, v3, [B

    aput-byte v3, v1, v4

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v2

    const/16 v3, -0x4f

    invoke-super {p0, v3, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->sendCmdToSensorHub(BB[B)V

    return-void
.end method

.method public final setLppResolution(I)V
    .locals 5

    const/16 v4, 0x1c

    const/16 v3, 0x17

    const/4 v2, 0x2

    const/4 v1, 0x1

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    if-nez p1, :cond_1

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_0

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0
.end method

.method public final setMagneticSensorOffset(III)V
    .locals 8

    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-static {p2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-static {p3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x17

    const/16 v6, 0x1c

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
