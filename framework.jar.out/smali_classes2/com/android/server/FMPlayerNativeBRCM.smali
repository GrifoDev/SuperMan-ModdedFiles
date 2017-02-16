.class public Lcom/android/server/FMPlayerNativeBRCM;
.super Lcom/android/server/FMPlayerNativeBase;
.source "FMPlayerNativeBRCM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMPlayerNativeBRCM$1;,
        Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;
    }
.end annotation


# static fields
.field private static AF_THRESHOLD:I = 0x0

.field private static AF_TOLERANCE:I = 0x0

.field private static final APP_DRI_FRE_FACTOR:I = 0xa

.field private static COS:I = 0x0

.field private static final DEBUG:Z

.field private static DEConstant:I = 0x0

.field private static FrequencyOffset_th:I = 0x0

.field private static IsEnabled:Z = false

.field private static IsSoftmute:Z = false

.field private static Max_Channel:J = 0x0L

.field private static Min_Channel:J = 0x0L

.field private static NoisePower_th:I = 0x0

.field private static PilotPower_th:I = 0x0

.field public static RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData; = null

.field private static RSSI_SNR:I = 0x0

.field private static RSSI_th:I = 0x0

.field private static SeekIsCancel:Z = false

.field private static SeekIsRounding:Z = false

.field private static SeekIsWorking:Z = false

.field private static final TAG:Ljava/lang/String; = "FMPlayerNative_brcm"

.field private static af_mode:I

.field private static bIsNewConnection:Z

.field private static current_rssi:J

.field private static current_snr:J

.field private static mBand:I

.field private static mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

.field private static mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

.field private static mContext:Landroid/content/Context;

.field private static mDEConstantVal:J

.field private static mService:Lcom/android/server/FMRadioService;

.field private static mSpacing:I

.field private static mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

.field private static rdsFeatures:I

.field private static rds_mode:I

.field private static region:I

.field private static settedVol:J

.field private static tuned_freq:J


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mLocked:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    return v0
.end method

.method static synthetic -get2()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    return-wide v0
.end method

.method static synthetic -get3()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    return-wide v0
.end method

.method static synthetic -get4()Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    .locals 1

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    return-object v0
.end method

.method static synthetic -get5()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    .locals 1

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-object v0
.end method

.method static synthetic -get6()Lcom/android/server/FMRadioService;
    .locals 1

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    return-object v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J

    return-wide v0
.end method

.method static synthetic -get8()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    return-wide v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/FMPlayerNativeBRCM;->bIsNewConnection:Z

    return p0
.end method

