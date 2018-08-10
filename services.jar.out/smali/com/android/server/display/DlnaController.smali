.class public final Lcom/android/server/display/DlnaController;
.super Ljava/lang/Object;
.source "DlnaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    }
.end annotation


# static fields
.field private static final MAX_VOLUME:I = 0x64

.field private static final MIN_VOLUME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DlnaController"


# instance fields
.field private mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

.field private mContext:Landroid/content/Context;

.field private mControllerUtils:Lcom/android/server/display/ControllerUtils;

.field private mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

.field private mDlnaVolume:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDlnaVolumeMuted:Z

.field private mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DlnaController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaDevice;)Lcom/android/server/display/DlnaDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/DlnaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    new-instance v0, Lcom/android/server/display/ControllerUtils;

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/display/ControllerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    return-void
.end method

.method private createDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)Lcom/android/server/display/DlnaDevice;
    .locals 3

    new-instance v0, Lcom/android/server/display/DlnaDevice;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DlnaDevice;->setConnectionState(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DlnaDevice;->setPlayerType(I)V

    return-object v0
.end method

.method private createSemDeviceInfo(Lcom/android/server/display/DlnaDevice;)Landroid/hardware/display/SemDeviceInfo;
    .locals 3

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/display/SemDeviceInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaConnectionState(I)V

    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaPlayerType(I)V

    return-object v0
.end method

.method private handleSendStatusChangeBroadcast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DlnaController$3;-><init>(Lcom/android/server/display/DlnaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DlnaController$2;-><init>(Lcom/android/server/display/DlnaController;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-direct {p0, v0}, Lcom/android/server/display/DlnaController;->createSemDeviceInfo(Lcom/android/server/display/DlnaDevice;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMaxVolume()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getDeviceMinVolume()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->getLastConnectedDlnaDevice()Lcom/android/server/display/DlnaDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/DlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/display/DlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/display/DlnaDevice;->getConnectionState()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaConnectionState(I)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DlnaDevice;->getConnectionState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceVolumeMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    return v0
.end method

.method public sendDeviceVolumeKeyEvent(I)V
    .locals 3

    const-string/jumbo v0, "DlnaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceVolumeKeyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-virtual {v2, p1}, Lcom/android/server/display/ControllerUtils;->keyEventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DlnaController$1;-><init>(Lcom/android/server/display/DlnaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 4

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    iput-boolean v2, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "minVol"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "maxVol"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "curVol"

    iget v2, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "isMute"

    iget-boolean v2, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DlnaController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    const-string/jumbo v1, "DlnaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceVolume : volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDeviceVolumeMuted(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "minVol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "maxVol"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "curVol"

    iget v2, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "isMute"

    iget-boolean v2, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DlnaController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    const-string/jumbo v1, "DlnaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceVolumeMuted :  muted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->createDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)Lcom/android/server/display/DlnaDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->setLastConnectedDlnaDevice(Lcom/android/server/display/DlnaDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_0
    return-void
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;-><init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "DlnaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceState : CONNECTED, device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->createDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)Lcom/android/server/display/DlnaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DlnaController;->setLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "DlnaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceState : NOT_CONNECTED, device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
