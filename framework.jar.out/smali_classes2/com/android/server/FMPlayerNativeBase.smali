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
    .param p1, "service"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAFSwitching()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public cancelSeek()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public disableAF()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public disableDNS()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public disableRDS()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public enableAF()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public enableDNS()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public enableRDS()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public getAFRMSSISamples()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, -0x1

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public getAFValid_th()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, -0x1

    return v0
.end method

.method public getAF_th()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public getBlendRmssi()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, -0x1

    return v0
.end method

.method public getBlendSinr()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, -0x1

    return v0
.end method

.method public getCFOTh12()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public getCnt_th()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public getCnt_th_2()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentChannel()J
    .locals 2

    .prologue
    .line 104
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 2

    .prologue
    .line 162
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentSNR()J
    .locals 2

    .prologue
    .line 166
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFrequencyOffsetThreshold()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, -0x1

    return v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, -0x1

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxVolume()J
    .locals 2

    .prologue
    .line 156
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getNoisePowerThreshold()I
    .locals 1

    .prologue
    .line 347
    const/4 v0, -0x1

    return v0
.end method

.method public getOffChannelThreshold()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, -0x1

    return v0
.end method

.method public getOnChannelThreshold()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, -0x1

    return v0
.end method

.method public getPilotPowerThreshold()I
    .locals 1

    .prologue
    .line 344
    const/4 v0, -0x1

    return v0
.end method

.method public getRMSSIFirstStage()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, -0x1

    return v0
.end method

.method public getRSSI_th()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, -0x1

    return v0
.end method

.method public getRSSI_th_2()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, -0x1

    return v0
.end method

.method public getSINRFirstStage()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, -0x1

    return v0
.end method

.method public getSINRSamples()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method public getSINRThreshold()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, -0x1

    return v0
.end method

.method public getSNR_th()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, -0x1

    return v0
.end method

.method public getSNR_th_2()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, -0x1

    return v0
.end method

.method public getSearchAlgoType()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, -0x1

    return v0
.end method

.method public getSeekDC()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public getSeekQA()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()J
    .locals 2

    .prologue
    .line 122
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public muteOff()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public muteOn()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public off()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public offFMService()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public on()J
    .locals 2

    .prologue
    .line 86
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchAll()J
    .locals 2

    .prologue
    .line 116
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchDown()J
    .locals 2

    .prologue
    .line 108
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekDown()J
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekUp()J
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAFRMSSISamples(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 284
    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 278
    return-void
.end method

.method public setAFValid_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 215
    return-void
.end method

.method public setAF_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 209
    return-void
.end method

.method public setBand(I)V
    .locals 0
    .param p1, "band"    # I

    .prologue
    .line 143
    return-void
.end method

.method public setBlendRmssi(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 302
    return-void
.end method

.method public setBlendSinr(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 308
    return-void
.end method

.method public setCFOTh12(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 260
    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 145
    return-void
.end method

.method public setCnt_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 177
    return-void
.end method

.method public setCnt_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 183
    return-void
.end method

.method public setDEConstant(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 159
    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 0
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 221
    return-void
.end method

.method public setFrequencyOffsetThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 332
    const-string/jumbo v0, "setFrequencyOffsetThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 290
    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    return-void
.end method

.method public setIFCount1(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 350
    return-void
.end method

.method public setIFCount2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 351
    return-void
.end method

.method public setMono()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public setNoisePowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 338
    const-string/jumbo v0, "setNoisePowerThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public setOffChannelThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 248
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 242
    return-void
.end method

.method public setPilotPowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 335
    const-string/jumbo v0, "setPilotPowerThreshold not supported :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public setRMSSIFirstStage(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 266
    return-void
.end method

.method public setRSSI_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 173
    return-void
.end method

.method public setRSSI_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 179
    return-void
.end method

.method public setRecordMode(I)V
    .locals 0
    .param p1, "is_record"    # I

    .prologue
    .line 153
    return-void
.end method

.method public setSINRFirstStage(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 272
    return-void
.end method

.method public setSINRSamples(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 236
    return-void
.end method

.method public setSINRThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 254
    return-void
.end method

.method public setSNR_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 175
    return-void
.end method

.method public setSNR_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 181
    return-void
.end method

.method public setScanning(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 329
    return-void
.end method

.method public setSearchAlgoType(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 230
    return-void
.end method

.method public setSeekDC(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 316
    return-void
.end method

.method public setSeekQA(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 322
    return-void
.end method

.method public setSeekRSSI(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 169
    return-void
.end method

.method public setSeekSNR(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 171
    return-void
.end method

.method public setSoftMuteCoeff(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 353
    return-void
.end method

.method public setSoftStereoBlendCoeff(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 352
    return-void
.end method

.method public setSoftmute(Z)V
    .locals 0
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 223
    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 0
    .param p1, "setSpeakerOn"    # Z

    .prologue
    .line 151
    return-void
.end method

.method public setStereo()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public setVolume(J)V
    .locals 0
    .param p1, "volume"    # J

    .prologue
    .line 119
    return-void
.end method

.method public tune(J)V
    .locals 0
    .param p1, "freq"    # J

    .prologue
    .line 83
    return-void
.end method
