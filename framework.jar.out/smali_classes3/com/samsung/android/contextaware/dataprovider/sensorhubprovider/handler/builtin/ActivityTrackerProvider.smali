.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityTrackerProvider.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected final byteArrayToLong([B)J
    .locals 6

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v1, v4, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    rsub-int/lit8 v3, v2, 0x7

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    return-wide v4
.end method

.method public disable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->disable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public enable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->enable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method protected getAccuracyType()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivityType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBatchingPeriod()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "OperationMode"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeStamp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "ActivityType"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Accuracy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 13

    const/4 v12, 0x4

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v7, 0xb

    new-array v4, v7, [B

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v7

    aput-byte v7, v4, v9

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v7

    if-gez v7, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v7

    invoke-static {v7, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    aget-byte v7, v0, v9

    aput-byte v7, v4, v10

    aget-byte v7, v0, v10

    aput-byte v7, v4, v11

    aget-byte v7, v0, v11

    aput-byte v7, v4, v8

    aget-byte v7, v0, v8

    aput-byte v7, v4, v12

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v7

    const/4 v8, 0x5

    aput-byte v7, v4, v8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v7

    invoke-static {v7, v11}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    aget-byte v7, v1, v9

    const/4 v8, 0x6

    aput-byte v7, v4, v8

    aget-byte v7, v1, v10

    const/4 v8, 0x7

    aput-byte v7, v4, v8

    new-instance v7, Ljava/util/SimpleTimeZone;

    const-string/jumbo v8, "GMT"

    invoke-direct {v7, v9, v8}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v7, v2

    const/16 v8, 0x8

    aput-byte v7, v4, v8

    int-to-byte v7, v3

    const/16 v8, 0x9

    aput-byte v7, v4, v8

    int-to-byte v7, v5

    const/16 v8, 0xa

    aput-byte v7, v4, v8

    return-object v4
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x8

    new-array v2, v3, [B

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v3

    aput-byte v3, v2, v5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v3

    invoke-static {v3, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    aget-byte v3, v0, v5

    aput-byte v3, v2, v6

    aget-byte v3, v0, v6

    aput-byte v3, v2, v7

    aget-byte v3, v0, v7

    aput-byte v3, v2, v4

    aget-byte v3, v0, v4

    aput-byte v3, v2, v8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v3

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v3

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    aget-byte v3, v1, v5

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    aget-byte v3, v1, v6

    const/4 v4, 0x7

    aput-byte v3, v2, v4

    return-object v2
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method protected abstract getModeType()B
.end method

.method public parse([BI)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    move v4, p2

    array-length v6, p1

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, -0x4

    if-gez v6, :cond_0

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v8

    int-to-short v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    const/4 v6, 0x4

    new-array v1, v6, [B

    add-int/lit8 v4, p2, 0x1

    aget-byte v6, p1, p2

    aput-byte v6, v1, v9

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p1, v4

    aput-byte v6, v1, v10

    add-int/lit8 v4, v5, 0x1

    aget-byte v6, p1, v5

    const/4 v7, 0x2

    aput-byte v6, v1, v7

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p1, v4

    const/4 v7, 0x3

    aput-byte v6, v1, v7

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->byteArrayToLong([B)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v10

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->parseData([BI)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->notifyObserver()V

    :cond_1
    return v4
.end method

.method protected parseData([BI)I
    .locals 7

    move v3, p2

    array-length v5, p1

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_0

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    aget-byte v1, p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    add-int/lit8 v4, v3, 0x1

    aget-byte v0, p1, v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    return v4
.end method
