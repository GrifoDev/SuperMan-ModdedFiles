.class public Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.super Ljava/lang/Object;
.source "CaTelephonyManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    }
.end annotation


# static fields
.field private static final CALL_STATE_ACTIVE:B = -0x27t

.field private static final CALL_STATE_IDLE:B = -0x28t

.field private static CALL_STATE_IDLE_1:I

.field private static CALL_STATE_INCOMING_ANSWERED:I

.field private static CALL_STATE_INCOMING_MISSED:I

.field private static CALL_STATE_INCOMING_RINGING:I

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# instance fields
.field private mCellLocation:Landroid/telephony/CellLocation;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Z
    .locals 1
    .param p1, "cl"    # Landroid/telephony/CellLocation;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->isCellLocationChanged(Landroid/telephony/CellLocation;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCellInfoToSensorHub()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_IDLE_1:I

    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_RINGING:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_ANSWERED:I

    .line 64
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_MISSED:I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 91
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCellLocationChanged(Landroid/telephony/CellLocation;)Z
    .locals 12
    .param p1, "cl"    # Landroid/telephony/CellLocation;

    .prologue
    .line 262
    const/4 v10, 0x0

    .line 264
    .local v10, "ret":Z
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    if-eqz v11, :cond_6

    .line 265
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v11, v11, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v11, :cond_2

    .line 266
    instance-of v11, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v11, :cond_1

    .line 270
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 271
    .local v6, "prevCid":I
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v7

    .local v7, "prevLac":I
    move-object v11, p1

    .line 273
    nop

    nop

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 274
    .local v1, "curCid":I
    nop

    nop

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 276
    .local v2, "curLac":I
    if-eq v6, v1, :cond_0

    if-eq v7, v2, :cond_0

    .line 277
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 278
    const/4 v10, 0x1

    .line 334
    .end local v1    # "curCid":I
    .end local v2    # "curLac":I
    .end local v6    # "prevCid":I
    .end local v7    # "prevLac":I
    :cond_0
    :goto_0
    return v10

    .line 283
    .restart local p1    # "cl":Landroid/telephony/CellLocation;
    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    .line 287
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v11, v11, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v11, :cond_0

    .line 288
    instance-of v11, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v11, :cond_5

    .line 292
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    .line 293
    .local v5, "prevBid":I
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v8

    .line 294
    .local v8, "prevNid":I
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    .local v9, "prevSid":I
    move-object v11, p1

    .line 296
    nop

    nop

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .local v0, "curBid":I
    move-object v11, p1

    .line 297
    nop

    nop

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .line 298
    .local v3, "curNid":I
    nop

    nop

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .line 300
    .local v4, "curSid":I
    if-ne v5, v0, :cond_3

    if-eq v8, v3, :cond_4

    .line 301
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 302
    const/4 v10, 0x1

    goto :goto_0

    .line 300
    :cond_4
    if-eq v9, v4, :cond_0

    goto :goto_1

    .line 308
    .end local v0    # "curBid":I
    .end local v3    # "curNid":I
    .end local v4    # "curSid":I
    .end local v5    # "prevBid":I
    .end local v8    # "prevNid":I
    .end local v9    # "prevSid":I
    .restart local p1    # "cl":Landroid/telephony/CellLocation;
    :cond_5
    const/4 v10, 0x1

    goto :goto_0

    .line 313
    :cond_6
    instance-of v11, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v11, :cond_7

    move-object v11, p1

    .line 315
    nop

    nop

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 316
    .restart local v1    # "curCid":I
    nop

    nop

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 318
    .restart local v2    # "curLac":I
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 319
    const/4 v10, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "curCid":I
    .end local v2    # "curLac":I
    .restart local p1    # "cl":Landroid/telephony/CellLocation;
    :cond_7
    instance-of v11, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v11, :cond_0

    move-object v11, p1

    .line 324
    nop

    nop

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .restart local v0    # "curBid":I
    move-object v11, p1

    .line 325
    nop

    nop

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .line 326
    .restart local v3    # "curNid":I
    nop

    nop

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .line 328
    .restart local v4    # "curSid":I
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 329
    const/4 v10, 0x1

    goto :goto_0
.end method

.method private sendCallStatusToSensorHub(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 411
    new-array v0, v3, [B

    .line 413
    .local v0, "dataPacket":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 414
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 416
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    .line 410
    return-void

    .line 416
    nop

    :array_0
    .array-data 1
        -0x4ct
        0x11t
    .end array-data
.end method

.method private sendCellInfoToSensorHub()V
    .locals 15

    .prologue
    .line 422
    const/16 v12, 0xe

    new-array v2, v12, [B

    .line 423
    .local v2, "dataPacket":[B
    const/4 v8, 0x4

    .line 424
    .local v8, "size":I
    const/4 v10, 0x0

    .line 427
    .local v10, "toSendData":Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v11

    .line 429
    .local v11, "utcTime":[I
    const/4 v12, 0x0

    aget v12, v11, v12

    int-to-byte v12, v12

    const/4 v13, 0x0

    aput-byte v12, v2, v13

    .line 430
    const/4 v12, 0x1

    aget v12, v11, v12

    int-to-byte v12, v12

    const/4 v13, 0x1

    aput-byte v12, v2, v13

    .line 431
    const/4 v12, 0x2

    aget v12, v11, v12

    int-to-byte v12, v12

    const/4 v13, 0x2

    aput-byte v12, v2, v13

    .line 433
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v12, v12, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v12, :cond_2

    .line 434
    const/4 v12, 0x0

    const/4 v13, 0x3

    aput-byte v12, v2, v13

    .line 436
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 437
    .local v1, "cid":I
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 438
    .local v3, "lac":I
    const/4 v4, 0x0

    .line 439
    .local v4, "mcc":I
    const/4 v5, 0x0

    .line 441
    .local v5, "mnc":I
    const/4 v12, 0x4

    invoke-static {v1, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 442
    const/4 v12, 0x2

    invoke-static {v3, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/16 v8, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 443
    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/lit8 v8, v8, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 444
    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/lit8 v8, v8, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 446
    const/4 v10, 0x1

    .line 464
    .end local v1    # "cid":I
    .end local v3    # "lac":I
    .end local v4    # "mcc":I
    .end local v5    # "mnc":I
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 465
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_0

    invoke-virtual {v12, v2, v13}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    .line 421
    :cond_1
    return-void

    .line 448
    :cond_2
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v12, v12, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v12, :cond_0

    .line 449
    const/4 v12, 0x1

    const/4 v13, 0x3

    aput-byte v12, v2, v13

    .line 451
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v12}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 452
    .local v0, "baseStationId":I
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v12}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .line 453
    .local v6, "networkId":I
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v12}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    .line 454
    .local v9, "systemId":I
    const/4 v7, 0x0

    .line 456
    .local v7, "padding":I
    const/4 v12, 0x2

    invoke-static {v0, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 457
    const/4 v12, 0x2

    invoke-static {v6, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v8, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 458
    const/4 v12, 0x2

    invoke-static {v9, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/lit8 v8, v8, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 459
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/lit8 v8, v8, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 461
    const/4 v10, 0x1

    goto :goto_0

    .line 465
    nop

    :array_0
    .array-data 1
        -0x3ft
        0x11t
    .end array-data
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string/jumbo v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 105
    return-void

    .line 109
    :cond_0
    const-string/jumbo v0, "phone"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "mTelephonyManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 117
    const/16 v2, 0x120

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 102
    return-void
.end method

.method public final terminateManager()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 136
    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 133
    :cond_0
    return-void
.end method
