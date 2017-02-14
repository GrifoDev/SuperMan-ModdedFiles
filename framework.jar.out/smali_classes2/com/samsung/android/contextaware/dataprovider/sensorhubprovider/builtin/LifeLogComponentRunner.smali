.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "LifeLogComponentRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;


# static fields
.field private static final DEFAULT_BATCHING_PERIOD:I = 0xffff

.field private static final DEFAULT_STOP_PERIOD:I = 0x12c

.field private static final DEFAULT_WAIT_PERIOD:I = 0x5dc


# instance fields
.field private final mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

.field protected final mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    invoke-interface {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;->registerObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V

    return-void
.end method

.method private checkMovingPacket([BI)Z
    .locals 2

    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStayingAreaPacket([BI)Z
    .locals 2

    add-int/lit8 v0, p2, 0x17

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseForMoving([BIJJ)I
    .locals 21

    move/from16 v19, p2

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, p2

    add-int/lit8 v5, v5, -0x4

    if-gez v5, :cond_0

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_0
    add-int/lit8 v19, p2, 0x1

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v20, v19, 0x1

    aget-byte v6, p1, v19

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v19, v20, 0x1

    aget-byte v6, p1, v20

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v20, v19, 0x1

    aget-byte v6, p1, v19

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-long v10, v5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v16

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v20

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_1
    add-int/lit8 v19, v20, 0x1

    aget-byte v14, p1, v20

    if-gtz v14, :cond_2

    return v19

    :cond_2
    new-array v13, v14, [I

    new-array v12, v14, [I

    new-array v15, v14, [I

    const/4 v4, 0x0

    move/from16 v20, v19

    :goto_0
    if-ge v4, v14, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkMovingPacket([BI)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v14, -0x1

    if-le v4, v5, :cond_4

    :cond_3
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_4
    add-int/lit8 v19, v20, 0x1

    aget-byte v5, p1, v20

    aput v5, v13, v4

    add-int/lit8 v20, v19, 0x1

    aget-byte v5, p1, v19

    aput v5, v12, v4

    add-int/lit8 v19, v20, 0x1

    aget-byte v5, p1, v20

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v20, v19, 0x1

    aget-byte v6, p1, v19

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v19, v20, 0x1

    aget-byte v6, p1, v20

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v15, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v20, v19

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0x8

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0x9

    aget-object v6, v18, v6

    move-wide/from16 v0, v16

    invoke-virtual {v5, v6, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0xa

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0xb

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0xc

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    return v20
.end method

.method private parseForStayingArea([BIJJ)I
    .locals 23

    move/from16 v21, p2

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, p2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_0
    add-int/lit8 v21, p2, 0x1

    aget-byte v14, p1, p2

    if-gtz v14, :cond_1

    return v21

    :cond_1
    new-array v0, v14, [J

    move-object/from16 v20, v0

    new-array v15, v14, [D

    new-array v0, v14, [D

    move-object/from16 v16, v0

    new-array v13, v14, [D

    new-array v0, v14, [I

    move-object/from16 v19, v0

    new-array v0, v14, [I

    move-object/from16 v17, v0

    new-array v0, v14, [I

    move-object/from16 v18, v0

    const/4 v4, 0x0

    move/from16 v22, v21

    :goto_0
    if-ge v4, v14, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkStayingAreaPacket([BI)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, v14, -0x1

    if-lt v4, v5, :cond_2

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_2
    add-int/lit8 v21, v22, 0x1

    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-long v10, v5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v6

    aput-wide v6, v20, v4

    add-int/lit8 v21, v22, 0x1

    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v6, v5

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    aput-wide v6, v15, v4

    add-int/lit8 v21, v22, 0x1

    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v6, v5

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    aput-wide v6, v16, v4

    add-int/lit8 v21, v22, 0x1

    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v6, v5

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    aput-wide v6, v13, v4

    add-int/lit8 v21, v22, 0x1

    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v19, v4

    add-int/lit8 v21, v22, 0x1

    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v22, v21, 0x1

    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v17, v4

    add-int/lit8 v21, v22, 0x1

    aget-byte v5, p1, v22

    aput v5, v18, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v22, v21

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v12, v6

    invoke-virtual {v5, v6, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v12, v6

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v12, v6

    invoke-virtual {v5, v6, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v12, v6

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v12, v6

    invoke-virtual {v5, v6, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v12, v6

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v12, v6

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    return v22
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "StayingAreaCount"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingAreaTimeStamp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingAreaLatitude"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingAreaLongitude"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingAreaAltitude"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingAreaTimeDuration"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingAreaRadius"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "StayingAreaStatus"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "MovingCount"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "MovingTimeStamp"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "MovingActivity"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "MovingAccuracy"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "MovingTimeDuration"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x9

    new-array v1, v3, [B

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    aget-byte v3, v0, v5

    aput-byte v3, v1, v5

    aget-byte v3, v0, v6

    aput-byte v3, v1, v6

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    aget-byte v3, v0, v5

    aput-byte v3, v1, v7

    aget-byte v3, v0, v6

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    const v3, 0xffff

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    aget-byte v3, v0, v5

    const/4 v4, 0x4

    aput-byte v3, v1, v4

    aget-byte v3, v0, v6

    const/4 v4, 0x5

    aput-byte v3, v1, v4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    aget v3, v2, v5

    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v5

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    aget v3, v2, v6

    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v5

    const/4 v4, 0x7

    aput-byte v3, v1, v4

    aget v3, v2, v7

    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v5

    const/16 v4, 0x8

    aput-byte v3, v1, v4

    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x1d

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

.method public parse([BI)I
    .locals 13

    const/4 v12, 0x0

    move v3, p2

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v2, "GMT"

    invoke-direct {v1, v12, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit16 v1, v8, 0xe10

    mul-int/lit8 v2, v10, 0x3c

    add-int/2addr v1, v2

    add-int/2addr v1, v11

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v9

    int-to-long v4, v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parse start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForStayingArea([BIJJ)I

    move-result v3

    if-gtz v3, :cond_0

    return v3

    :cond_0
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForMoving([BIJJ)I

    move-result v3

    if-gtz v3, :cond_1

    return v3

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parse end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return v3
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/16 v9, 0x17

    const/16 v8, 0x1d

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/16 v5, 0x1c

    if-ne p1, v5, :cond_0

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StopPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v9, v8, v6, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v8, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WaitPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v4, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v9, v8, v7, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v5, 0x1e

    if-ne p1, v5, :cond_2

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StayingRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p0, v9, v8, v6, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v5, 0x1f

    if-ne p1, v5, :cond_3

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StayingAreaRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {v1, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {p0, v9, v8, v6, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public updatePassiveCurrentPosition(I[IDDDDFFI)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "send the passive current position to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-static/range {p1 .. p13}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->sendPositionToSensorHub(I[IDDDDFFI)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final updatePosition(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v14

    if-eqz v14, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CURRENT_POSITION_NULL_EXCEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLatitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v6, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLongitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v7, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAltitude()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-int v3, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAccuracy()F

    move-result v14

    float-to-int v2, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getUtcTime()[I

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSatelliteCount()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSpeed()F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    float-to-int v11, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getDistance()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-int v5, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getType()I

    move-result v12

    const/16 v14, 0x16

    new-array v4, v14, [B

    const/4 v10, 0x0

    const/4 v14, 0x4

    invoke-static {v6, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x4

    invoke-static {v7, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v10, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x4

    invoke-static {v3, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    invoke-static {v2, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x0

    aget v14, v13, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    aget v14, v13, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x2

    aget v14, v13, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    invoke-static {v9, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x2

    invoke-static {v11, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x2

    invoke-static {v5, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    invoke-static {v12, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/lit8 v10, v10, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v14, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCommonValueToSensorHub(B[B)Z

    return-void
.end method
