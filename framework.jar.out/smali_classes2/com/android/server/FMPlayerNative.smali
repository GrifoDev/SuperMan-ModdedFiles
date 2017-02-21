.class public Lcom/android/server/FMPlayerNative;
.super Lcom/android/server/FMPlayerNativeBase;
.source "FMPlayerNative.java"


# static fields
.field private static final DEBUGGABLE:Z

.field private static mService:Lcom/android/server/FMRadioService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "fmradio_jni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "FMRadio lib loaded"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMPlayerNativeBase;-><init>(Lcom/android/server/FMRadioService;)V

    sput-object p1, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    return-void
.end method

.method public static notifyAFDataReceived(J)V
    .locals 4

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAFDataReceived :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public static notifyAFStarted()V
    .locals 3

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "NotifyAFStarted :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public static notifyPIECCEvent(Lcom/android/server/FMPlayerNativeBase$PIECCData;)V
    .locals 2

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isDNSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Got notifyPIECCEvents :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public static notifyRDSEvent(Lcom/android/server/FMPlayerNativeBase$RDSData;)V
    .locals 2

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Got Events :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public static notifyRTPlusEvent(Lcom/android/server/FMPlayerNativeBase$RTPlusData;)V
    .locals 2

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Got notifyRTPlusEvents :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public native cancelAFSwitching()V
.end method

.method public native cancelSeek()V
.end method

.method public native disableAF()V
.end method

.method public native disableDNS()V
.end method

.method public native disableRDS()V
.end method

.method public native enableAF()V
.end method

.method public native enableDNS()V
.end method

.method public native enableRDS()V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/server/FMPlayerNativeBase;->finalize()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    return-void
.end method

.method public native getAFRMSSISamples()I
.end method

.method public native getAFRMSSIThreshold()I
.end method

.method public native getAFValid_th()I
.end method

.method public native getAF_th()I
.end method

.method public native getBlendRmssi()I
.end method

.method public native getBlendSinr()I
.end method

.method public native getCFOTh12()I
.end method

.method public native getCnt_th()I
.end method

.method public native getCnt_th_2()I
.end method

.method public native getCurrentChannel()J
.end method

.method public native getCurrentRSSI()J
.end method

.method public native getCurrentSNR()J
.end method

.method public getFrequencyOffsetThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public native getGoodChannelRMSSIThreshold()I
.end method

.method public native getHybridSearch()Ljava/lang/String;
.end method

.method public native getMaxVolume()J
.end method

.method public getNoisePowerThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public native getOffChannelThreshold()I
.end method

.method public native getOnChannelThreshold()I
.end method

.method public getPilotPowerThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public native getRMSSIFirstStage()I
.end method

.method public native getRSSI_th()I
.end method

.method public native getRSSI_th_2()I
.end method

.method public native getSINRFirstStage()I
.end method

.method public native getSINRSamples()I
.end method

.method public native getSINRThreshold()I
.end method

.method public native getSNR_th()I
.end method

.method public native getSNR_th_2()I
.end method

.method public native getSearchAlgoType()I
.end method

.method public native getSeekDC()I
.end method

.method public native getSeekQA()I
.end method

.method public native getSoftMuteMode()Z
.end method

.method public native getVolume()J
.end method

.method public native muteOff()V
.end method

.method public native muteOn()V
.end method

.method public native off()V
.end method

.method public offFMService()V
    .locals 0

    return-void
.end method

.method public native on()J
.end method

.method public native searchAll()J
.end method

.method public native searchDown()J
.end method

.method public native searchUp()J
.end method

.method public native seekDown()J
.end method

.method public native seekUp()J
.end method

.method public native setAFRMSSISamples(I)V
.end method

.method public native setAFRMSSIThreshold(I)V
.end method

.method public native setAFValid_th(I)V
.end method

.method public native setAF_th(I)V
.end method

.method public native setBand(I)V
.end method

.method public native setBlendRmssi(I)V
.end method

.method public native setBlendSinr(I)V
.end method

.method public native setCFOTh12(I)V
.end method

.method public native setChannelSpacing(I)V
.end method

.method public native setCnt_th(I)V
.end method

.method public native setCnt_th_2(I)V
.end method

.method public native setDEConstant(J)V
.end method

.method public native setFMIntenna(Z)V
.end method

.method public setFrequencyOffsetThreshold(I)V
    .locals 1

    const-string/jumbo v0, "setFrequencyOffsetThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public native setGoodChannelRMSSIThreshold(I)V
.end method

.method public native setHybridSearch(Ljava/lang/String;)V
.end method

.method public native setIFCount1(I)V
.end method

.method public native setIFCount2(I)V
.end method

.method public native setMono()V
.end method

.method public setNoisePowerThreshold(I)V
    .locals 1

    const-string/jumbo v0, "setNoisePowerThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public native setOffChannelThreshold(I)V
.end method

.method public native setOnChannelThreshold(I)V
.end method

.method public setPilotPowerThreshold(I)V
    .locals 1

    const-string/jumbo v0, "setPilotPowerThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public native setRMSSIFirstStage(I)V
.end method

.method public native setRSSI_th(I)V
.end method

.method public native setRSSI_th_2(I)V
.end method

.method public native setRecordMode(I)V
.end method

.method public native setSINRFirstStage(I)V
.end method

.method public native setSINRSamples(I)V
.end method

.method public native setSINRThreshold(I)V
.end method

.method public native setSNR_th(I)V
.end method

.method public native setSNR_th_2(I)V
.end method

.method public native setScanning(Z)V
.end method

.method public native setSearchAlgoType(I)V
.end method

.method public native setSeekDC(I)V
.end method

.method public native setSeekQA(I)V
.end method

.method public native setSeekRSSI(J)V
.end method

.method public native setSeekSNR(J)V
.end method

.method public native setSoftMuteCoeff(J)V
.end method

.method public native setSoftStereoBlendCoeff(J)V
.end method

.method public native setSoftmute(Z)V
.end method

.method public native setSpeakerOn(Z)V
.end method

.method public native setStereo()V
.end method

.method public native setVolume(J)V
.end method

.method public native tune(J)V
.end method
