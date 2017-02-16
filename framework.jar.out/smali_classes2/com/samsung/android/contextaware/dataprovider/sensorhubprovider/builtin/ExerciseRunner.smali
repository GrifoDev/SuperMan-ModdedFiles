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
    .param p1, "category"    # B
    .param p2, "libType"    # B
    .param p3, "dataType"    # B
    .param p4, "data"    # [B

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 52
    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    .line 55
    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    .line 80
    iput-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 81
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    .line 82
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    .line 533
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private isGpsEnabled()Z
    .locals 3

    .prologue
    .line 557
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 558
    .local v0, "manager":Landroid/location/LocationManager;
    if-eqz v0, :cond_0

    .line 559
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 561
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    .line 502
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    .line 504
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 498
    return-void
.end method

.method public final disable()V
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 484
    return-void
.end method

.method public final enable()V
    .locals 4

    .prologue
    .line 466
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    .line 469
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    .line 473
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 465
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 145
    const-string/jumbo v1, "TimeStampArray"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "DataCount"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "LatitudeArray"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "LongitudeArray"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "AltitudeArray"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "PressureArray"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 151
    const-string/jumbo v1, "StepCountDiffArray"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "PedoDistanceDiffArray"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "PedoSpeedArray"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "SpeedArray"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "GpsStatus"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "TotalStepCount"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "TotalPedoDistance"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 144
    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 529
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x2e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 442
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 454
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    .line 515
    return-object p0
.end method

