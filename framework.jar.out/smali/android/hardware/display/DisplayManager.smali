.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$DisplayListener;,
        Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    }
.end annotation


# static fields
.field public static final ACTION_ROTATION_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.ROTATION_CHANGED"

.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field private static final BASE:I = 0x22000

.field public static final CONNECT_STATE_MULTI_ANGLE_RECORDER:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DISPLAY_CATEGORY_DEX_DUALVIEW:Ljava/lang/String; = "com.samsung.android.hardware.display.category.DEX_DUALVIEW"

.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final SEM_ACTION_DISMISS_WIFI_DISPLAY_POPUP:Ljava/lang/String; = "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

.field public static final SEM_ACTION_DLNA_STATUS_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.DLNA_STATUS_CHANGED"

.field public static final SEM_ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final SEM_ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final SEM_ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final SEM_ACTION_SET_SCREEN_RATIO_VALUE:Ljava/lang/String; = "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

.field public static final SEM_ACTION_SHOW_WIFI_DISPLAY_POPUP:Ljava/lang/String; = "com.samsung.intent.action.SHOW_WIFI_DISPLAY_POPUP"

.field public static final SEM_ACTION_WIFI_DISPLAY_FORCE_UDP:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_FORCE_UDP"

.field public static final SEM_ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final SEM_ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final SEM_ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field public static final SEM_CONNECT_STATE_AUDIO_ONLY:I = 0xd

.field public static final SEM_CONNECT_STATE_CHANGEPLAYER_GALLERY:I = 0x7

.field public static final SEM_CONNECT_STATE_CHANGEPLAYER_MUSIC:I = 0x8

.field public static final SEM_CONNECT_STATE_CHANGEPLAYER_VIDEO:I = 0x6

.field public static final SEM_CONNECT_STATE_FRIDGE:I = 0x5

.field public static final SEM_CONNECT_STATE_MIRROR_LINK:I = 0xc

.field public static final SEM_CONNECT_STATE_NFC:I = 0x9

.field public static final SEM_CONNECT_STATE_NORMAL:I = -0x1

.field public static final SEM_CONNECT_STATE_SCREEN_SHARING_AP:I = 0xa

.field public static final SEM_CONNECT_STATE_SCREEN_SHARING_P2P:I = 0xb

.field public static final SEM_CONNECT_STATE_SIDESYNC:I = 0x3

.field public static final SEM_CONNECT_STATE_TV_INITIATE_MIRRORING:I = 0xe

.field public static final SEM_EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final SEM_EXTRA_DLNA_PLAYER_TYPE:Ljava/lang/String; = "player_type"

.field public static final SEM_EXTRA_DLNA_STATUS:Ljava/lang/String; = "status"

.field public static final SEM_EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final SEM_EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final SEM_EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final SEM_FINISH_SIDESYNC_APP:Ljava/lang/String; = "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

.field public static final SEM_GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

.field public static final SEM_PARAM_KEY_MUTE:Ljava/lang/String; = "mute"

.field public static final SEM_PARAM_KEY_RESUME_AUDIO_ONLY:Ljava/lang/String; = "raon"

.field public static final SEM_PARAM_KEY_RESUME_VIDEO_ONLY:Ljava/lang/String; = "rvon"

.field public static final SEM_POPUP_TYPE_AIRPLANE_MODE_ON:I = 0x2208c

.field public static final SEM_POPUP_TYPE_ALERT_RESTART:I = 0x22073

.field public static final SEM_POPUP_TYPE_CONNECTING:I = 0x2208a

.field public static final SEM_POPUP_TYPE_CONNECTION_DISCONNECT:I = 0x2207b

.field public static final SEM_POPUP_TYPE_DONGLE_UPDATE:I = 0x22078

.field public static final SEM_POPUP_TYPE_EARPHONE_OR_BT_CONNECTED:I = 0x2208e

.field public static final SEM_POPUP_TYPE_HDMI_BUSY:I = 0x22074

.field public static final SEM_POPUP_TYPE_HOTSPOT_BUSY:I = 0x22075

.field public static final SEM_POPUP_TYPE_INVALID_HDCP_KEY:I = 0x22081

