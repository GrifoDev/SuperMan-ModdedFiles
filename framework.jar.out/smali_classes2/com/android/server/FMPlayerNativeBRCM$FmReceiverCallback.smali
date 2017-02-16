.class Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;
.super Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;
.source "FMPlayerNativeBRCM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBRCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmReceiverCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMPlayerNativeBRCM;


# direct methods
.method private constructor <init>(Lcom/android/server/FMPlayerNativeBRCM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMPlayerNativeBRCM;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/FMPlayerNativeBRCM;Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMPlayerNativeBRCM;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;-><init>(Lcom/android/server/FMPlayerNativeBRCM;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onAudioModeEvent(I)V
    .locals 3
    .param p1, "audioMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 461
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioModeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 460
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioPathEvent(I)V
    .locals 3
    .param p1, "audioPath"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 467
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioPathEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 466
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCurrentRssiEvent(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 497
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCurrentRssiEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 496
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEstimateNflEvent(I)V
    .locals 3
    .param p1, "nfl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 473
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEstimateNflEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 472
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLiveAudioQualityEvent(II)V
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 479
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLiveAudioQualityEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 478
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsAFEvent(I)V
    .locals 4
    .param p1, "afreq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 429
    :try_start_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRdsAFEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 435
    return-void

    .line 432
    :cond_0
    :try_start_1
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "onRdsAFEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 437
    :cond_1
    int-to-long v0, p1

    :try_start_2
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get3()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    int-to-long v0, p1

    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get2()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 438
    :cond_2
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "onRdsAFEvent : AF is invalid channel "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 439
    return-void

    .line 442
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 443
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->-set6(J)J

    .line 445
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v0

    .line 446
    mul-int/lit8 v1, p1, 0xa

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 445
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 428
    return-void
.end method

.method public declared-synchronized onRdsDataEvent(IILjava/lang/String;)V
    .locals 6
    .param p1, "rdsDataType"    # I
    .param p2, "rdsIndex"    # I
    .param p3, "rdsText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xa

    monitor-enter p0

    .line 383
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRdsDataEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRdsDataEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 389
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 392
    :try_start_1
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    if-nez v0, :cond_3

    .line 393
    new-instance v0, Lcom/android/server/FMPlayerNativeBase$RDSData;

    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get8()J

    move-result-wide v2

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, p3, v1}, Lcom/android/server/FMPlayerNativeBase$RDSData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 403
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    monitor-exit p0

    .line 404
    return-void

    .line 395
    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    iput-object p3, v0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 397
    :try_start_3
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    if-nez v0, :cond_5

    .line 398
    new-instance v0, Lcom/android/server/FMPlayerNativeBase$RDSData;

    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get8()J

    move-result-wide v2

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1, p3}, Lcom/android/server/FMPlayerNativeBase$RDSData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    goto :goto_0

    .line 400
    :cond_5
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    iput-object p3, v0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_6
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v0

    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 382
    return-void
.end method

.method public declared-synchronized onRdsModeEvent(II)V
    .locals 3
    .param p1, "rdsMode"    # I
    .param p2, "alternateFreqHopEnabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 376
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRdsModeEvent  : rdsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    const-string/jumbo v2, ", alternateFreqHopEnabled="

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 375
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsPIECCEvent(II)V
    .locals 4
    .param p1, "pi"    # I
    .param p2, "ecc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 450
    :try_start_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRdsPIECCEvent - pi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ecc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    new-instance v0, Lcom/android/server/FMPlayerNativeBase$PIECCData;

    invoke-direct {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase$PIECCData;-><init>(II)V

    .line 456
    .local v0, "data":Lcom/android/server/FMPlayerNativeBase$PIECCData;
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 449
    return-void

    .line 453
    .end local v0    # "data":Lcom/android/server/FMPlayerNativeBase$PIECCData;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "onRdsPIECCEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRdsRTPlusEvent(IIIIII)V
    .locals 7
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 414
    :try_start_0
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRdsRTPlusEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 415
    const-string/jumbo v3, ", "

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 415
    const-string/jumbo v3, ", "

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    const-string/jumbo v3, ", "

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    const-string/jumbo v3, ")"

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isRDSEnable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    .line 419
    return-void

    .line 421
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/FMPlayerNativeBase$RTPlusData;-><init>(IIIIII)V

    .line 425
    .local v0, "data":Lcom/android/server/FMPlayerNativeBase$RTPlusData;
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 413
    return-void

    .end local v0    # "data":Lcom/android/server/FMPlayerNativeBase$RTPlusData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onSeekCompleteEvent(IIIZ)V
    .locals 3
    .param p1, "freq"    # I
    .param p2, "rssi"    # I
    .param p3, "snr"    # I
    .param p4, "seeksuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 364
    :try_start_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSeekCompleteEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, ", "

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, ")"

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 363
    return-void

    .line 368
    :cond_0
    :try_start_1
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSeekCompleteEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    const-string/jumbo v2, ")"

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "freq"    # I
    .param p2, "rssi"    # I
    .param p3, "snr"    # I
    .param p4, "radioIsOn"    # Z
    .param p5, "rdsProgramType"    # I
    .param p6, "rdsProgramService"    # Ljava/lang/String;
    .param p7, "rdsRadioText"    # Ljava/lang/String;
    .param p8, "rdsProgramTypeName"    # Ljava/lang/String;
    .param p9, "isMute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 317
    :try_start_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStatusEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    const-string/jumbo v3, ", "

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    const-string/jumbo v3, ", "

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    const-string/jumbo v3, ", "

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    const-string/jumbo v3, ", "

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    const-string/jumbo v3, ", "

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    const-string/jumbo v3, ", "

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    const-string/jumbo v3, ")"

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get1()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_4

    .line 332
    :cond_0
    invoke-static {p4}, Lcom/android/server/FMPlayerNativeBRCM;->-set0(Z)Z

    .line 334
    if-nez p4, :cond_5

    .line 335
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get6()Lcom/android/server/FMRadioService;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBRCM;->finish()V

    .line 337
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/FMPlayerNativeBRCM;->-set5(Lcom/android/server/FMPlayerVolumeTable;)Lcom/android/server/FMPlayerVolumeTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBRCM;->notify_unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    .line 316
    return-void

    .line 323
    :cond_3
    :try_start_2
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStatusEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    const-string/jumbo v3, ", "

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    const-string/jumbo v3, ", "

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    const-string/jumbo v3, ")"

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 329
    :cond_4
    :try_start_3
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "onStatusEvent:: FM is offed during tune "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p4}, Lcom/android/server/FMPlayerNativeBRCM;->-set0(Z)Z

    goto :goto_1

    .line 339
    :cond_5
    if-eqz p1, :cond_6

    .line 340
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/android/server/FMPlayerNativeBRCM;->-set6(J)J

    .line 341
    neg-int v1, p2

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/android/server/FMPlayerNativeBRCM;->-set2(J)J

    goto :goto_1

    .line 342
    :cond_6
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get7()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 343
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Service Restart due to reset network settings, tune to freq : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNativeBRCM;->getCurrentChannel()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBRCM;->muteOn()V

    .line 345
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-static {v1}, Lcom/android/server/FMPlayerNativeBRCM;->-wrap2(Lcom/android/server/FMPlayerNativeBRCM;)V

    .line 346
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-static {v1}, Lcom/android/server/FMPlayerNativeBRCM;->-wrap1(Lcom/android/server/FMPlayerNativeBRCM;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    iget-object v2, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNativeBRCM;->getCurrentChannel()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNativeBRCM;->tune(J)V

    .line 348
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get7()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNativeBRCM;->setVolume(J)V

    .line 349
    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBRCM;->muteOff()V

    goto/16 :goto_1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "onStatusEvent() InterruptedException ::"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method public declared-synchronized onVolumeEvent(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 491
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 490
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWorldRegionEvent(I)V
    .locals 3
    .param p1, "worldRegion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 485
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWorldRegionEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 484
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
