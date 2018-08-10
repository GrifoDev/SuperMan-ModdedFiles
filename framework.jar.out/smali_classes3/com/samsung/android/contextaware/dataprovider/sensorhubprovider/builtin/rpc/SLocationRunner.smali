.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLocationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;
    }
.end annotation


# instance fields
.field private isARStarted:Z

.field private mGeofenceUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mGeofences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mPauseResume:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    return-void
.end method

.method private sendGeofenceCoreAdd([I)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x6

    array-length v5, p1

    if-eq v5, v6, :cond_0

    const-string/jumbo v5, "Add - geofence data length is not 6."

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v7

    :cond_0
    new-array v2, v6, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    aget v5, p1, v3

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x2

    invoke-static {v0, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    const/16 v5, 0x17

    const/16 v6, 0x37

    invoke-virtual {p0, v5, v6, v8, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return v8

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private sendGeofenceCorePauseResume(I)V
    .locals 4

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    const/16 v1, 0x17

    const/16 v2, 0x37

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method private sendGeofenceCoreRemove(I)V
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    invoke-static {p1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    const/16 v1, 0x17

    const/16 v2, 0x37

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendGeofenceCoreStartAR([I)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "StartAR - data length is not 2."

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_0
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    aget v2, p1, v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x17

    const/16 v4, 0x37

    const/4 v5, 0x6

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v2, "error converting"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendGeofenceCoreUpdate([I)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    array-length v4, p1

    if-eq v4, v6, :cond_0

    const-string/jumbo v4, "Update - geofence data length is not 3."

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v5

    :cond_0
    new-array v3, v6, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    aget v4, p1, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    :try_start_1
    aget v4, p1, v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x17

    const/16 v6, 0x37

    invoke-virtual {p0, v5, v6, v8, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return v7

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "error converting"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
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

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    iget v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCorePauseResume(I)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCoreAdd([I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    monitor-exit v7

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCoreUpdate([I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    monitor-exit v7

    iget-boolean v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    if-eqz v6, :cond_2

    filled-new-array {v8, v8}, [I

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCoreStartAR([I)Z

    :cond_2
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "GeoFenceId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "GeoFenceStatus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Latitude"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Longitude"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalGpsCount"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SuccessGpsCount"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Distance"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Timestamp"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Accuracy"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "FunctionType"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "ErrorCode"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "EventTypeArray"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "EventStatusArray"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "DataArray"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeStampArray"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "DataCount"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "LatitudeArray"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "LongitudeArray"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "AltitudeArray"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "SpeedArray"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "BearingArray"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "AccuracyArray"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "Version"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "DataSequence"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalSequence"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x37

    return v0
.end method

.method public getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v14

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Version:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x2

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SuccessGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x4

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x5

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->FunctionType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->ErrorCode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x6

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventTypeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventStatusArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x7

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LatitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LongitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AltitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SpeedArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->BearingArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AccuracyArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v15
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

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/16 v8, 0x64

    if-ne p1, v8, :cond_0

    const-string/jumbo v8, "Version"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    const/16 v9, 0x17

    const/16 v10, 0x37

    const/16 v11, 0x11

    invoke-virtual {p0, v9, v10, v11, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    :goto_0
    return v7

    :cond_0
    const/16 v8, 0x65

    if-ne p1, v8, :cond_1

    const-string/jumbo v8, "Add"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCoreAdd([I)Z

    move-result v7

    goto :goto_0

    :cond_1
    const/16 v8, 0x66

    if-ne p1, v8, :cond_2

    const-string/jumbo v8, "Remove"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCoreRemove(I)V

    goto :goto_0

    :cond_2
    const/16 v8, 0x67

    if-ne p1, v8, :cond_3

    const-string/jumbo v8, "PauseResume"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCorePauseResume(I)V

    goto :goto_0

    :cond_3
    const/16 v8, 0x68

    if-ne p1, v8, :cond_4

    const-string/jumbo v8, "Update"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCoreUpdate([I)Z

    move-result v7

    goto :goto_0

    :cond_4
    const/16 v8, 0x69

    if-ne p1, v8, :cond_6

    const-string/jumbo v8, "Set Loc"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v8, v2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_5

    const-string/jumbo v8, "missing data"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/16 v9, 0x17

    const/16 v10, 0x37

    const/4 v11, 0x5

    invoke-virtual {p0, v9, v10, v11, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_6
    const/16 v8, 0x6a

    if-ne p1, v8, :cond_7

    const-string/jumbo v8, "Start AR"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendGeofenceCoreStartAR([I)Z

    move-result v7

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0x6b

    if-ne p1, v8, :cond_8

    const-string/jumbo v8, "Stop AR"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    const/16 v9, 0x17

    const/16 v10, 0x37

    const/4 v11, 0x7

    invoke-virtual {p0, v9, v10, v11, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0x6c

    if-ne p1, v8, :cond_9

    const-string/jumbo v8, "CurLoc func"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v8

    const/16 v9, 0x17

    const/16 v10, 0x37

    const/16 v11, 0x8

    invoke-virtual {p0, v9, v10, v11, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_9
    const/16 v8, 0x6e

    if-ne p1, v8, :cond_b

    const-string/jumbo v8, "Start core FIFO Batch"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v8, v2

    const/4 v9, 0x6

    if-eq v8, v9, :cond_a

    const-string/jumbo v8, "missing data"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_a
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x2

    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/16 v8, 0x17

    const/16 v9, 0x37

    const/16 v10, 0x9

    invoke-virtual {p0, v8, v9, v10, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_b
    const/16 v8, 0x6f

    if-ne p1, v8, :cond_d

    const-string/jumbo v8, "Update core FIFO Batch"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v8, v2

    const/4 v9, 0x6

    if-eq v8, v9, :cond_c

    const-string/jumbo v8, "missing data"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x2

    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/16 v8, 0x17

    const/16 v9, 0x37

    const/16 v10, 0xa

    invoke-virtual {p0, v8, v9, v10, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_d
    const/16 v8, 0x70

    if-ne p1, v8, :cond_f

    const-string/jumbo v8, "Stop core FIFO Batch"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v8, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    const-string/jumbo v8, "missing data"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_e
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x2

    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/16 v8, 0x17

    const/16 v9, 0x37

    const/16 v10, 0xb

    invoke-virtual {p0, v8, v9, v10, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_f
    const/16 v8, 0x71

    if-ne p1, v8, :cond_11

    const-string/jumbo v8, "Request core FIFO Batch Location"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v8, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_10

    const-string/jumbo v8, "missing data"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_10
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x2

    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/16 v8, 0x17

    const/16 v9, 0x37

    const/16 v10, 0xc

    invoke-virtual {p0, v8, v9, v10, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_11
    const/16 v8, 0x72

    if-ne p1, v8, :cond_12

    const-string/jumbo v8, "Flush FIFO Batch Location"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    const/16 v9, 0x17

    const/16 v10, 0x37

    const/16 v11, 0xd

    invoke-virtual {p0, v9, v10, v11, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_12
    const/16 v8, 0x73

    if-ne p1, v8, :cond_14

    const-string/jumbo v8, "Inject core FIFO Batch Location"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v8, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_13

    const-string/jumbo v8, "missing data"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_13
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x2

    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/16 v8, 0x17

    const/16 v9, 0x37

    const/16 v10, 0xe

    invoke-virtual {p0, v8, v9, v10, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_14
    const/16 v8, 0x74

    if-ne p1, v8, :cond_15

    const-string/jumbo v8, "Cleanup FIFO Batch Location"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    const/16 v9, 0x17

    const/16 v10, 0x37

    const/16 v11, 0xf

    invoke-virtual {p0, v9, v10, v11, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_15
    const/16 v8, 0x6d

    if-ne p1, v8, :cond_16

    const-string/jumbo v8, "Status remove"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v8, 0x10

    iput v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
