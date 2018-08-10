.class public Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
.super Ljava/lang/Object;
.source "SensorHubCommManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;


# instance fields
.field private mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs generatePacket([B[B)[B
    .locals 8

    const/4 v5, 0x0

    array-length v0, p2

    const/4 v6, 0x2

    if-lt v0, v6, :cond_0

    const/4 v6, 0x4

    if-le v0, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    return-object v5

    :cond_1
    const/4 v2, 0x0

    array-length v6, p1

    add-int/2addr v6, v0

    new-array v4, v6, [B

    array-length v7, p2

    move v6, v5

    move v3, v2

    :goto_0
    if-ge v6, v7, :cond_2

    aget-byte v1, p2, v6

    add-int/lit8 v2, v3, 0x1

    aput-byte v1, v4, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_3

    aget-byte v1, p1, v5

    add-int/lit8 v2, v3, 0x1

    aput-byte v1, v4, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-object v0
.end method

.method private setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-void
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "mSensorHubManager is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final varargs sendCmdToSensorHub([B[B)I
    .locals 5

    array-length v0, p2

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    const/4 v4, 0x4

    if-le v0, v4, :cond_1

    :cond_0
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    return v4

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v4, v1

    if-gtz v4, :cond_3

    :cond_2
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_GENERATION_FAIL:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    return v4

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    const-string/jumbo v4, "Packet is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_0
    array-length v4, v1

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendPacketToSensorHub(I[B)I

    move-result v2

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v2, v4, :cond_5

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized sendPacketToSensorHub(I[B)I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_NULL_EXEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->SendSensorHubData(I[B)I

    move-result v0

    if-lez v0, :cond_3

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    :goto_0
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const-string/jumbo v2, "Packet is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_1
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    const/4 v2, -0x5

    if-ne v0, v2, :cond_4

    :try_start_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_I2C_COMM:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v2, -0xb

    if-ne v0, v2, :cond_5

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_RECEIVE_ACK:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to deliver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final terminateManager()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    return-void
.end method

.method public final varargs testGeneratePacket([B[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final testGetSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-object v0
.end method
