.class public Lcom/android/server/FMPlayerNativeBase;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMPlayerNativeBase$PIECCData;,
        Lcom/android/server/FMPlayerNativeBase$RDSData;,
        Lcom/android/server/FMPlayerNativeBase$RTPlusData;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAFSwitching()V
    .locals 0

    return-void
.end method

.method public cancelSeek()V
    .locals 0

    return-void
.end method

.method public disableAF()V
    .locals 0

    return-void
.end method

.method public disableDNS()V
    .locals 0

    return-void
.end method

.method public disableRDS()V
    .locals 0

    return-void
.end method

.method public enableAF()V
    .locals 0

    return-void
.end method

.method public enableDNS()V
    .locals 0

    return-void
.end method

.method public enableRDS()V
    .locals 0

    return-void
.end method

.method public getAFRMSSISamples()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getAFValid_th()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getAF_th()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBlendRmssi()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBlendSinr()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCFOTh12()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCnt_th()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCnt_th_2()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentChannel()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentSNR()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFrequencyOffsetThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxVolume()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getNoisePowerThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOffChannelThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOnChannelThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPilotPowerThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRMSSIFirstStage()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRSSI_th()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRSSI_th_2()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSINRFirstStage()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSINRSamples()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSINRThreshold()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSNR_th()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSNR_th_2()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSearchAlgoType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSeekDC()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSeekQA()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public muteOff()V
    .locals 0

    return-void
.end method

.method public muteOn()V
    .locals 0

    return-void
.end method

.method public off()V
    .locals 0

    return-void
.end method

.method public offFMService()V
    .locals 0

    return-void
.end method

.method public on()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchAll()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchDown()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekDown()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekUp()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAFRMSSISamples(I)V
    .locals 0

    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .locals 0

    return-void
.end method

.method public setAFValid_th(I)V
    .locals 0

    return-void
.end method

.method public setAF_th(I)V
    .locals 0

    return-void
.end method

.method public setBand(I)V
    .locals 0

    return-void
.end method

.method public setBlendRmssi(I)V
    .locals 0

    return-void
.end method

.method public setBlendSinr(I)V
    .locals 0

    return-void
.end method

.method public setCFOTh12(I)V
    .locals 0

    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 0

    return-void
.end method

.method public setCnt_th(I)V
    .locals 0

    return-void
.end method

.method public setCnt_th_2(I)V
    .locals 0

    return-void
.end method

.method public setDEConstant(J)V
    .locals 0

    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 0

    return-void
.end method

.method public setFrequencyOffsetThreshold(I)V
    .locals 1

    const-string/jumbo v0, "setFrequencyOffsetThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .locals 0

    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIFCount1(I)V
    .locals 0

    return-void
.end method

.method public setIFCount2(I)V
    .locals 0

    return-void
.end method

.method public setMono()V
    .locals 0

    return-void
.end method

.method public setNoisePowerThreshold(I)V
    .locals 1

    const-string/jumbo v0, "setNoisePowerThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setOffChannelThreshold(I)V
    .locals 0

    return-void
.end method

.method public setOnChannelThreshold(I)V
    .locals 0

    return-void
.end method

.method public setPilotPowerThreshold(I)V
    .locals 1

    const-string/jumbo v0, "setPilotPowerThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setRMSSIFirstStage(I)V
    .locals 0

    return-void
.end method

.method public setRSSI_th(I)V
    .locals 0

    return-void
.end method

.method public setRSSI_th_2(I)V
    .locals 0

    return-void
.end method

.method public setRecordMode(I)V
    .locals 0

    return-void
.end method

.method public setSINRFirstStage(I)V
    .locals 0

    return-void
.end method

.method public setSINRSamples(I)V
    .locals 0

    return-void
.end method

.method public setSINRThreshold(I)V
    .locals 0

    return-void
.end method

.method public setSNR_th(I)V
    .locals 0

    return-void
.end method

.method public setSNR_th_2(I)V
    .locals 0

    return-void
.end method

.method public setScanning(Z)V
    .locals 0

    return-void
.end method

.method public setSearchAlgoType(I)V
    .locals 0

    return-void
.end method

.method public setSeekDC(I)V
    .locals 0

    return-void
.end method

.method public setSeekQA(I)V
    .locals 0

    return-void
.end method

.method public setSeekRSSI(J)V
    .locals 0

    return-void
.end method

.method public setSeekSNR(J)V
    .locals 0

    return-void
.end method

.method public setSoftMuteCoeff(J)V
    .locals 0

    return-void
.end method

.method public setSoftStereoBlendCoeff(J)V
    .locals 0

    return-void
.end method

.method public setSoftmute(Z)V
    .locals 0

    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 0

    return-void
.end method

.method public setStereo()V
    .locals 0

    return-void
.end method

.method public setVolume(J)V
    .locals 0

    return-void
.end method

.method public tune(J)V
    .locals 0

    return-void
.end method