.field public static final SEM_POPUP_TYPE_LIMITED_PLAYBACK_ENABLED:I = 0x22086

.field public static final SEM_POPUP_TYPE_LIMITED_RECORDING_ENABLED:I = 0x22087

.field public static SEM_POPUP_TYPE_OXYGEN_NETWORK_ENABLED:I = 0x0

.field public static final SEM_POPUP_TYPE_P2P_BUSY:I = 0x22072

.field public static final SEM_POPUP_TYPE_POWER_SAVING_ENABLED_BEFORE_STARTING:I = 0x22088

.field public static final SEM_POPUP_TYPE_POWER_SAVING_ENABLED_ON_CONNECTION:I = 0x22084

.field public static final SEM_POPUP_TYPE_SCREEN_SHARING_SINK_RUNNING:I = 0x22091

.field public static final SEM_POPUP_TYPE_SIDESYNC_RUNNING:I = 0x22085

.field public static final SEM_POPUP_TYPE_TERMINATED:I = 0x22070

.field public static final SEM_PRESENTATION_START:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_START"

.field public static final SEM_WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final SEM_WIFI_DISPLAY_DETACH_BROKER:Ljava/lang/String; = "android.intent.action.DETACH_WFD_BROKER"

.field public static final SEM_WIFI_DISPLAY_NOT_ALLOWED:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

.field public static final SEM_WIFI_DISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final SEM_WIFI_DISPLAY_SINK_STATE:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

.field public static final SEM_WIFI_DISPLAY_SOURCE_STATE:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

.field public static final SEM_WIFI_DISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final SEM_WIFI_DISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final SS_WFD_SERVICE:Z = true

.field public static final SS_WFD_SERVICE_WITH_DLNA:Z = true

.field public static final SUPPORT_SCREEN_SHARING_READY:Z = false

.field public static final SUPPORT_WFD_SERVICE:Z = true

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field public static final VIRTUAL_DISPLAY_FLAG_ALLOCATE_HWC:I = 0x200000

.field public static final VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR:I = 0x10

.field public static final VIRTUAL_DISPLAY_FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY:I = 0x8

.field public static final VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final VIRTUAL_DISPLAY_FLAG_SHOW_IN_DEFAULT_DEVICE:I = 0x100

.field public static final VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH:I = 0x40

.field public static final VIRTUAL_DISPLAY_FLAG_VIRTUAL_SCREEN:I = 0x80

.field public static final VIRTUAL_DISPLAY_FLAG_VIRTUAL_SPACE:I = 0x200


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final mLock:Ljava/lang/Object;

.field private final mTempDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x22090

    sput v0, Landroid/hardware/display/DisplayManager;->SEM_POPUP_TYPE_OXYGEN_NETWORK_ENABLED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    return-void
.end method