.method static synthetic -set2(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    return-wide p0
.end method

.method static synthetic -set3(Lcom/broadcom/fm/fmreceiver/IFmReceiverService;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    .locals 0

    sput-object p0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    return-object p0
.end method

.method static synthetic -set4(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    .locals 0

    sput-object p0, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-object p0
.end method

.method static synthetic -set5(Lcom/android/server/FMPlayerVolumeTable;)Lcom/android/server/FMPlayerVolumeTable;
    .locals 0

    sput-object p0, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    return-object p0
.end method

.method static synthetic -set6(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    return-wide p0
.end method

.method static synthetic -wrap0(Lcom/android/server/FMPlayerNativeBRCM;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMPlayerNativeBRCM;->turnOnRadio()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/FMPlayerNativeBRCM;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMPlayerNativeBRCM;->setRegionalSetting()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/FMPlayerNativeBRCM;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMPlayerNativeBRCM;->setSignalSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    .line 46
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    .line 47
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    .line 48
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    .line 49
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    .line 51
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    .line 57
    const-wide/16 v4, 0x222e

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    .line 58
    const-wide/16 v4, 0x2a30

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    .line 59
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    .line 60
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->mBand:I

    .line 61
    const/16 v0, 0xa

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->mSpacing:I

    .line 62
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    .line 63
    sput-wide v6, Lcom/android/server/FMPlayerNativeBRCM;->mDEConstantVal:J

    .line 65
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    .line 66
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 67
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    .line 68
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    .line 69
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    .line 70
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J

    .line 71
    sput-wide v6, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    .line 72
    sput-wide v6, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    .line 74
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    .line 75
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    .line 77
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 84
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    .line 85
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->bIsNewConnection:Z

    .line 41
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/FMPlayerNativeBase;-><init>(Lcom/android/server/FMRadioService;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    .line 219
    new-instance v0, Lcom/android/server/FMPlayerNativeBRCM$1;

    invoke-direct {v0, p0}, Lcom/android/server/FMPlayerNativeBRCM$1;-><init>(Lcom/android/server/FMPlayerNativeBRCM;)V

    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mConnection:Landroid/content/ServiceConnection;

    .line 95
    sput-object p1, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    .line 96
    invoke-virtual {p1}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method private initValue()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 176
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "initValue "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    .line 179
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 180
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    .line 181
    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    .line 182
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    .line 183
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J

    .line 184
    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    .line 185
    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    .line 187
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    .line 188
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    .line 189
    const/16 v0, 0x44

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->rdsFeatures:I

    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 192
    const/16 v0, 0x6f

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    .line 193
    const/16 v0, 0xa

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    .line 194
    const/16 v0, 0x8

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    .line 196
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->getAF_th()I

    move-result v0

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    .line 197
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->getAFValid_th()I

    move-result v0

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    .line 199
    new-instance v0, Lcom/android/server/FMPlayerVolumeTable;

    invoke-direct {v0}, Lcom/android/server/FMPlayerVolumeTable;-><init>()V

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    .line 175
    return-void
.end method

.method private setRdsMode(II)V
    .locals 5
    .param p1, "rdsMode"    # I
    .param p2, "afMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 996
    const/4 v1, 0x2

    .line 998
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 999
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setRdsMode() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 1003
    :cond_0
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 1007
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->rdsFeatures:I

    .line 1008
    sget v4, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    .line 1007
    invoke-interface {v2, p1, v3, p2, v4}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1013
    :goto_0
    if-eqz v1, :cond_1

    .line 1014
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRdsMode() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_1
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setRegionalSetting()V
    .locals 4

    .prologue
    .line 518
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSignalSetting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMPlayerNativeBRCM;->mBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMPlayerNativeBRCM;->mSpacing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->mDEConstantVal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->mBand:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMPlayerNativeBRCM;->setBand(I)V

    .line 520
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->mSpacing:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMPlayerNativeBRCM;->setChannelSpacing(I)V

    .line 521
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->mDEConstantVal:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setDEConstant(J)V

    .line 517
    return-void
.end method

.method private setSignalSetting()V
    .locals 4

    .prologue
    .line 503
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, "mChipVendor":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 505
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSignalSetting SPRD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->FrequencyOffset_th:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->NoisePower_th:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->PilotPower_th:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRSSI_th(I)V

    .line 507
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->FrequencyOffset_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setFrequencyOffsetThreshold(I)V

    .line 508
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->NoisePower_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setNoisePowerThreshold(I)V

    .line 509
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->PilotPower_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setPilotPowerThreshold(I)V

    .line 501
    :goto_0
    return-void

    .line 511
    :cond_0
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSignalSetting BRCM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRSSI_th(I)V

    .line 513
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setSNR_th(I)V

    .line 514
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setCnt_th(I)V

    goto :goto_0
.end method

.method private turnOnRadio()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 525
    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v5}, Lcom/android/server/FMRadioService;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 529
    :cond_0
    const/4 v4, 0x2

    .line 531
    .local v4, "returnCode":I
    const-string/jumbo v5, "service.brcm.fm.start_mute"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "Softmute":Ljava/lang/String;
    const-string/jumbo v5, "off"

    sget-object v6, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SOFTMUTE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 534
    const-string/jumbo v5, "255"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 533
    if-eqz v5, :cond_4

    .line 535
    :cond_1
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() Softmute disable."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sput-boolean v7, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    .line 538
    :try_start_0
    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    .line 540
    const-string/jumbo v6, "com.sec.android.app.fm"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 538
    const/16 v7, 0x60

    invoke-interface {v5, v7, v6}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOnRadio(I[C)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 557
    :goto_0
    if-nez v4, :cond_8

    .line 559
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->isLocked()Z

    move-result v5

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->bIsNewConnection:Z

    if-eqz v5, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->wait_lock()V

    .line 561
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->bIsNewConnection:Z

    .line 564
    :cond_2
    const/4 v3, 0x0

    .local v3, "retry":I
    :goto_1
    const/16 v5, 0xf

    if-ge v3, v5, :cond_6

    .line 565
    sget-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v5, :cond_5

    .line 566
    return-wide v10

    .line 526
    .end local v0    # "Softmute":Ljava/lang/String;
    .end local v3    # "retry":I
    .end local v4    # "returnCode":I
    :cond_3
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "turnOnRadio() earphone disconnected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-wide v8

    .line 541
    .restart local v0    # "Softmute":Ljava/lang/String;
    .restart local v4    # "returnCode":I
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "turnOnRadio() failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 545
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() Softmute enable."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    .line 548
    :try_start_2
    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    .line 551
    const-string/jumbo v6, "com.sec.android.app.fm"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 548
    const/16 v7, 0x160

    invoke-interface {v5, v7, v6}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOnRadio(I[C)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    goto :goto_0

    .line 552
    :catch_1
    move-exception v1

    .line 553
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "turnOnRadio() failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 568
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "retry":I
    :cond_5
    const-wide/16 v6, 0x14

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 571
    :cond_6
    sget-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    if-nez v5, :cond_7

    .line 572
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() FMRadio of driver side is offed !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 573
    return-wide v8

    .line 575
    .end local v3    # "retry":I
    :catch_2
    move-exception v2

    .line 576
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() InterruptedException ::"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_7
    return-wide v10

    .line 580
    :cond_8
    const-string/jumbo v5, "FMPlayerNative_brcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "turnOnRadio() is failed. result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-wide v8
.end method


# virtual methods
.method public cancelAFSwitching()V
    .locals 2

    .prologue
    .line 1072
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "cancelAFSwitching() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void
.end method

.method public cancelSeek()V
    .locals 5

    .prologue
    .line 796
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 797
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "cancelSeek() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void

    .line 801
    :cond_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    if-eqz v2, :cond_1

    .line 802
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "cancelSeek() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    .line 805
    const/4 v1, 0x2

    .line 808
    .local v1, "returnCode":I
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationAbort()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 813
    :goto_0
    if-eqz v1, :cond_1

    .line 814
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelSeek() is failed. result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v1    # "returnCode":I
    :cond_1
    return-void

    .line 809
    .restart local v1    # "returnCode":I
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "cancelSeek() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized connectService()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 127
    :try_start_0
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "connectService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 130
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "BluetoothAdapter is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 132
    return-void

    .line 151
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 153
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/FMPlayerNativeBRCM;->mConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v7, 0x1

    invoke-virtual {v4, v3, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    :try_start_2
    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->isLocked()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_0
    monitor-exit p0

    .line 126
    return-void

    .line 156
    :cond_2
    :try_start_3
    const-string/jumbo v4, "FMPlayerNative_brcm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not bind to IFmReceiverService with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 161
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->wait_lock()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "connectService() InterruptedException ::"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public disableAF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1059
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    if-nez v0, :cond_0

    .line 1060
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "disableAF() :: AF is already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-void

    .line 1064
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    .line 1065
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    .line 1058
    :goto_0
    return-void

    .line 1068
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    goto :goto_0
.end method

.method public disableDNS()V
    .locals 5

    .prologue
    .line 975
    const/4 v1, 0x2

    .line 977
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "disableDNS() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 979
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "disableDNS() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void

    .line 985
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPiEccMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 990
    :goto_0
    if-eqz v1, :cond_1

    .line 991
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disableDNS() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_1
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "disableDNS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableRDS()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1033
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    if-nez v0, :cond_0

    .line 1034
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "disableRDS() :: RDS is already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void

    .line 1038
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    .line 1039
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    .line 1032
    :goto_0
    return-void

    .line 1042
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    goto :goto_0
.end method

.method public declared-synchronized disconnectService()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 170
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "disconnectService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 169
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableAF()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1046
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    if-eqz v0, :cond_0

    .line 1047
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "enableAF() :: AF is already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-void

    .line 1051
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    .line 1052
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    .line 1045
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    goto :goto_0
.end method

.method public enableDNS()V
    .locals 5

    .prologue
    .line 954
    const/4 v1, 0x2

    .line 956
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "enableDNS() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 958
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "enableDNS() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void

    .line 964
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPiEccMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 969
    :goto_0
    if-eqz v1, :cond_1

    .line 970
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableDNS() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_1
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "enableDNS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableRDS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1020
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    if-eqz v0, :cond_0

    .line 1021
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "enableRDS() :: RDS is already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void

    .line 1025
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    .line 1026
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    .line 1019
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-super {p0}, Lcom/android/server/FMPlayerNativeBase;->finalize()V

    .line 101
    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    .line 102
    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    .line 99
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 291
    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 293
    :try_start_1
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->disconnectService()V

    .line 301
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 290
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAFRMSSISamples()I
    .locals 2

    .prologue
    .line 1627
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getAFRMSSISamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 v0, 0x0

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .locals 2

    .prologue
    .line 1618
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getAFRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const/4 v0, 0x0

    return v0
.end method

.method public getAFValid_th()I
    .locals 3

    .prologue
    .line 1396
    const-string/jumbo v1, "service.brcm.fm.af_snrtolerance"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "AF":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_AFVALID_THRESH"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    .line 1404
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    return v1
.end method

.method public getAF_th()I
    .locals 3

    .prologue
    .line 1377
    const-string/jumbo v1, "service.brcm.fm.af_snrthresh"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, "AF":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1380
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_AF_THRESH"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    .line 1385
    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    return v1
.end method

.method public getBlendRmssi()I
    .locals 2

    .prologue
    .line 1654
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getBlendRmssi() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v0, 0x0

    return v0
.end method

.method public getBlendSinr()I
    .locals 2

    .prologue
    .line 1663
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getBlendSinr() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v0, 0x0

    return v0
.end method

.method public getCFOTh12()I
    .locals 2

    .prologue
    .line 1591
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getCFOTh12() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v0, 0x0

    return v0
.end method

.method public getCnt_th()I
    .locals 1

    .prologue
    .line 1366
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    return v0
.end method

.method public getCurrentChannel()J
    .locals 4

    .prologue
    .line 820
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 821
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentChannel() tuned_freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 6

    .prologue
    .line 1267
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v1, :cond_0

    .line 1268
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentRSSI() mBcomService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    return-wide v2

    .line 1273
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->getCurrentRssi()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    sub-long v2, v4, v2

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :goto_0
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurrentRSSI() current_rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    return-wide v2

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentRSSI() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentSNR()J
    .locals 6

    .prologue
    .line 1283
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v1, :cond_0

    .line 1284
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentSNR() mBcomService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    return-wide v2

    .line 1289
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->getCurrentSNR()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :goto_0
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurrentSNR() current_snr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    return-wide v2

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentSNR() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequencyOffsetThreshold()I
    .locals 1

    .prologue
    .line 1525
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->FrequencyOffset_th:I

    return v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .locals 2

    .prologue
    .line 1636
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getGoodChannelRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    const/4 v0, 0x0

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1645
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getHybridSearch() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxVolume()J
    .locals 2

    .prologue
    .line 1231
    const-wide/16 v0, 0xf

    return-wide v0
.end method

.method public getNoisePowerThreshold()I
    .locals 1

    .prologue
    .line 1533
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->NoisePower_th:I

    return v0
.end method

.method public getOffChannelThreshold()I
    .locals 2

    .prologue
    .line 1573
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getOffChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v0, 0x0

    return v0
.end method

.method public getOnChannelThreshold()I
    .locals 2

    .prologue
    .line 1564
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getOnChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v0, 0x0

    return v0
.end method

.method public getPilotPowerThreshold()I
    .locals 1

    .prologue
    .line 1529
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->PilotPower_th:I

    return v0
.end method

.method public getRMSSIFirstStage()I
    .locals 2

    .prologue
    .line 1600
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getRMSSIFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/4 v0, 0x0

    return v0
.end method

.method public getRSSI_th()I
    .locals 1

    .prologue
    .line 1312
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    return v0
.end method

.method public getSINRFirstStage()I
    .locals 2

    .prologue
    .line 1609
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSINRFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v0, 0x0

    return v0
.end method

.method public getSINRSamples()I
    .locals 2

    .prologue
    .line 1555
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSINRSamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v0, 0x0

    return v0
.end method

.method public getSINRThreshold()I
    .locals 2

    .prologue
    .line 1582
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSINRThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v0, 0x0

    return v0
.end method

.method public getSNR_th()I
    .locals 1

    .prologue
    .line 1339
    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    return v0
.end method

.method public getSearchAlgoType()I
    .locals 2

    .prologue
    .line 1546
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSearchAlgoType() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const/4 v0, 0x0

    return v0
.end method

.method public getSeekDC()I
    .locals 2

    .prologue
    .line 1674
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSeekDC() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v0, -0x1

    return v0
.end method

.method public getSeekQA()I
    .locals 2

    .prologue
    .line 1683
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSeekQA() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v0, -0x1

    return v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    .prologue
    .line 1451
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    return v0
.end method

.method public getVolume()J
    .locals 2

    .prologue
    .line 906
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J

    return-wide v0
.end method

.method protected initService(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 208
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "initService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    move-result-object v1

    sput-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v1, 0x1

    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "Unable to initialize BluetoothFM proxy with service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized isLocked()Z
    .locals 3

    .prologue
    monitor-enter p0

    .line 122
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLocked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public muteOff()V
    .locals 5

    .prologue
    .line 932
    const/4 v1, 0x2

    .line 934
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 935
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void

    .line 939
    :cond_0
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 948
    :goto_0
    if-eqz v1, :cond_1

    .line 949
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "muteOff() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_1
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public muteOn()V
    .locals 5

    .prologue
    .line 910
    const/4 v1, 0x2

    .line 912
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 913
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-void

    .line 917
    :cond_0
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 926
    :goto_0
    if-eqz v1, :cond_1

    .line 927
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "muteOn() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized notify_unlock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 116
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 115
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized off()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 604
    :try_start_0
    const-string/jumbo v4, "FMPlayerNative_brcm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "off : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v6, v6, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v3, 0x2

    .line 608
    .local v3, "returnCode":I
    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v4, :cond_0

    .line 609
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "off() mBcomService is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 610
    return-void

    .line 613
    :cond_0
    :try_start_1
    sget-boolean v4, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    if-eqz v4, :cond_3

    .line 618
    :cond_1
    :goto_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :try_start_2
    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v5, v5, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    invoke-interface {v4, v5}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOffRadio(Z)I
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 629
    :goto_1
    if-nez v3, :cond_5

    .line 631
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->isLocked()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v4, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    :cond_2
    :goto_2
    monitor-exit p0

    .line 603
    return-void

    .line 614
    :cond_3
    :try_start_4
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "off() : seek is working. So cancel seek."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->cancelSeek()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v3    # "returnCode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 625
    .restart local v3    # "returnCode":I
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "turnOffRadio() failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 623
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "turnOffRadio() failed."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 632
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_4
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->wait_lock()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 633
    :catch_2
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "off() InterruptedException ::"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 637
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    const-string/jumbo v4, "FMPlayerNative_brcm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "turnOffRadio() is failed. result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v4, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v4, :cond_6

    .line 639
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->finish()V

    .line 640
    :cond_6
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public offFMService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 645
    const/4 v1, 0x2

    .line 647
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 648
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "offFMService() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 654
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->offFMService()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 659
    :goto_0
    if-eqz v1, :cond_1

    .line 660
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offFMService() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_1
    sput-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    .line 665
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v2, v2, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v2, :cond_2

    .line 666
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->finish()V

    .line 667
    :cond_2
    sput-object v6, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    .line 644
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "offFMService() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public on()J
    .locals 2

    .prologue
    .line 587
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "on "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-direct {p0}, Lcom/android/server/FMPlayerNativeBRCM;->initValue()V

    .line 591
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->connectService()V

    .line 595
    :cond_0
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_1

    .line 596
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "on() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-wide/16 v0, 0x0

    return-wide v0

    .line 600
    :cond_1
    invoke-direct {p0}, Lcom/android/server/FMPlayerNativeBRCM;->turnOnRadio()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchAll()J
    .locals 14

    .prologue
    .line 835
    const-wide/16 v12, 0x0

    .line 837
    .local v12, "seekfreq":J
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 838
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-wide/16 v0, 0x0

    return-wide v0

    .line 842
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 844
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 846
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 848
    .local v9, "ChipVendor":I
    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    .line 849
    :try_start_0
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    long-to-int v1, v2

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    long-to-int v2, v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationCombo(IIIIIZII)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 858
    :goto_0
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    if-eqz v0, :cond_2

    .line 859
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    .line 861
    const-wide/16 v12, 0x0

    .line 862
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    .line 869
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 871
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

    .line 851
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    const/16 v2, 0x80

    invoke-interface {v0, v2, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStation(II)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    goto :goto_0

    .line 853
    :catch_0
    move-exception v10

    .line 854
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    .line 863
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    .line 864
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll() is finished."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1

    .line 867
    :cond_3
    sput-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1
.end method

.method public searchDown()J
    .locals 2

    .prologue
    .line 827
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    .prologue
    .line 831
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    return-wide v0
.end method

.method public seekDown()J
    .locals 14

    .prologue
    .line 748
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    .line 750
    .local v12, "seekfreq":J
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 751
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

    .line 755
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 757
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 759
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 762
    .local v9, "ChipVendor":I
    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    .line 763
    :try_start_0
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    long-to-int v1, v2

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    long-to-int v2, v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationCombo(IIIIIZII)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 772
    :goto_0
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    if-eqz v0, :cond_2

    .line 773
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    .line 790
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 792
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

    .line 765
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStation(II)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    goto :goto_0

    .line 767
    :catch_0
    move-exception v10

    .line 768
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    goto :goto_0

    .line 775
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_5

    .line 776
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    if-nez v0, :cond_4

    .line 777
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown():: applied auto rounding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    .line 779
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->seekDown()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long v12, v0, v2

    .line 780
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    .line 781
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->tune(J)V

    .line 782
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    goto :goto_1

    .line 784
    :cond_4
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    goto :goto_1

    .line 787
    :cond_5
    sput-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1
.end method

.method public seekUp()J
    .locals 14

    .prologue
    .line 700
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    .line 702
    .local v12, "seekfreq":J
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 703
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

    .line 707
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 709
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 711
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 714
    .local v9, "ChipVendor":I
    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    .line 715
    :try_start_0
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    long-to-int v1, v2

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    long-to-int v2, v2

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationCombo(IIIIIZII)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 724
    :goto_0
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    if-eqz v0, :cond_2

    .line 725
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    .line 742
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    .line 744
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

    .line 717
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    const/16 v2, 0x80

    invoke-interface {v0, v2, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStation(II)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    goto :goto_0

    .line 719
    :catch_0
    move-exception v10

    .line 720
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    .line 727
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_5

    .line 728
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    if-nez v0, :cond_4

    .line 729
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp():: applied auto rounding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    .line 731
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->seekUp()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long v12, v0, v2

    .line 732
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    .line 733
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->tune(J)V

    .line 734
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    goto :goto_1

    .line 736
    :cond_4
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_1

    .line 739
    :cond_5
    sput-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1
.end method

.method public setAFRMSSISamples(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1623
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setAFRMSSISamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1614
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setAFRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return-void
.end method

.method public setAFValid_th(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1389
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAFValid_th() AF_Tolerance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    .local v0, "sVal":Ljava/lang/String;
    const-string/jumbo v1, "service.brcm.fm.af_snrtolerance"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    .line 1388
    return-void
.end method

.method public setAF_th(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1370
    const-string/jumbo v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAF_th() AF="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, "sVal":Ljava/lang/String;
    const-string/jumbo v1, "service.brcm.fm.af_snrthresh"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    .line 1369
    return-void
.end method

.method public setAudioPath(I)V
    .locals 5
    .param p1, "audioPath"    # I

    .prologue
    .line 1204
    const/4 v1, 0x2

    .line 1206
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1207
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setAudioPath() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return-void

    .line 1213
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioPath(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1218
    :goto_0
    if-eqz v1, :cond_1

    .line 1219
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAudioPath() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_1
    return-void

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 10
    .param p1, "band"    # I

    .prologue
    const-wide/16 v8, 0x1db0

    const/4 v6, 0x3

    const/4 v3, 0x2

    const-wide/16 v4, 0x2a30

    const/4 v2, 0x1

    .line 1076
    if-ne p1, v2, :cond_0

    .line 1077
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    .line 1078
    const-wide/16 v2, 0x222e

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    .line 1079
    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    .line 1093
    :goto_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->mBand:I

    .line 1095
    const/4 v1, 0x2

    .line 1097
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_3

    .line 1098
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setBand() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void

    .line 1080
    .end local v1    # "returnCode":I
    :cond_0
    if-ne p1, v3, :cond_1

    .line 1081
    sput v6, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    .line 1082
    sput-wide v8, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    .line 1083
    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    .line 1084
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1085
    sput v3, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    .line 1086
    sput-wide v8, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    .line 1087
    const-wide/16 v2, 0x2328

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    .line 1089
    :cond_2
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    .line 1090
    const-wide/16 v2, 0x222e

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    .line 1091
    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    .line 1102
    .restart local v1    # "returnCode":I
    :cond_3
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1103
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBand() region="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_4
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setWorldRegion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1112
    :goto_1
    if-eqz v1, :cond_5

    .line 1113
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBand() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_5
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setBand() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setBlendRmssi(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1650
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setBlendRmssi() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    return-void
.end method

.method public setBlendSinr(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1659
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setBlendSinr() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    return-void
.end method

.method public setCFOTh12(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1587
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setCFOTh12() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 5
    .param p1, "spacing"    # I

    .prologue
    .line 1119
    const/4 v1, 0x2

    .line 1121
    .local v1, "returnCode":I
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    .line 1122
    const/4 p1, 0x0

    .line 1130
    :goto_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_2

    .line 1131
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setChannelSpacing() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void

    .line 1123
    :cond_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 1124
    const/16 p1, 0x10

    goto :goto_0

    .line 1128
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 1134
    :cond_2
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->mSpacing:I

    .line 1137
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setStepSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1142
    :goto_1
    if-eqz v1, :cond_3

    .line 1143
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setChannelSpacing() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_3
    return-void

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCnt_th(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1343
    const/4 v1, 0x2

    .line 1345
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCnt_th() COS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1348
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setCnt_th() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void

    .line 1352
    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    .line 1354
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setCOS(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1359
    :goto_0
    if-eqz v1, :cond_1

    .line 1360
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCnt_th() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_1
    return-void

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setCOS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDEConstant(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v4, 0x0

    .line 1235
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1236
    sput v4, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    .line 1243
    :goto_0
    const/4 v1, 0x2

    .line 1245
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_2

    .line 1246
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setDEConstant() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-void

    .line 1237
    .end local v1    # "returnCode":I
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1238
    const/16 v2, 0x40

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    goto :goto_0

    .line 1240
    :cond_1
    sput v4, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    goto :goto_0

    .line 1250
    .restart local v1    # "returnCode":I
    :cond_2
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1251
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDEConstant() : DEConstant = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_3
    sput-wide p1, Lcom/android/server/FMPlayerNativeBRCM;->mDEConstantVal:J

    .line 1255
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setDeemPhasis(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1260
    :goto_1
    if-eqz v1, :cond_4

    .line 1261
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDEConstant() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_4
    return-void

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setDeemPhasis() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setFMIntenna(Z)V
    .locals 5
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 1408
    const/4 v1, 0x2

    .line 1410
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFMIntenna() setFMIntenna="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1413
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFMIntenna() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    return-void

    .line 1418
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFMIntenna(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1423
    :goto_0
    if-eqz v1, :cond_1

    .line 1424
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFMIntenna() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_1
    return-void

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFMIntenna() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFrequencyOffsetThreshold(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1456
    const/4 v1, 0x2

    .line 1458
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFrequencyOffsetThreshold() Value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1461
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFrequencyOffsetThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    return-void

    .line 1465
    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->FrequencyOffset_th:I

    .line 1468
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFrequencyOffsetThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1473
    :goto_0
    if-eqz v1, :cond_1

    .line 1474
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFrequencyOffsetThreshold() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_1
    return-void

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFrequencyOffsetThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1632
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setGoodChannelRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1641
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setHybridSearch() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    return-void
.end method

.method public setIFCount1(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1689
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setIFCount1() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    return-void
.end method

.method public setIFCount2(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1692
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setIFCount2() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    return-void
.end method

.method public setMono()V
    .locals 5

    .prologue
    .line 1177
    const/4 v1, 0x2

    .line 1179
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1180
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    return-void

    .line 1184
    :cond_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1185
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1194
    :goto_0
    if-eqz v1, :cond_2

    .line 1195
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMono() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_2
    if-eqz v1, :cond_3

    .line 1199
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMono() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_3
    return-void

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNoisePowerThreshold(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1502
    const/4 v1, 0x2

    .line 1504
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNoisePowerThreshold() Value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1507
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setNoisePowerThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void

    .line 1511
    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->NoisePower_th:I

    .line 1514
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setNoisePowerThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1519
    :goto_0
    if-eqz v1, :cond_1

    .line 1520
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNoisePowerThreshold() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_1
    return-void

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setNoisePowerThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOffChannelThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1569
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setOffChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1560
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setOnChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    return-void
.end method

.method public setPilotPowerThreshold(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1479
    const/4 v1, 0x2

    .line 1481
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPilotPowerThreshold() Value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1484
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setPilotPowerThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    .line 1488
    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->PilotPower_th:I

    .line 1491
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPilotPowerThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1496
    :goto_0
    if-eqz v1, :cond_1

    .line 1497
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPilotPowerThreshold() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_1
    return-void

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setPilotPowerThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRMSSIFirstStage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1596
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setRMSSIFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return-void
.end method

.method public setRSSI_th(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1307
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRSSI_th() RSSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    .line 1306
    return-void
.end method

.method public setRecordMode(I)V
    .locals 0
    .param p1, "is_record"    # I

    .prologue
    .line 1227
    return-void
.end method

.method public setSINRFirstStage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1605
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void
.end method

.method public setSINRSamples(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1551
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRSamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void
.end method

.method public setSINRThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1578
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void
.end method

.method public setSNR_th(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1316
    const/4 v1, 0x2

    .line 1318
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSNR_th() SNR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1321
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSNR_th() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void

    .line 1325
    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    .line 1327
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setSnrThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1332
    :goto_0
    if-eqz v1, :cond_1

    .line 1333
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSNR_th() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_1
    return-void

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSnrThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanning(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1537
    const-string/jumbo v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return-void
.end method

.method public setSearchAlgoType(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1542
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSearchAlgoType() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return-void
.end method

.method public setSeekDC(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1670
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekDC() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return-void
.end method

.method public setSeekQA(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1679
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekQA() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return-void
.end method

.method public setSeekRSSI(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1299
    long-to-int v0, p1

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    .line 1298
    return-void
.end method

.method public setSeekSNR(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1303
    long-to-int v0, p1

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    .line 1302
    return-void
.end method

.method public setSoftMuteCoeff(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1698
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSoftMuteCoeff() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    return-void
.end method

.method public setSoftStereoBlendCoeff(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1695
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSoftStereoBlendCoeff() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-void
.end method

.method public setSoftmute(Z)V
    .locals 5
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 1429
    const/4 v1, 0x2

    .line 1431
    .local v1, "returnCode":I
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSoftmute() setSoftmute="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1434
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSoftmute() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void

    .line 1438
    :cond_0
    sput-boolean p1, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    .line 1440
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setRfMute(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1445
    :goto_0
    if-eqz v1, :cond_1

    .line 1446
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSoftmute() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_1
    return-void

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSpeakerOn(Z)V
    .locals 0
    .param p1, "setSpeakerOn"    # Z

    .prologue
    .line 1224
    return-void
.end method

.method public setStereo()V
    .locals 5

    .prologue
    .line 1149
    const/4 v1, 0x2

    .line 1151
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 1152
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return-void

    .line 1156
    :cond_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1157
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1166
    :goto_0
    if-eqz v1, :cond_2

    .line 1167
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStereo() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_2
    if-eqz v1, :cond_3

    .line 1171
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStereo() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_3
    return-void

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 7
    .param p1, "volume"    # J

    .prologue
    .line 876
    const/4 v1, 0x2

    .line 878
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 879
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return-void

    .line 883
    :cond_0
    monitor-enter p0

    .line 884
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    if-eqz v2, :cond_2

    .line 885
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVolume() vol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    long-to-int v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/FMPlayerVolumeTable;->ReadVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 894
    :try_start_1
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->ReadVolume(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFMVolume(I)I

    move-result v1

    .line 895
    sput-wide p1, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    :goto_1
    if-eqz v1, :cond_1

    .line 901
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVolume() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1
    return-void

    .line 887
    :cond_2
    :try_start_2
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() mVolumeTable is null. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v2, Lcom/android/server/FMPlayerVolumeTable;

    invoke-direct {v2}, Lcom/android/server/FMPlayerVolumeTable;-><init>()V

    sput-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public declared-synchronized tune(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    monitor-enter p0

    .line 671
    const/4 v1, 0x2

    .line 673
    .local v1, "returnCode":I
    :try_start_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 674
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tune :: freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 679
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tune() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 680
    return-void

    .line 676
    :cond_0
    :try_start_1
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tune "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 683
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    :try_start_3
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    long-to-int v3, p1

    div-int/lit8 v3, v3, 0xa

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->tuneRadio(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 691
    :goto_1
    if-nez v1, :cond_2

    .line 692
    const-wide/16 v2, 0xa

    :try_start_4
    div-long v2, p1, v2

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    .line 670
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 694
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tune() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized wait_lock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 108
    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    .line 110
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    .line 107
    return-void
.end method
