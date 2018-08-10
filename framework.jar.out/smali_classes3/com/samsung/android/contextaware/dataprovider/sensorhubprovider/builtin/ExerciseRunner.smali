.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_BATCH:B = 0x0t

.field private static final DATA_TYPE_GPS_STATUS:B = 0x1t


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastGpsEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorType:I

.field private mTotalPedoDistance:D

.field private mTotalStepCount:J

.field private startTimeStamp:J


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    iput-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isGpsEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "TimeStampArray"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "DataCount"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "LatitudeArray"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "LongitudeArray"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "AltitudeArray"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "PressureArray"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "StepCountDiffArray"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "PedoDistanceDiffArray"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "PedoSpeedArray"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "SpeedArray"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "GpsStatus"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalStepCount"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalPedoDistance"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x2e

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
    .locals 38

    move/from16 v29, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, p2

    add-int/lit8 v31, v31, -0x1

    if-gez v31, :cond_0

    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v31, -0x1

    return v31

    :cond_0
    add-int/lit8 v29, p2, 0x1

    aget-byte v12, p1, p2

    if-nez v12, :cond_7

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v29

    add-int/lit8 v31, v31, -0x6

    if-gez v31, :cond_1

    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v31, -0x1

    return v31

    :cond_1
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    add-int/lit8 v30, v29, 0x1

    aget-byte v32, p1, v29

    const/16 v33, 0x4

    aput-byte v32, v31, v33

    add-int/lit8 v29, v30, 0x1

    aget-byte v32, p1, v30

    const/16 v33, 0x5

    aput-byte v32, v31, v33

    add-int/lit8 v30, v29, 0x1

    aget-byte v32, p1, v29

    const/16 v33, 0x6

    aput-byte v32, v31, v33

    add-int/lit8 v29, v30, 0x1

    aget-byte v32, p1, v30

    const/16 v33, 0x7

    aput-byte v32, v31, v33

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    add-long v32, v32, v34

    add-long v6, v6, v32

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    add-int/lit8 v30, v29, 0x1

    aget-byte v32, p1, v29

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    add-int/lit8 v29, v30, 0x1

    aget-byte v32, p1, v30

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    if-gtz v11, :cond_2

    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v31, -0x1

    return v31

    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v29

    mul-int/lit8 v32, v11, 0x15

    sub-int v31, v31, v32

    if-gez v31, :cond_3

    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v31, -0x1

    return v31

    :cond_3
    new-array v0, v11, [J

    move-object/from16 v28, v0

    new-array v15, v11, [D

    new-array v0, v11, [D

    move-object/from16 v20, v0

    new-array v4, v11, [F

    new-array v0, v11, [F

    move-object/from16 v25, v0

    new-array v0, v11, [J

    move-object/from16 v27, v0

    new-array v0, v11, [D

    move-object/from16 v23, v0

    new-array v0, v11, [D

    move-object/from16 v24, v0

    new-array v0, v11, [F

    move-object/from16 v26, v0

    const/4 v14, 0x0

    move/from16 v30, v29

    :goto_0
    if-ge v14, v11, :cond_6

    mul-int/lit16 v0, v14, 0x3e8

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v32, v32, v6

    aput-wide v32, v28, v14

    add-int/lit8 v29, v30, 0x1

    aget-byte v5, p1, v30

    add-int/lit8 v30, v29, 0x1

    aget-byte v8, p1, v29

    add-int/lit8 v29, v30, 0x1

    aget-byte v9, p1, v30

    add-int/lit8 v30, v29, 0x1

    aget-byte v10, p1, v29

    add-int/lit8 v29, v30, 0x1

    aget-byte v21, p1, v30

    and-int/lit16 v0, v5, 0x80

    move/from16 v31, v0

    const/16 v32, 0x80

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, -0x1

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, -0x1

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    const/16 v32, -0x1

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    const/16 v32, 0x3

    aput-byte v5, v31, v32

    const/16 v32, 0x4

    aput-byte v8, v31, v32

    const/16 v32, 0x5

    aput-byte v9, v31, v32

    const/16 v32, 0x6

    aput-byte v10, v31, v32

    const/16 v32, 0x7

    aput-byte v21, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v32

    const/16 v31, 0x4

    shr-long v16, v32, v31

    :goto_1
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x4197d78400000000L    # 1.0E8

    div-double v32, v32, v34

    aput-wide v32, v15, v14

    add-int/lit8 v30, v29, 0x1

    aget-byte v5, p1, v29

    add-int/lit8 v29, v30, 0x1

    aget-byte v8, p1, v30

    add-int/lit8 v30, v29, 0x1

    aget-byte v9, p1, v29

    add-int/lit8 v29, v30, 0x1

    aget-byte v10, p1, v30

    and-int/lit8 v31, v21, 0x8

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, -0x1

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, -0x1

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    const/16 v32, -0x1

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    and-int/lit8 v32, v21, 0xf

    move/from16 v0, v32

    or-int/lit16 v0, v0, 0xf0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    const/16 v32, 0x4

    aput-byte v5, v31, v32

    const/16 v32, 0x5

    aput-byte v8, v31, v32

    const/16 v32, 0x6

    aput-byte v9, v31, v32

    const/16 v32, 0x7

    aput-byte v10, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v18

    :goto_2
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x4197d78400000000L    # 1.0E8

    div-double v32, v32, v34

    aput-wide v32, v20, v14

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    add-int/lit8 v30, v29, 0x1

    aget-byte v32, p1, v29

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    add-int/lit8 v29, v30, 0x1

    aget-byte v32, p1, v30

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    add-int/lit8 v30, v29, 0x1

    aget-byte v32, p1, v29

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v4, v14

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    add-int/lit8 v29, v30, 0x1

    aget-byte v32, p1, v30

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    add-int/lit8 v30, v29, 0x1

    aget-byte v32, p1, v29

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    add-int/lit8 v29, v30, 0x1

    aget-byte v32, p1, v30

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x408f400000000000L    # 1000.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v25, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    move-wide/from16 v32, v0

    add-int/lit8 v30, v29, 0x1

    aget-byte v31, p1, v29

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    move-wide/from16 v32, v0

    aput-wide v32, v27, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    move-wide/from16 v32, v0

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v34, v31, v35

    const/16 v34, 0x0

    const/16 v35, 0x1

    aput-byte v34, v31, v35

    add-int/lit8 v29, v30, 0x1

    aget-byte v34, p1, v30

    const/16 v35, 0x2

    aput-byte v34, v31, v35

    add-int/lit8 v30, v29, 0x1

    aget-byte v34, p1, v29

    const/16 v35, 0x3

    aput-byte v34, v31, v35

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    div-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    move-wide/from16 v32, v0

    aput-wide v32, v23, v14

    add-int/lit8 v29, v30, 0x1

    aget-byte v5, p1, v30

    add-int/lit8 v30, v29, 0x1

    aget-byte v21, p1, v29

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    const/16 v32, 0x2

    aput-byte v5, v31, v32

    const/16 v32, 0x3

    aput-byte v21, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    shr-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    aput-wide v32, v24, v14

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    and-int/lit8 v32, v21, 0xf

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    add-int/lit8 v29, v30, 0x1

    aget-byte v32, p1, v30

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v26, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v30, v29

    goto/16 :goto_0

    :cond_4
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    const/16 v32, 0x3

    aput-byte v5, v31, v32

    const/16 v32, 0x4

    aput-byte v8, v31, v32

    const/16 v32, 0x5

    aput-byte v9, v31, v32

    const/16 v32, 0x6

    aput-byte v10, v31, v32

    const/16 v32, 0x7

    aput-byte v21, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v32

    const/16 v31, 0x4

    shr-long v16, v32, v31

    goto/16 :goto_1

    :cond_5
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    const/16 v32, 0x0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    and-int/lit8 v32, v21, 0xf

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    const/16 v32, 0x4

    aput-byte v5, v31, v32

    const/16 v32, 0x5

    aput-byte v8, v31, v32

    const/16 v32, 0x6

    aput-byte v9, v31, v32

    const/16 v32, 0x7

    aput-byte v10, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v18

    goto/16 :goto_2

    :cond_6
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v29, v30

    :goto_3
    return v29

    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v12, v0, :cond_9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v29

    add-int/lit8 v31, v31, -0x1

    if-gez v31, :cond_8

    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v31, -0x1

    return v31

    :cond_8
    add-int/lit8 v30, v29, 0x1

    aget-byte v13, p1, v29

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    int-to-short v0, v13

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v29, v30

    goto :goto_3

    :cond_9
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v31, -0x1

    return v31
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3f

    if-ne p1, v3, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exercise data type = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    new-array v6, v4, [B

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v6, v5

    const/16 v3, 0x17

    const/16 v4, 0x2e

    const/16 v5, 0x25

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    :goto_1
    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v3, 0x2

    new-array v1, v3, [B

    aput-byte v4, v1, v5

    aput-byte v5, v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getInstLibType()B

    move-result v3

    const/16 v4, -0x48

    invoke-virtual {p0, v4, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendCmdToSensorHub(BB[B)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
