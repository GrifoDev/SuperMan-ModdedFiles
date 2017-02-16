.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
.super Ljava/lang/Object;
.source "CaTimeManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 47
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getTimeStampForUTC(J)J
    .locals 13
    .param p1, "timeStamp"    # J

    .prologue
    .line 58
    new-instance v1, Ljava/util/SimpleTimeZone;

    .line 59
    const-string/jumbo v6, "GMT"

    .line 58
    const/4 v7, 0x0

    invoke-direct {v1, v7, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 60
    .local v0, "calender":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 61
    .local v8, "hr":I
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 62
    .local v10, "min":I
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 63
    .local v11, "sec":I
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 65
    .local v9, "milliSec":I
    mul-int/lit16 v1, v8, 0xe10

    mul-int/lit8 v6, v10, 0x3c

    add-int/2addr v1, v6

    add-int/2addr v1, v11

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v9

    int-to-long v2, v1

    .line 66
    .local v2, "curUtcTime":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "curTimeMilliSec":J
    move-object v1, p0

    move-wide v6, p1

    .line 68
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public final getTimeStampForUTC(JJJ)J
    .locals 5
    .param p1, "curUtcTime"    # J
    .param p3, "curTimeMilliSec"    # J
    .param p5, "timeStamp"    # J

    .prologue
    .line 108
    sub-long v0, p1, p5

    .line 109
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 110
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 112
    :cond_0
    sub-long v2, p3, v0

    return-wide v2
.end method

.method public final getTimeStampForUTC24(JJJ)J
    .locals 5
    .param p1, "curUtcTime"    # J
    .param p3, "curTimeMilliSec"    # J
    .param p5, "timeStamp"    # J

    .prologue
    .line 84
    sub-long v0, p1, p5

    .line 85
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 86
    const-wide/32 v2, -0x5095e20

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 87
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 92
    :cond_0
    :goto_0
    sub-long v2, p3, v0

    return-wide v2

    .line 89
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final sendCurTimeToSensorHub()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    const/4 v3, 0x3

    new-array v0, v3, [B

    .line 121
    .local v0, "dataPacket":[B
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .line 124
    .local v2, "utcTime":[I
    aget v3, v2, v4

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v4

    .line 125
    aget v3, v2, v5

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v5

    .line 126
    aget v3, v2, v6

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v6

    .line 128
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    new-array v4, v6, [B

    fill-array-data v4, :array_0

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    .line 131
    .local v1, "result":I
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 132
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void

    .line 128
    nop

    :array_0
    .array-data 1
        -0x3ft
        0xet
    .end array-data
.end method