.method public final parse([BI)I
    .locals 38
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 213
    move/from16 v29, p2

    .line 215
    .local v29, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v22

    .line 218
    .local v22, "names":[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, p2

    add-int/lit8 v31, v31, -0x1

    if-gez v31, :cond_0

    .line 219
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 220
    const/16 v31, -0x1

    return v31

    .line 223
    :cond_0
    add-int/lit8 v29, p2, 0x1

    aget-byte v12, p1, p2

    .line 225
    .local v12, "dataType":I
    if-nez v12, :cond_7

    .line 228
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v29

    add-int/lit8 v31, v31, -0x6

    if-gez v31, :cond_1

    .line 229
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 230
    const/16 v31, -0x1

    return v31

    .line 235
    :cond_1
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 236
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 237
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 238
    const/16 v32, 0x0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 239
    const/16 v32, 0x0

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    .line 240
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .local v30, "tmpNext":I
    aget-byte v32, p1, v29

    const/16 v33, 0x4

    aput-byte v32, v31, v33

    .line 241
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v32, p1, v30

    const/16 v33, 0x5

    aput-byte v32, v31, v33

    .line 242
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v32, p1, v29

    const/16 v33, 0x6

    aput-byte v32, v31, v33

    .line 243
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v32, p1, v30

    const/16 v33, 0x7

    aput-byte v32, v31, v33

    .line 235
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 246
    .local v6, "baseTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    add-long v32, v32, v34

    add-long v6, v6, v32

    .line 249
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 250
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 251
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 252
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v32, p1, v29

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 253
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v32, p1, v30

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    .line 249
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 256
    .local v11, "dataSize":I
    if-gtz v11, :cond_2

    .line 257
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 259
    const/16 v31, -0x1

    return v31

    .line 263
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v29

    mul-int/lit8 v32, v11, 0x15

    sub-int v31, v31, v32

    if-gez v31, :cond_3

    .line 264
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 265
    const/16 v31, -0x1

    return v31

    .line 270
    :cond_3
    new-array v0, v11, [J

    move-object/from16 v28, v0

    .line 271
    .local v28, "timeStamp":[J
    new-array v15, v11, [D

    .line 272
    .local v15, "latitude":[D
    new-array v0, v11, [D

    move-object/from16 v20, v0

    .line 273
    .local v20, "longitude":[D
    new-array v4, v11, [F

    .line 274
    .local v4, "altitude":[F
    new-array v0, v11, [F

    move-object/from16 v25, v0

    .line 275
    .local v25, "pressure":[F
    new-array v0, v11, [J

    move-object/from16 v27, v0

    .line 276
    .local v27, "stepCountDiff":[J
    new-array v0, v11, [D

    move-object/from16 v23, v0

    .line 277
    .local v23, "pedoDistanceDiff":[D
    new-array v0, v11, [D

    move-object/from16 v24, v0

    .line 278
    .local v24, "pedoSpeed":[D
    new-array v0, v11, [F

    move-object/from16 v26, v0

    .line 280
    .local v26, "speed":[F
    const/4 v14, 0x0

    .local v14, "i":I
    move/from16 v30, v29

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    :goto_0
    if-ge v14, v11, :cond_6

    .line 283
    mul-int/lit16 v0, v14, 0x3e8

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v32, v32, v6

    aput-wide v32, v28, v14

    .line 286
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v5, p1, v30

    .line 287
    .local v5, "byte1":B
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v8, p1, v29

    .line 288
    .local v8, "byte2":B
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v9, p1, v30

    .line 289
    .local v9, "byte3":B
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v10, p1, v29

    .line 291
    .local v10, "byte4":B
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v21, p1, v30

    .line 293
    .local v21, "midByte":B
    and-int/lit16 v0, v5, 0x80

    move/from16 v31, v0

    const/16 v32, 0x80

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 294
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 295
    const/16 v32, -0x1

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 296
    const/16 v32, -0x1

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 297
    const/16 v32, -0x1

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 298
    const/16 v32, 0x3

    aput-byte v5, v31, v32

    .line 299
    const/16 v32, 0x4

    aput-byte v8, v31, v32

    .line 300
    const/16 v32, 0x5

    aput-byte v9, v31, v32

    .line 301
    const/16 v32, 0x6

    aput-byte v10, v31, v32

    .line 302
    const/16 v32, 0x7

    aput-byte v21, v31, v32

    .line 294
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v32

    .line 303
    const/16 v31, 0x4

    .line 294
    shr-long v16, v32, v31

    .line 317
    .local v16, "lat":J
    :goto_1
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x4197d78400000000L    # 1.0E8

    div-double v32, v32, v34

    aput-wide v32, v15, v14

    .line 320
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v5, p1, v29

    .line 321
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v8, p1, v30

    .line 322
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v9, p1, v29

    .line 323
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v10, p1, v30

    .line 325
    and-int/lit8 v31, v21, 0x8

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 326
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 327
    const/16 v32, -0x1

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 328
    const/16 v32, -0x1

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 329
    const/16 v32, -0x1

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 330
    and-int/lit8 v32, v21, 0xf

    move/from16 v0, v32

    or-int/lit16 v0, v0, 0xf0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    .line 331
    const/16 v32, 0x4

    aput-byte v5, v31, v32

    .line 332
    const/16 v32, 0x5

    aput-byte v8, v31, v32

    .line 333
    const/16 v32, 0x6

    aput-byte v9, v31, v32

    .line 334
    const/16 v32, 0x7

    aput-byte v10, v31, v32

    .line 326
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v18

    .line 349
    .local v18, "lon":J
    :goto_2
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x4197d78400000000L    # 1.0E8

    div-double v32, v32, v34

    aput-wide v32, v20, v14

    .line 352
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 353
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 354
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v32, p1, v29

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 355
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v32, p1, v30

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 356
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v32, p1, v29

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    .line 352
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    .line 357
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    .line 352
    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v4, v14

    .line 360
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 361
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 362
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v32, p1, v30

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 363
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v32, p1, v29

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 364
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v32, p1, v30

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    .line 360
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    .line 365
    const-wide v34, 0x408f400000000000L    # 1000.0

    .line 360
    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v25, v14

    .line 368
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    move-wide/from16 v32, v0

    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v31, p1, v29

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    .line 369
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    move-wide/from16 v32, v0

    aput-wide v32, v27, v14

    .line 372
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    move-wide/from16 v32, v0

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 373
    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v34, v31, v35

    .line 374
    const/16 v34, 0x0

    const/16 v35, 0x1

    aput-byte v34, v31, v35

    .line 375
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v34, p1, v30

    const/16 v35, 0x2

    aput-byte v34, v31, v35

    .line 376
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v34, p1, v29

    const/16 v35, 0x3

    aput-byte v34, v31, v35

    .line 372
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    .line 377
    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    .line 372
    div-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    move-wide/from16 v32, v0

    aput-wide v32, v23, v14

    .line 381
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v5, p1, v30

    .line 382
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v21, p1, v29

    .line 383
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 384
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 385
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 386
    const/16 v32, 0x2

    aput-byte v5, v31, v32

    .line 387
    const/16 v32, 0x3

    aput-byte v21, v31, v32

    .line 383
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    shr-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    .line 388
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    .line 383
    div-double v32, v32, v34

    aput-wide v32, v24, v14

    .line 391
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 392
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 393
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 394
    and-int/lit8 v32, v21, 0xf

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 395
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    aget-byte v32, p1, v30

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    .line 391
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    .line 396
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    .line 391
    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    aput v31, v26, v14

    .line 280
    add-int/lit8 v14, v14, 0x1

    move/from16 v30, v29

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    goto/16 :goto_0

    .line 305
    .end local v16    # "lat":J
    .end local v18    # "lon":J
    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    :cond_4
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 306
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 307
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 308
    const/16 v32, 0x0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 309
    const/16 v32, 0x3

    aput-byte v5, v31, v32

    .line 310
    const/16 v32, 0x4

    aput-byte v8, v31, v32

    .line 311
    const/16 v32, 0x5

    aput-byte v9, v31, v32

    .line 312
    const/16 v32, 0x6

    aput-byte v10, v31, v32

    .line 313
    const/16 v32, 0x7

    aput-byte v21, v31, v32

    .line 305
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v32

    .line 314
    const/16 v31, 0x4

    .line 305
    shr-long v16, v32, v31

    .restart local v16    # "lat":J
    goto/16 :goto_1

    .line 338
    :cond_5
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 339
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-byte v32, v31, v33

    .line 340
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-byte v32, v31, v33

    .line 341
    const/16 v32, 0x0

    const/16 v33, 0x2

    aput-byte v32, v31, v33

    .line 342
    and-int/lit8 v32, v21, 0xf

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    aput-byte v32, v31, v33

    .line 343
    const/16 v32, 0x4

    aput-byte v5, v31, v32

    .line 344
    const/16 v32, 0x5

    aput-byte v8, v31, v32

    .line 345
    const/16 v32, 0x6

    aput-byte v9, v31, v32

    .line 346
    const/16 v32, 0x7

    aput-byte v10, v31, v32

    .line 338
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v18

    .restart local v18    # "lon":J
    goto/16 :goto_2

    .line 399
    .end local v5    # "byte1":B
    .end local v8    # "byte2":B
    .end local v9    # "byte3":B
    .end local v10    # "byte4":B
    .end local v16    # "lat":J
    .end local v18    # "lon":J
    .end local v21    # "midByte":B
    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
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

    .line 400
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 401
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 402
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

    .line 403
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 404
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

    .line 405
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

    .line 406
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

    .line 407
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

    .line 408
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

    .line 410
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v29, v30

    .line 431
    .end local v4    # "altitude":[F
    .end local v6    # "baseTimeStamp":J
    .end local v11    # "dataSize":I
    .end local v14    # "i":I
    .end local v15    # "latitude":[D
    .end local v20    # "longitude":[D
    .end local v23    # "pedoDistanceDiff":[D
    .end local v24    # "pedoSpeed":[D
    .end local v25    # "pressure":[F
    .end local v26    # "speed":[F
    .end local v27    # "stepCountDiff":[J
    .end local v28    # "timeStamp":[J
    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    :goto_3
    return v29

    .line 412
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v12, v0, :cond_9

    .line 415
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v29

    add-int/lit8 v31, v31, -0x1

    if-gez v31, :cond_8

    .line 416
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 417
    const/16 v31, -0x1

    return v31

    .line 420
    :cond_8
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "tmpNext":I
    .restart local v30    # "tmpNext":I
    aget-byte v13, p1, v29

    .line 422
    .local v13, "gpsStatus":B
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v31

    sget-object v32, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v32

    aget-object v32, v22, v32

    int-to-short v0, v13

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 424
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v29, v30

    .end local v30    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    goto :goto_3

    .line 426
    .end local v13    # "gpsStatus":B
    :cond_9
    sget-object v31, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 428
    const/16 v31, -0x1

    return v31
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    const/4 v2, 0x1

    .line 171
    .local v2, "result":Z
    const/16 v3, 0x3f

    if-ne p1, v3, :cond_1

    .line 172
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, "dataType":I
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

    .line 175
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    .line 189
    new-array v6, v4, [B

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v6, v5

    .line 186
    const/16 v3, 0x17

    .line 187
    const/16 v4, 0x2e

    .line 188
    const/16 v5, 0x25

    .line 186
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 201
    .end local v0    # "dataType":I
    :goto_1
    return v2

    .restart local v0    # "dataType":I
    :cond_0
    move v3, v5

    .line 189
    goto :goto_0

    .line 191
    .end local v0    # "dataType":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    if-nez p1, :cond_2

    .line 192
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 193
    .local v1, "packet":[B
    aput-byte v4, v1, v5

    .line 194
    aput-byte v5, v1, v4

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getInstLibType()B

    move-result v3

    const/16 v4, -0x48

    invoke-virtual {p0, v4, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_1

    .line 199
    .end local v1    # "packet":[B
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
