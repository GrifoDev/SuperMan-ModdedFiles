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

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    const-wide/16 v4, 0x222e

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    const-wide/16 v4, 0x2a30

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->mBand:I

    const/16 v0, 0xa

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->mSpacing:I

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    sput-wide v6, Lcom/android/server/FMPlayerNativeBRCM;->mDEConstantVal:J

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J

    sput-wide v6, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    sput-wide v6, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->bIsNewConnection:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/FMPlayerNativeBase;-><init>(Lcom/android/server/FMRadioService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    new-instance v0, Lcom/android/server/FMPlayerNativeBRCM$1;

    invoke-direct {v0, p0}, Lcom/android/server/FMPlayerNativeBRCM$1;-><init>(Lcom/android/server/FMPlayerNativeBRCM;)V

    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mConnection:Landroid/content/ServiceConnection;

    sput-object p1, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {p1}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initValue()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "initValue "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    const/16 v0, 0x44

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->rdsFeatures:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    const/16 v0, 0x6f

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    const/16 v0, 0xa

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    const/16 v0, 0x8

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->getAF_th()I

    move-result v0

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->getAFValid_th()I

    move-result v0

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    new-instance v0, Lcom/android/server/FMPlayerVolumeTable;

    invoke-direct {v0}, Lcom/android/server/FMPlayerVolumeTable;-><init>()V

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    return-void
.end method

.method private setRdsMode(II)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setRdsMode() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-object v3, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->rdsFeatures:I

    sget v4, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    invoke-interface {v2, p1, v3, p2, v4}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setRegionalSetting()V
    .locals 4

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

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->mBand:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMPlayerNativeBRCM;->setBand(I)V

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->mSpacing:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMPlayerNativeBRCM;->setChannelSpacing(I)V

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->mDEConstantVal:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setDEConstant(J)V

    return-void
.end method

.method private setSignalSetting()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

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

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRSSI_th(I)V

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->FrequencyOffset_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setFrequencyOffsetThreshold(I)V

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->NoisePower_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setNoisePowerThreshold(I)V

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->PilotPower_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setPilotPowerThreshold(I)V

    :goto_0
    return-void

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

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRSSI_th(I)V

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setSNR_th(I)V

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    invoke-virtual {p0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setCnt_th(I)V

    goto :goto_0
.end method

.method private turnOnRadio()J
    .locals 12

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v5}, Lcom/android/server/FMRadioService;->isHeadsetPlugged()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "turnOnRadio() earphone disconnected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :cond_0
    const/4 v4, 0x2

    const-string/jumbo v5, "service.brcm.fm.start_mute"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "off"

    sget-object v6, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SOFTMUTE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "255"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() Softmute disable."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    :try_start_0
    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const-string/jumbo v6, "com.sec.android.app.fm"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/16 v7, 0x60

    invoke-interface {v5, v7, v6}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOnRadio(I[C)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    if-nez v4, :cond_7

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->isLocked()Z

    move-result v5

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->bIsNewConnection:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->wait_lock()V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->bIsNewConnection:Z

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0xf

    if-ge v3, v5, :cond_5

    sget-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v5, :cond_4

    return-wide v10

    :catch_0
    move-exception v1

    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "turnOnRadio() failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() Softmute enable."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    :try_start_2
    sget-object v5, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const-string/jumbo v6, "com.sec.android.app.fm"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/16 v7, 0x160

    invoke-interface {v5, v7, v6}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOnRadio(I[C)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "turnOnRadio() failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x14

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    if-nez v5, :cond_6

    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() FMRadio of driver side is offed !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    return-wide v8

    :catch_2
    move-exception v2

    const-string/jumbo v5, "FMPlayerNative_brcm"

    const-string/jumbo v6, "on() InterruptedException ::"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return-wide v10

    :cond_7
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

    return-wide v8
.end method


# virtual methods
.method public cancelAFSwitching()V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "cancelAFSwitching() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelSeek()V
    .locals 5

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "cancelSeek() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "cancelSeek() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    const/4 v1, 0x2

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationAbort()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "cancelSeek() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized connectService()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "connectService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "BluetoothAdapter is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_1

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/FMPlayerNativeBRCM;->mConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v7, 0x1

    invoke-virtual {v4, v3, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    :cond_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->isLocked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->wait_lock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "connectService() InterruptedException ::"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public disableAF()V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "disableAF() :: AF is already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    goto :goto_0
.end method

.method public disableDNS()V
    .locals 5

    const/4 v1, 0x2

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "disableDNS() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "disableDNS() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPiEccMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "disableDNS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableRDS()V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "disableRDS() :: RDS is already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    goto :goto_0
.end method

.method public declared-synchronized disconnectService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "disconnectService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableAF()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "enableAF() :: AF is already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->af_mode:I

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    goto :goto_0
.end method

.method public enableDNS()V
    .locals 5

    const/4 v1, 0x2

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "enableDNS() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "enableDNS() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPiEccMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "enableDNS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableRDS()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "enableRDS() :: RDS is already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->rds_mode:I

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNativeBRCM;->setRdsMode(II)V

    :goto_0
    return-void

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

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/server/FMPlayerNativeBase;->finalize()V

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->disconnectService()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAFRMSSISamples()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getAFRMSSISamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getAFRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAFValid_th()I
    .locals 3

    const-string/jumbo v1, "service.brcm.fm.af_snrtolerance"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_AFVALID_THRESH"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    return v1
.end method

.method public getAF_th()I
    .locals 3

    const-string/jumbo v1, "service.brcm.fm.af_snrthresh"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_AF_THRESH"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    sget v1, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    return v1
.end method

.method public getBlendRmssi()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getBlendRmssi() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getBlendSinr()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getBlendSinr() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getCFOTh12()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getCFOTh12() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getCnt_th()I
    .locals 1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    return v0
.end method

.method public getCurrentChannel()J
    .locals 4

    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v0, :cond_0

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

    :cond_0
    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 6

    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentRSSI() mBcomService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    return-wide v2

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

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_rssi:J

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentRSSI() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentSNR()J
    .locals 6

    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentSNR() mBcomService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    return-wide v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->getCurrentSNR()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

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

    sget-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->current_snr:J

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "getCurrentSNR() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDeSenseList()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getDeSenseList() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFakeChannel()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getFakeChannel() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrequencyOffsetThreshold()I
    .locals 1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->FrequencyOffset_th:I

    return v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getGoodChannelRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getHybridSearch() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxVolume()J
    .locals 2

    const-wide/16 v0, 0xf

    return-wide v0
.end method

.method public getNoisePowerThreshold()I
    .locals 1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->NoisePower_th:I

    return v0
.end method

.method public getOffChannelThreshold()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getOffChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getOnChannelThreshold()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getOnChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPilotPowerThreshold()I
    .locals 1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->PilotPower_th:I

    return v0
.end method

.method public getRMSSIFirstStage()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getRMSSIFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getRSSI_th()I
    .locals 1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    return v0
.end method

.method public getSINRFirstStage()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSINRFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSINRSamples()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSINRSamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSINRThreshold()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSINRThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSNR_th()I
    .locals 1

    sget v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    return v0
.end method

.method public getSearchAlgoType()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSearchAlgoType() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSeekDC()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSeekDC() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getSeekQA()I
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "getSeekQA() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    return v0
.end method

.method public getVolume()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J

    return-wide v0
.end method

.method protected initService(Landroid/os/IBinder;)Z
    .locals 3

    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "initService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    move-result-object v1

    sput-object v1, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FMPlayerNative_brcm"

    const-string/jumbo v2, "Unable to initialize BluetoothFM proxy with service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized isLocked()Z
    .locals 3

    monitor-enter p0

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

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public muteOn()V
    .locals 5

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

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

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized off()V
    .locals 7

    monitor-enter p0

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

    const/4 v3, 0x2

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v4, :cond_0

    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "off() mBcomService is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v4, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "off() : seek is working. So cancel seek."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->cancelSeek()V

    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    :goto_0
    if-nez v3, :cond_3

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->isLocked()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v4, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->wait_lock()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "turnOffRadio() failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "turnOffRadio() failed."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v4, "FMPlayerNative_brcm"

    const-string/jumbo v5, "off() InterruptedException ::"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
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

    sget-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v4, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->finish()V

    :cond_4
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public offFMService()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "offFMService() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->offFMService()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    sput-boolean v5, Lcom/android/server/FMPlayerNativeBRCM;->IsEnabled:Z

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v2, v2, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->finish()V

    :cond_2
    sput-object v6, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "offFMService() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public on()J
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "on "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/FMPlayerNativeBRCM;->initValue()V

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->connectService()V

    :cond_0
    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_1

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "on() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/FMPlayerNativeBRCM;->turnOnRadio()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchAll()J
    .locals 14

    const-wide/16 v12, 0x0

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

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

    :goto_0
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    const-wide/16 v12, 0x0

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

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

    :catch_0
    move-exception v10

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll() is finished."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1

    :cond_3
    sput-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1
.end method

.method public searchDown()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    return-wide v0
.end method

.method public seekDown()J
    .locals 14

    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

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

    :goto_0
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

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

    :catch_0
    move-exception v10

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown():: applied auto rounding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->seekDown()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long v12, v0, v2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->tune(J)V

    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    goto :goto_1

    :cond_4
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    goto :goto_1

    :cond_5
    sput-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1
.end method

.method public seekUp()J
    .locals 14

    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    sget-object v0, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

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

    :goto_0
    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsCancel:Z

    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsWorking:Z

    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    return-wide v0

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

    :catch_0
    move-exception v10

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp():: applied auto rounding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->seekUp()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long v12, v0, v2

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    sget-wide v0, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNativeBRCM;->tune(J)V

    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNativeBRCM;->SeekIsRounding:Z

    goto :goto_1

    :cond_4
    sget-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_1

    :cond_5
    sput-wide v12, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J

    goto :goto_1
.end method

.method public setAFRMSSISamples(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setAFRMSSISamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setAFRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAFValid_th(I)V
    .locals 4

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "service.brcm.fm.af_snrtolerance"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->AF_TOLERANCE:I

    return-void
.end method

.method public setAF_th(I)V
    .locals 4

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "service.brcm.fm.af_snrthresh"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->AF_THRESHOLD:I

    return-void
.end method

.method public setATJ(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setATJ() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioPath(I)V
    .locals 5

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setAudioPath() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioPath(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 10

    const-wide/16 v8, 0x1db0

    const/4 v6, 0x3

    const/4 v3, 0x2

    const-wide/16 v4, 0x2a30

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    const-wide/16 v2, 0x222e

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    :goto_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->mBand:I

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_3

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setBand() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    sput v6, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    sput-wide v8, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    sput v3, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    sput-wide v8, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    const-wide/16 v2, 0x2328

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    :cond_2
    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    const-wide/16 v2, 0x222e

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->Min_Channel:J

    sput-wide v4, Lcom/android/server/FMPlayerNativeBRCM;->Max_Channel:J

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_4

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

    :cond_4
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->region:I

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setWorldRegion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

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

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setBand() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setBlendPAMD_th(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "SetBlendPAMD_th() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlendRSSI_th(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "SetBlendRSSI_th() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlendRmssi(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setBlendRmssi() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlendSinr(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setBlendSinr() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCFOTh12(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setCFOTh12() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 5

    const/4 v1, 0x2

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_2

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setChannelSpacing() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    const/16 p1, 0x10

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->mSpacing:I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setStepSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

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

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCnt_th(I)V
    .locals 5

    const/4 v1, 0x2

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

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setCnt_th() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->COS:I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setCOS(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setCOS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDEConstant(J)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    sput v4, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    :goto_0
    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_2

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setDEConstant() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x40

    sput v2, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    goto :goto_0

    :cond_1
    sput v4, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_3

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

    :cond_3
    sput-wide p1, Lcom/android/server/FMPlayerNativeBRCM;->mDEConstantVal:J

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNativeBRCM;->DEConstant:I

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setDeemPhasis(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

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

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setDeemPhasis() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setDeSenseList(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setDeSenseList() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 5

    const/4 v1, 0x2

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

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFMIntenna() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFMIntenna(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFMIntenna() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFakeChannel(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setFakeChannel() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFrequencyOffsetThreshold(I)V
    .locals 5

    const/4 v1, 0x2

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

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFrequencyOffsetThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->FrequencyOffset_th:I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFrequencyOffsetThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFrequencyOffsetThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setGoodChannelRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setHybridSearch() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIFCount1(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setIFCount1() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIFCount2(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setIFCount2() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMono()V
    .locals 5

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

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

    :cond_2
    if-eqz v1, :cond_3

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

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNoisePowerThreshold(I)V
    .locals 5

    const/4 v1, 0x2

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

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setNoisePowerThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->NoisePower_th:I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setNoisePowerThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setNoisePowerThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOffChannelThreshold(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setOffChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnChannelThreshold(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setOnChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPilotPowerThreshold(I)V
    .locals 5

    const/4 v1, 0x2

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

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setPilotPowerThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->PilotPower_th:I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPilotPowerThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setPilotPowerThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRMSSIFirstStage(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setRMSSIFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRSSI_th(I)V
    .locals 3

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

    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    return-void
.end method

.method public setRecordMode(I)V
    .locals 0

    return-void
.end method

.method public setSINRFirstStage(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSINRSamples(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRSamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSINRThreshold(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSNR_th(I)V
    .locals 5

    const/4 v1, 0x2

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

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSNR_th() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput p1, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setSnrThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSnrThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanning(Z)V
    .locals 3

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

    return-void
.end method

.method public setSearchAlgoType(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSearchAlgoType() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSeekDC(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekDC() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSeekDesenseRSSI(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekDesenseRSSI() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSeekQA(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekQA() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSeekRSSI(J)V
    .locals 1

    long-to-int v0, p1

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_th:I

    return-void
.end method

.method public setSeekSMG(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekSMG() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSeekSNR(J)V
    .locals 1

    long-to-int v0, p1

    sput v0, Lcom/android/server/FMPlayerNativeBRCM;->RSSI_SNR:I

    return-void
.end method

.method public setSoftMuteCoeff(J)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSoftMuteCoeff() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSoftStereoBlendCoeff(J)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSoftStereoBlendCoeff() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSoftStereoBlendRef(J)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSoftStereoBlendRef() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSoftmute(Z)V
    .locals 5

    const/4 v1, 0x2

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

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSoftmute() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/server/FMPlayerNativeBRCM;->IsSoftmute:Z

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setRfMute(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSoftmute_th(I)V
    .locals 2

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "SetSoftmute_th() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 0

    return-void
.end method

.method public setStereo()V
    .locals 5

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

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

    :cond_2
    if-eqz v1, :cond_3

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

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 7

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    if-eqz v2, :cond_2

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

    :try_start_1
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v3, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->ReadVolume(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFMVolume(I)I

    move-result v1

    sput-wide p1, Lcom/android/server/FMPlayerNativeBRCM;->settedVol:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz v1, :cond_1

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

    :cond_1
    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() mVolumeTable is null. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/FMPlayerVolumeTable;

    invoke-direct {v2}, Lcom/android/server/FMPlayerVolumeTable;-><init>()V

    sput-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public declared-synchronized tune(J)V
    .locals 5

    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    sget-boolean v2, Lcom/android/server/FMPlayerNativeBRCM;->DEBUG:Z

    if-eqz v2, :cond_0

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

    :goto_0
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tune() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

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

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/android/server/FMPlayerNativeBRCM;->RDSdata:Lcom/android/server/FMPlayerNativeBase$RDSData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v2, Lcom/android/server/FMPlayerNativeBRCM;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    long-to-int v3, p1

    div-int/lit8 v3, v3, 0xa

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->tuneRadio(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    const-wide/16 v2, 0xa

    :try_start_4
    div-long v2, p1, v2

    sput-wide v2, Lcom/android/server/FMPlayerNativeBRCM;->tuned_freq:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

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

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/FMPlayerNativeBRCM;->mLocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNativeBRCM;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method
