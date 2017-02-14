.class public Lcom/samsung/android/media/fmradio/SemFmPlayer;
.super Ljava/lang/Object;
.source "SemFmPlayer.java"


# static fields
.field public static final AUDIO_MODE_MONO:I = 0x8

.field public static final AUDIO_MODE_STEREO:I = 0x9

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FmPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkBusy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBusy()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/samsung/android/media/fmradio/SemFmPlayerScanningException;

    const-string/jumbo v3, "Player is scanning channel"

    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/media/fmradio/SemFmPlayerScanningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkOnStatus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;

    const-string/jumbo v2, "Player is not ON.Call on() method to start player"

    new-instance v3, Ljava/lang/Throwable;

    const-string/jumbo v4, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;

    const-string/jumbo v1, "Radio service is not running restart the phone."

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelAFSwitching()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelScan()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public cancelSeek()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public disableRadio()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->off()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public enableRadio()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isAirPlaneMode()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/media/fmradio/SemAirPlaneModeEnabledException;

    const-string/jumbo v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/media/fmradio/SemAirPlaneModeEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "factory"

    const-string/jumbo v4, "ro.factory.factory_binary"

    const-string/jumbo v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isTvOutPlugged()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/samsung/android/media/fmradio/SemTvOutConnectedException;

    const-string/jumbo v4, "TV out is on"

    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v6, "TV out is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/media/fmradio/SemTvOutConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/samsung/android/media/fmradio/SemHeadsetNotConnectedException;

    const-string/jumbo v4, "Headset is not presents."

    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v6, "Headset is not presents."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/media/fmradio/SemHeadsetNotConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isBatteryLow()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/samsung/android/media/fmradio/SemLowBatteryException;

    const-string/jumbo v4, "Battery is low."

    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v6, "Batterys is low."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/media/fmradio/SemLowBatteryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_1

    :cond_4
    return v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    return-void
.end method

.method public getCurrentChannel()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getLastScanResult()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    return-object v2
.end method

.method public getMaxVolume()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getMaxVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getPlayedFreq()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getPlayedFreq()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getTunningParameter(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    move v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getIntegerTunningParameter(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getTunningParameter(Ljava/lang/String;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    move-wide v2, p2

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLongTunningParameter(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    move-object v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getVolume()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public isAirPlaneMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isAlternateFrequencyEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAFEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isBatteryLow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isHeadsetPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isRadioDataSystemEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isRadioDomainNameSystemEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isDNSEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isRadioEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isScanning()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isScanning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isSeeking()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isSeeking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isSoftmuteEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getSoftMuteMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public isTvOutPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "FmPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public searchAll()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchAll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public searchDown()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public searchUp()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public seekDown()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public seekUp()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public setAlternateFrequencyEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableAF()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStereo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setMono()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setChannelSpacing(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setFMIntenna(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setFMIntenna(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setInternetStreamingEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setInternetStreamingMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setMuteEnabled(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method

.method public setRadioDataSystemEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableRDS()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRadioDomainNameSystemEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableDNS()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableDNS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRecordMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setRecordMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSoftmuteEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSoftmute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSpeakerEnabled(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting speakerOn = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->semSetRadioSpeakerOn(Z)V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semIsRadioSpeakerOn()Z

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setTunningParameter(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setIntegerTunningParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setTunningParameter(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setLongTunningParameter(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public startScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public tune(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v1, 0x0

    return v1
.end method
