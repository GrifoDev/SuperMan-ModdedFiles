.class final Lcom/android/server/display/IpRemoteDisplayController;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/IpRemoteDisplayController$1;,
        Lcom/android/server/display/IpRemoteDisplayController$2;,
        Lcom/android/server/display/IpRemoteDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MIRRORLINK_RTSP_TIMEOUT_SECONDS:I = 0x5a

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "IpRemoteDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private mConnectState:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceUri:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectByUser:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mPrevNativeDisposeCompleted:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRequestPendingSetup:Z

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private final mSupportsProtectedBuffers:Z

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayOnSetting:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/display/IpRemoteDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDeviceUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDisconnectByUser:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDeviceUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDisconnectByUser:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/IpRemoteDisplayController;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->isApMirroring(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->sendEventToSemDisplayVolumeListener(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->disableWifiDisplay(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->sendEventToSemDeviceStatusListener(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/IpRemoteDisplayController$Listener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$1;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$1;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$2;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    new-instance v3, Landroid/media/WFDUibcManager;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$3;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/display/IpRemoteDisplayController$3;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const-string/jumbo v3, "low_power"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mSupportsProtectedBuffers:Z

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 17

    const-string/jumbo v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "advertiseDisplay = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " surface: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " display: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " flags: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/IpRemoteDisplayController;->sendEventToSemDeviceStatusListener(II)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_3

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v15, p6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$12;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    move/from16 v10, p6

    move/from16 v11, p5

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-direct/range {v2 .. v14}, Lcom/android/server/display/IpRemoteDisplayController$12;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIIIZII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v2, v0, :cond_2

    goto :goto_0
.end method

.method private computeFeatureState()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private disableWifiDisplay(I)V
    .locals 4

    const-string/jumbo v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableWifiDisplay currenct mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized disconnect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "Disconnect is called with disconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->sendEventToSemDeviceStatusListener(II)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnecting()V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "mRemoteDisplay.dispose() is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    :cond_2
    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "finish disconnect : exit synchronized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x14

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v2, "enableWifiDisplay mRemoteDisplay already existed."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableWifiDisplay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deviceType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v4, 0xc

    if-ne v0, v4, :cond_1

    const/16 v8, 0x5a

    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/server/display/IpRemoteDisplayController;->sendEventToSemDeviceStatusListener(II)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->isApMirroring(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDeviceUri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setUri(Ljava/lang/String;)V

    :cond_2
    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$8;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$8;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-static {v0, v2}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->start()Z

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEnable processing init option :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_4

    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestDataSetting(Lorg/json/JSONObject;I)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDIsplayInterface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", RTSP_TIMEOUT_SECONDS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$9;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$9;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    mul-int/lit16 v3, v8, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleConnectionFailure(Z)V
    .locals 4

    const-string/jumbo v1, "IpRemoteDisplayController"

    const-string/jumbo v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private isApMirroring(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchWfdPlayer(ILjava/net/InetAddress;)V
    .locals 3

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchWfdPlayer deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$10;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportFeatureState()V
    .locals 3

    const-string/jumbo v1, "IpRemoteDisplayController"

    const-string/jumbo v2, "reportFeatureState"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->computeFeatureState()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$11;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requestDataSetting(Lorg/json/JSONObject;I)V
    .locals 11

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDataSetting static : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p2, :sswitch_data_0

    const/16 v2, 0x3c0

    const/16 v3, 0x21c

    const/16 v4, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    :goto_0
    return-void

    :sswitch_0
    const/16 v2, 0x3c0

    const/16 v3, 0x21c

    const/16 v4, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x2d0

    const/16 v3, 0x1e0

    const/16 v4, 0x3c

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x780

    const/16 v3, 0x438

    const/16 v4, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x320

    const/16 v3, 0x1e0

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method private requestPopup(I)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.SHOW_WIFI_DISPLAY_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IpRemoteDisplayController"

    const-string/jumbo v3, "unable to start WfdBroker activity "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestScreenMirroringEnable(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "SSRM_STATUS_NAME"

    const-string/jumbo v2, "ScreenMirroring_enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "PackageName"

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendEventToSemDeviceStatusListener(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$13;-><init>(Lcom/android/server/display/IpRemoteDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendEventToSemDisplayVolumeListener(Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$14;-><init>(Lcom/android/server/display/IpRemoteDisplayController;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setParamData(Lorg/json/JSONObject;IIIZZIZZI)V
    .locals 4

    const-string/jumbo v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParamData deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "fps"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_audio"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "qoslevel"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_uibc"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_pdm"

    invoke-virtual {p1, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "device_type"

    invoke-virtual {p1, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "supportsProtectedBuffers"

    iget-boolean v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mSupportsProtectedBuffers:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pending_setup"

    iget-boolean v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    const/16 v1, 0xd

    if-ne p10, v1, :cond_1

    const-string/jumbo v1, "audio_only"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IpRemoteDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unadvertiseDisplay()V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiDisplayOnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplaySurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestPendingSetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWifiDisplayConfiguration key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->isDongleRenameAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 2

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .locals 2

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    return-void
.end method

.method public requestDisableWifiDisplay(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/IpRemoteDisplayController$7;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/IpRemoteDisplayController$6;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$4;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    iget-object v9, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$5;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p5

    move/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/IpRemoteDisplayController$5;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestPause()V
    .locals 2

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    :cond_1
    return-void
.end method

.method public requestResume()V
    .locals 2

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    :cond_1
    return-void
.end method

.method public setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 3

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiDisplayConfiguration key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/media/RemoteDisplay;->setParam(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
