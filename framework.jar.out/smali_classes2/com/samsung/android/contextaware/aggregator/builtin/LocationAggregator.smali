.class public Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# static fields
.field private static final ACCURACY_REQUIREMENT_DEFAULT:I = 0x64


# instance fields
.field private mApdrNoti:Z

.field private mCurAccuracy:F

.field private mCurAltitude:D

.field private mCurLatitude:D

.field private mCurLongitude:D

.field private mCurSysTime:J

.field private mCurTimeStamp:J

.field private mPedestrianStatus:I

.field private mUserWantedAccuracy:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .param p1, "version"    # I
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 117
    return-void
.end method

.method private isFilterInitialized()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method private notifyLocationContext(JJ[D[FZI)V
    .locals 7
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "daLocationHybrid"    # [D
    .param p6, "faLocationExtHybrid"    # [F
    .param p7, "valid"    # Z
    .param p8, "pedestrianStatus"    # I

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 592
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3, p4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 593
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-wide v4, p5, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 594
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-wide v4, p5, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 595
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-wide v4, p5, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 596
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 597
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 598
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 599
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    .line 600
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 602
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 588
    return-void
.end method

.method private receiveApdrNoti(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 512
    if-nez p1, :cond_0

    .line 513
    return-void

    .line 516
    :cond_0
    const-string/jumbo v1, "Alert"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 517
    .local v0, "notiType":I
    if-eq v0, v2, :cond_1

    .line 518
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 519
    return-void

    .line 522
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 524
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 525
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->resume()V

    .line 511
    return-void
.end method

.method private requestGpsData(JJ)V
    .locals 23
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J

    .prologue
    .line 537
    const/4 v3, 0x3

    new-array v8, v3, [D

    .line 538
    .local v8, "daLocationHybrid":[D
    const/4 v3, 0x3

    new-array v9, v3, [F

    .line 539
    .local v9, "faLocationExtHybrid":[F
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 545
    .local v2, "val":[I
    const/4 v10, 0x1

    .line 546
    .local v10, "locationHybridValid":Z
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 547
    const/4 v10, 0x1

    .line 552
    :goto_0
    if-eqz v10, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 553
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->notifyLocationContext(JJ[D[FZI)V

    .line 558
    const/4 v3, 0x0

    aget-wide v16, v8, v3

    const/4 v3, 0x1

    aget-wide v18, v8, v3

    .line 559
    const/4 v3, 0x2

    aget-wide v20, v8, v3

    const/4 v3, 0x2

    aget v22, v9, v3

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    .line 557
    invoke-direct/range {v11 .. v22}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->setCurLocationforHubApdr(JJDDDF)V

    .line 536
    :cond_0
    return-void

    .line 549
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private sendSleepModeCmdToSensorHub()V
    .locals 14

    .prologue
    .line 261
    sget-object v9, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 264
    .local v2, "apdrRunner":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    if-nez v2, :cond_0

    .line 265
    return-void

    .line 269
    :cond_0
    const-wide v10, 0x4042800000000000L    # 37.0

    iput-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 270
    const-wide/high16 v10, 0x4060000000000000L    # 128.0

    iput-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 271
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 272
    const/high16 v9, 0x41200000    # 10.0f

    iput v9, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 275
    iget-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-int v9, v10

    const/4 v10, 0x4

    .line 274
    invoke-static {v9, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 277
    .local v5, "latBuf":[B
    iget-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-int v9, v10

    const/4 v10, 0x4

    .line 276
    invoke-static {v9, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    .line 279
    .local v6, "longBuf":[B
    iget-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    double-to-int v9, v10

    const/4 v10, 0x3

    .line 278
    invoke-static {v9, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 281
    .local v1, "altiBuf":[B
    iget v9, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    float-to-int v9, v9

    const/4 v10, 0x1

    .line 280
    invoke-static {v9, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 283
    .local v0, "accuracyBuf":[B
    iget v9, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    const/4 v10, 0x1

    .line 282
    invoke-static {v9, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v8

    .line 285
    .local v8, "userWantedAccuracyBuf":[B
    array-length v9, v5

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v1

    add-int/2addr v9, v10

    .line 286
    array-length v10, v0

    .line 285
    add-int/2addr v9, v10

    .line 286
    array-length v10, v8

    .line 285
    add-int v3, v9, v10

    .line 288
    .local v3, "bufsize":I
    new-array v4, v3, [B

    .line 289
    .local v4, "dataPacket":[B
    const/4 v7, 0x0

    .line 290
    .local v7, "size":I
    array-length v9, v5

    const/4 v10, 0x0

    invoke-static {v5, v10, v4, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 291
    array-length v9, v5

    add-int/lit8 v7, v9, 0x0

    .line 292
    array-length v9, v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v4, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 293
    array-length v9, v6

    add-int/2addr v7, v9

    .line 294
    array-length v9, v1

    const/4 v10, 0x0

    invoke-static {v1, v10, v4, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 295
    array-length v9, v1

    add-int/2addr v7, v9

    .line 296
    array-length v9, v0

    const/4 v10, 0x0

    invoke-static {v0, v10, v4, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 297
    array-length v9, v0

    add-int/2addr v7, v9

    .line 299
    array-length v9, v8

    .line 298
    const/4 v10, 0x0

    invoke-static {v8, v10, v4, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendSleepModeCmdToSensorHub([B)V

    .line 260
    return-void
.end method

.method private setCurLocationforHubApdr(JJDDDF)V
    .locals 1
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "altitude"    # D
    .param p11, "accuracy"    # F

    .prologue
    .line 624
    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 625
    iput-wide p3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 626
    iput-wide p5, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 627
    iput-wide p7, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 628
    iput-wide p9, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 629
    iput p11, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 623
    return-void
.end method

.method private updateApdrData(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 459
    :cond_0
    return-void

    .line 462
    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    const-string/jumbo v6, "DeltaTime"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 463
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    const-string/jumbo v6, "DeltaTime"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 469
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 471
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 472
    .local v0, "systemTime":J
    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 483
    .local v2, "timeStamp":J
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    .line 457
    return-void
.end method

.method private updateRawGpsData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 317
    const-string/jumbo v4, "SystemTime"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 318
    .local v0, "systemTime":J
    const-string/jumbo v4, "TimeStamp"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 330
    .local v2, "timeStamp":J
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    .line 310
    return-void
.end method

.method private updateRawSatelliteData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 356
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 367
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn()Z

    move-result v1

    .line 368
    .local v1, "isScreenOn":Z
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getAPStatus()I

    move-result v2

    const/16 v3, -0x2e

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 369
    .local v0, "isApSleep":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 369
    if-eqz v2, :cond_1

    .line 371
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 372
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->vibrateAlarm(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->sendSleepModeCmdToSensorHub()V

    .line 351
    :cond_1
    return-void

    .line 368
    .end local v0    # "isApSleep":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isApSleep":Z
    goto :goto_0
.end method

.method private updateRawWpsData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 384
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 199
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 200
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    .line 205
    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 206
    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 207
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 208
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 209
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 217
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 198
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 181
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 180
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 167
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 166
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SystemTime"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeStamp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Latitude"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 236
    const-string/jumbo v1, "Longitude"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Altitude"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Heading"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Speed"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Accuracy"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 237
    const-string/jumbo v1, "Valid"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "PedestrianStatus"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 235
    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 650
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 660
    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
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

    .line 758
    if-ne p1, v4, :cond_1

    .line 759
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProperty (User Wanted Accuracy) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 762
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 774
    :cond_0
    :goto_0
    return v4

    .line 763
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 764
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    .line 765
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 764
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProperty (User Height) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 767
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 768
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 769
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    .line 770
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 769
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProperty (User Weight) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 772
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final terminateAggregator()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected final updateApSleep()V
    .locals 1

    .prologue
    .line 784
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 783
    return-void
.end method

.method protected final updateApWakeup()V
    .locals 1

    .prologue
    .line 795
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 797
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->updateApWakeup()V

    .line 794
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 672
    if-nez p2, :cond_0

    .line 673
    return-void

    .line 676
    :cond_0
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateRawGpsData(Landroid/os/Bundle;)V

    .line 671
    :cond_1
    :goto_0
    return-void

    .line 678
    :cond_2
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateRawSatelliteData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 681
    :cond_3
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateRawWpsData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 683
    :cond_4
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {p2}, Landroid/os/BaseBundle;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 685
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateApdrData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 687
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->receiveApdrNoti(Landroid/os/Bundle;)V

    goto :goto_0
.end method