.method private addAllDisplaysLocked(Ljava/util/ArrayList;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[I)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addShowInDefaultDeviceDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    .locals 4

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    if-nez v1, :cond_2

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    :goto_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkScreenSharingReadySupported()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;
    .locals 12

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public disconnectWifiDisplay()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    return-void
.end method

.method public enableWifiDisplay(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Landroid/hardware/display/SemDeviceInfo;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    const-string/jumbo v3, "remoteP2pMacAddr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    const-string/jumbo v3, "ipAddr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/SemDeviceInfo;->setIpAddress(Ljava/lang/String;)V

    const-string/jumbo v3, "remoteP2pMacAddr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/SemDeviceInfo;->setP2pMacAddress(Ljava/lang/String;)V

    const-string/jumbo v3, "deviceName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    const-string/jumbo v3, "isPendingRequest"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/SemDeviceInfo;->setPendingRequest(Z)V

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/SemDeviceInfo;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "DisplayManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceMaxVolume()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDeviceMaxVolume()I

    move-result v0

    return v0
.end method

.method public getDeviceMinVolume()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDeviceMinVolume()I

    move-result v0

    return v0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 4

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Landroid/hardware/display/DisplayManager;->addAllDisplaysLocked(Ljava/util/ArrayList;[I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_2
    const-string/jumbo v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public isAuSLServiceRunning()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/SecWifiDisplayUtil;->isAuSLServiceRunning(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceVolumeMuted()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isDeviceVolumeMuted()Z

    move-result v0

    return v0
.end method

.method public pauseWifiDisplay()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeWifiDisplay()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    return-void
.end method

.method public semCheckExceptionalCase()I
    .locals 2

    const-string/jumbo v0, "DisplayManager"

    const-string/jumbo v1, "semCheckExceptionalCase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/SecWifiDisplayUtil;->checkExceptionalCase(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public semCheckScreenSharingSupported()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    return-void
.end method

.method public semConnectDevice(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/hardware/display/SemDeviceInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    return-void
.end method

.method public semConnectWifiDisplay(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    invoke-virtual {v0, p2}, Landroid/hardware/display/SemDeviceInfo;->setP2pMacAddress(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    return-void
.end method

.method public semConnectWifiDisplay(ILjava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->addFlag(I)V

    invoke-virtual {v0, p3}, Landroid/hardware/display/SemDeviceInfo;->setPendingRequest(Z)V

    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Landroid/hardware/display/SemDeviceInfo;->setP2pMacAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    return-void

    :cond_1
    const/16 v1, 0xe

    if-ne p1, v1, :cond_0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->addFlag(I)V

    invoke-virtual {v0, p3}, Landroid/hardware/display/SemDeviceInfo;->setPendingRequest(Z)V

    goto :goto_0
.end method

.method public semConnectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    invoke-virtual {v0, p1}, Landroid/hardware/display/SemDeviceInfo;->setP2pMacAddress(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setPinRequest(Z)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    return-void
.end method

.method public semDisableWifiDisplay()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semDisconnectDevice()V

    return-void
.end method

.method public semDisconnectDevice()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectDevice()V

    return-void
.end method

.method public semDisconnectWifiDisplay()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    return-void
.end method

.method public semEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0, v2}, Landroid/hardware/display/SemDeviceInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    invoke-virtual {v0, p1}, Landroid/hardware/display/SemDeviceInfo;->setIpAddress(Ljava/lang/String;)V

    const-string/jumbo v1, "SideSync"

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xc

    if-ne p3, v1, :cond_0

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/hardware/display/SemDeviceInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    invoke-virtual {v0, p1}, Landroid/hardware/display/SemDeviceInfo;->setIpAddress(Ljava/lang/String;)V

    const-string/jumbo v1, "MirrorLink"

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/hardware/display/SemDeviceInfo;->setPort(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    goto :goto_0
.end method

.method public semEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/hardware/display/SemDeviceInfo;-><init>(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    const/16 v2, 0xe

    if-ne p3, v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/hardware/display/SemDeviceInfo;->addFlag(I)V

    :cond_0
    invoke-virtual {v0, p6}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/hardware/display/SemDeviceInfo;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Landroid/hardware/display/SemDeviceInfo;->setP2pMacAddress(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Landroid/hardware/display/SemDeviceInfo;->setPendingRequest(Z)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semConnectDevice(Landroid/hardware/display/SemDeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DisplayManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public semFitToActiveDisplay(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->fitToActiveDisplay(Z)V

    return-void
.end method

.method public semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v1

    :cond_1
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "semGetActiveDlnaDevice, deviceInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v3
.end method

.method public semGetActiveDlnaState()I
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v1

    return v1

    :cond_1
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "semGetActiveDlnaState, deviceInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public semGetDeviceStatus(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public semGetLastConnectedDevice(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;
    .locals 5

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedDevice()V

    :cond_0
    return-object v3

    :cond_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_2
    new-instance v1, Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/display/SemWifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public semGetLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public semGetLastConnectedGoogleCastDevice()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public semGetPresentationOwner(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetScreenSharingStatus()I
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semGetScreenSharingStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v1, 0x7

    return v1
.end method

.method public semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "muvo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->isDeviceVolumeMuted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "mivo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDeviceMaxVolume()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "mavo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDeviceMinVolume()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;
    .locals 2

    new-instance v0, Landroid/hardware/display/SemWifiDisplayStatus;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/display/SemWifiDisplayStatus;-><init>(Landroid/hardware/display/WifiDisplayStatus;)V

    return-object v0
.end method

.method public semIsDongleRenameSupported()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isDongleRenameSupported()Z

    move-result v0

    return v0
.end method

.method public semIsFitToActiveDisplay()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isFitToActiveDisplay()Z

    move-result v0

    return v0
.end method

.method public semIsFitToMobileScreen()Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public semIsSmartMirroringSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semIsWifiDisplayEngineRunning()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public semIsWifiDisplayVolumeControlSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semIsWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public semPauseWifiDisplay()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    return-void
.end method

.method public semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    return-void
.end method

.method public semRegisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    return-void
.end method

.method public semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    return-void
.end method

.method public semRemoveLastConnectedDlnaDevice()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedDevice()V

    return-void
.end method

.method public semRemoveLastConnectedGoogleCastDevice()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedDevice()V

    return-void
.end method

.method public semRemoveSavedDevice()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->removeLastConnectedDevice()V

    return-void
.end method

.method public semRenameDongle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->renameDongle(Ljava/lang/String;)V

    return-void
.end method

.method public semRenameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public semRestartWifiDisplay()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->restartWifiDisplay()V

    return-void
.end method

.method public semResumeWifiDisplay()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    return-void
.end method

.method public semSetActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 2

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/hardware/display/SemDeviceInfo;->setDlnaConnectionState(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaPlayerType(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaUid(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->addFlag(I)V

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semUpdateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V
    .locals 3

    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "For Debugging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActivityState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/hardware/display/SecWifiDisplayUtil;->setActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;Landroid/content/Context;)V

    return-void
.end method

.method public semSetAppListSupportingDirectStream(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setAppListSupportingDirectStream(Ljava/util/List;)V

    return-void
.end method

.method public semSetDeviceVolume(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDeviceVolume(I)V

    return-void
.end method

.method public semSetDeviceVolumeMuted(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDeviceVolumeMuted(Z)V

    return-void
.end method

.method public semSetExtendMode(Z)V
    .locals 0

    return-void
.end method

.method public semSetScanningChannel(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setScanningChannel(I)V

    return-void
.end method

.method public semSetScreenRatioValue(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semFitToActiveDisplay(Z)V

    return-void
.end method

.method public semSetScreenSharingStatus(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetScreenSharingStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semUpdateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V

    :cond_0
    return-void
.end method

.method public semSetWifiDisplayConfiguration(Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetWifiDisplayConfiguration key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vkev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->setVolumeKeyEvent(I)V

    return v3

    :cond_0
    const-string/jumbo v0, "svol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->semSetDeviceVolume(I)V

    return v3

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public semSetWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semSetWifiDisplayConfiguration(Ljava/lang/String;Z)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetWifiDisplayConfiguration key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "smut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->semSetDeviceVolumeMuted(Z)V

    return v3

    :cond_0
    const-string/jumbo v0, "mkev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->setVolumeKeyEvent(I)V

    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->setVolumeKeyEvent(I)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public semSetWifiDisplayRealSize(Landroid/graphics/Point;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setWifiDisplayRealSize(Ljava/lang/String;)V

    return-void
.end method

.method public semSetWifiDisplayVolume(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetDeviceVolume(I)V

    return-void
.end method

.method public semSetWifiDisplayVolumeMuted(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetDeviceVolumeMuted(Z)V

    return-void
.end method

.method public semStartScanWifiDisplays()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    return-void
.end method

.method public semStartScanWifiDisplays(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayChannelScan(I)V

    return-void
.end method

.method public semStopScanWifiDisplays()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    return-void
.end method

.method public semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    return-void
.end method

.method public semUnregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    return-void
.end method

.method public semUnregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V

    return-void
.end method

.method public semUpdateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V

    return-void
.end method

.method public setVolumeKeyEvent(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVolumeKeyEvent(I)V

    return-void
.end method

.method public startWifiDisplayScan()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    return-void
.end method

.method public stopWifiDisplayScan()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
