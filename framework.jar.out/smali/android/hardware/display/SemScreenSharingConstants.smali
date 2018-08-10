.class public final Landroid/hardware/display/SemScreenSharingConstants;
.super Ljava/lang/Object;
.source "SemScreenSharingConstants.java"


# static fields
.field public static final CONNECTION_TYPE_CHROMECAST:Ljava/lang/String; = "gcast"

.field public static final CONNECTION_TYPE_DLNA:Ljava/lang/String; = "dlna"

.field public static final CONNECTION_TYPE_GOOGLE_CAST:Ljava/lang/String; = "gcast"

.field public static final CONNECTION_TYPE_MIRRORING:Ljava/lang/String; = "mirroring"

.field public static final FEATURE_ALL:I = 0x0

.field public static final FEATURE_DLNA:I = 0x2

.field public static final FEATURE_GOOGLE_CAST:I = 0x3

.field public static final FEATURE_MIRRORING:I = 0x1

.field public static final FEATURE_NOT_SUPPORT:I = -0x1

.field public static final KEY_CONFIGURATION_CURRENT_VOLUME_LEVEL:Ljava/lang/String; = "cuvo"

.field public static final KEY_CONFIGURATION_DISPLAY_ID:Ljava/lang/String; = "dpid"

.field public static final KEY_CONFIGURATION_FLOATING_PAUSE_RESUME:Ljava/lang/String; = "ftps"

.field public static final KEY_CONFIGURATION_IS_VOLUME_MUTE:Ljava/lang/String; = "muvo"

.field public static final KEY_CONFIGURATION_MAX_VOLUME_LEVEL:Ljava/lang/String; = "mivo"

.field public static final KEY_CONFIGURATION_MIN_VOLUME_LEVEL:Ljava/lang/String; = "mavo"

.field public static final KEY_CONFIGURATION_RESUME_VIDEO_ONLY:Ljava/lang/String; = "rvon"

.field public static final KEY_CONFIGURATION_SEND_VOLUME_KEY_EVENT:Ljava/lang/String; = "vkev"

.field public static final KEY_CONFIGURATION_SEND_VOLUME_MUTE_KEY_EVENT:Ljava/lang/String; = "mkev"

.field public static final KEY_CONFIGURATION_SET_DIRECT_STREAM_APP_LIST:Ljava/lang/String; = "dsal"

.field public static final KEY_CONFIGURATION_SET_DISPLAY_VOLUME:Ljava/lang/String; = "svol"

.field public static final KEY_CONFIGURATION_SET_DONGLE_NAME:Ljava/lang/String; = "res"

.field public static final KEY_CONFIGURATION_SET_FORCE_UDP:Ljava/lang/String; = "fudp"

.field public static final KEY_CONFIGURATION_SET_LOW_LATENCY_MODE:Ljava/lang/String; = "lowl"

.field public static final KEY_CONFIGURATION_SET_MAX_BITRATE:Ljava/lang/String; = "smb"

.field public static final KEY_CONFIGURATION_SET_MUTE:Ljava/lang/String; = "mute"

.field public static final KEY_CONFIGURATION_SET_REAL_DISPLAY_SIZE:Ljava/lang/String; = "dprs"

.field public static final KEY_CONFIGURATION_SET_VOLUME_FOR_TCP:Ljava/lang/String; = "vol"

.field public static final KEY_CONFIGURATION_SET_VOLUME_MUTE:Ljava/lang/String; = "smut"

.field public static final KEY_CONFIGURATION_SUPPORT_VOLUME_CONTROL:Ljava/lang/String; = "suvo"

.field public static final KEY_CONFIGURATION_UPGRADE:Ljava/lang/String; = "upgd"

.field public static final LOGGING_APP_ID:Ljava/lang/String; = "com.samsung.android.screenmirroring"

.field public static final LOGGING_DEVICE_TYPE_DLNA:Ljava/lang/String; = "DLNA"

.field public static final LOGGING_DEVICE_TYPE_GOOGLE_CAST:Ljava/lang/String; = "GCAST"

.field public static final LOGGING_DEVICE_TYPE_SCREEN_MIRRORING:Ljava/lang/String; = "SCR_MIR"

.field public static final LOGGING_DEVICE_TYPE_SCREEN_SHARING:Ljava/lang/String; = "SCR_SHA"

.field public static final LOGGING_FEATURE_CONNECT:Ljava/lang/String; = "CONN"

.field public static final LOGGING_FEATURE_CONNECT_TYPE:Ljava/lang/String; = "CNTP"

.field public static final LOGGING_FEATURE_DISCONNET:Ljava/lang/String; = "DCON"

.field public static final LOGGING_FEATURE_FLOATING_ICON:Ljava/lang/String; = "FCON"

.field public static final LOGGING_FEATURE_FLOATING_ICON_COUNT:Ljava/lang/String; = "FCNT"

.field public static final LOGGING_FEATURE_SEARCH_FOR_DEVICE:Ljava/lang/String; = "SDEV"

.field public static final LOGGING_FEATURE_STOP_AUTO_CONNECTION:Ljava/lang/String; = "STAC"

.field public static final LOGGING_FEATURE_USING_TIME:Ljava/lang/String; = "USTM"

.field public static final LOGGING_INTENT:Ljava/lang/String; = "com.sec.android.screensharing.LOGGING"

.field public static final LOGGING_TYPE_CHANGE_DEVICE:Ljava/lang/String; = "CHA_DEV"

.field public static final LOGGING_TYPE_FLOATING_ICON:Ljava/lang/String; = "FIC_ICON"

.field public static final LOGGING_TYPE_MOBILE_TO_TV:Ljava/lang/String; = "MOBILE_TO_TV"

.field public static final LOGGING_TYPE_MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final LOGGING_TYPE_QUICK_PANNEL:Ljava/lang/String; = "QIC_PAN"

.field public static final LOGGING_TYPE_QUICK_SETTING:Ljava/lang/String; = "QIC_SET"

.field public static final LOGGING_TYPE_SHARE_PANNEL:Ljava/lang/String; = "SHA_PAN"

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_MUSIC:I = 0x2

.field public static final TYPE_MUSIC_CHN:I = 0x3

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_VIDEO:I

.field public static final WFD_SERVICE_WITH_GOOGLE_CAST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x138e4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/hardware/display/SemScreenSharingConstants;->WFD_SERVICE_WITH_GOOGLE_CAST:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
