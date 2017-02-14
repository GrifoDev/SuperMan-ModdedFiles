.class public final Lcom/broadcom/fm/fmreceiver/FmProxy;
.super Ljava/lang/Object;
.source "FmProxy.java"


# static fields
.field public static final ACTION_ON_AUDIO_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

.field public static final ACTION_ON_AUDIO_PATH:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

.field public static final ACTION_ON_AUDIO_QUAL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

.field public static final ACTION_ON_EST_NFL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_EST_NFL"

.field public static final ACTION_ON_RDS_DATA:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

.field public static final ACTION_ON_RDS_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

.field public static final ACTION_ON_SEEK_CMPL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field public static final ACTION_ON_VOL:Ljava/lang/String; = "ON_VOL"

.field public static final ACTION_ON_WRLD_RGN:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

.field private static final ACTION_PREFIX_LENGTH:I

.field public static final AF_MODE_DEFAULT:I = 0x0

.field public static final AF_MODE_OFF:I = 0x0

.field public static final AF_MODE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_DIGITAL:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final AUDIO_QUALITY_BLEND:I = 0x4

.field public static final AUDIO_QUALITY_MONO:I = 0x2

.field public static final AUDIO_QUALITY_STEREO:I = 0x1

.field public static final DEEMPHASIS_50U:I = 0x0

.field public static final DEEMPHASIS_75U:I = 0x40

.field public static final DEEMPHASIS_TIME_DEFAULT:I = 0x40

.field public static final EXTRA_ALT_FREQ_MODE:Ljava/lang/String; = "ALT_FREQ_MODE"

.field public static final EXTRA_AUDIO_MODE:Ljava/lang/String; = "AUDIO_MODE"

.field public static final EXTRA_AUDIO_PATH:Ljava/lang/String; = "AUDIO_PATH"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_MUTED:Ljava/lang/String; = "MUTED"

.field public static final EXTRA_NFL:Ljava/lang/String; = "NFL"

.field public static final EXTRA_RADIO_ON:Ljava/lang/String; = "RADIO_ON"

.field public static final EXTRA_RDS_DATA_TYPE:Ljava/lang/String; = "RDS_DATA_TYPE"

.field public static final EXTRA_RDS_IDX:Ljava/lang/String; = "RDS_IDX"

.field public static final EXTRA_RDS_MODE:Ljava/lang/String; = "RDS_MODE"

.field public static final EXTRA_RDS_PRGM_SVC:Ljava/lang/String; = "RDS_PRGM_SVC"

.field public static final EXTRA_RDS_PRGM_TYPE:Ljava/lang/String; = "RDS_PRGM_TYPE"

.field public static final EXTRA_RDS_PRGM_TYPE_NAME:Ljava/lang/String; = "RDS_PRGM_TYPE_NAME"

.field public static final EXTRA_RDS_TXT:Ljava/lang/String; = "RDS_TXT"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_SNR:Ljava/lang/String; = "SNR"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "RDS_SUCCESS"

.field public static final EXTRA_VOL:Ljava/lang/String; = "VOL"

.field public static final EXTRA_WRLD_RGN:Ljava/lang/String; = "WRLD_RGN"

.field public static final FM_MAX_SNR_THRESHOLD:I = 0x1f

.field public static final FM_MIN_SNR_THRESHOLD:I = 0x0

.field public static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field public static final FM_VOLUME_MAX:I = 0xff

.field public static final FREQ_STEP_100KHZ:I = 0x0

.field public static final FREQ_STEP_50KHZ:I = 0x10

.field public static final FREQ_STEP_DEFAULT:I = 0x0

.field public static final FUNCTIONALITY_DEFAULT:I = 0x0

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_DEFAULT:I = 0x0

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_JP_II:I = 0x3

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final FUNC_SOFTMUTE:I = 0x100

.field public static final LIVE_AUDIO_QUALITY_DEFAULT:Z = false

.field public static final MIN_SIGNAL_STRENGTH_DEFAULT:I = 0x69

.field public static final NFL_DEFAULT:I = 0x1

.field public static final NFL_FINE:I = 0x2

.field public static final NFL_LOW:I = 0x0

.field public static final NFL_MED:I = 0x1

.field public static final RDS_COND_NONE:I = 0x0

.field public static final RDS_COND_PTY:I = 0x1

.field public static final RDS_COND_PTY_VAL:I = 0x0

.field public static final RDS_COND_TP:I = 0x2

.field public static final RDS_FEATURE_PS:I = 0x4

.field public static final RDS_FEATURE_PTY:I = 0x8

.field public static final RDS_FEATURE_PTYN:I = 0x20

.field public static final RDS_FEATURE_RT:I = 0x40

.field public static final RDS_FEATURE_TP:I = 0x10

.field public static final RDS_MODE_DEFAULT_ON:I = 0x1

.field public static final RDS_MODE_OFF:I = 0x0

.field public static final RDS_MODE_RBDS_ON:I = 0x3

.field public static final RDS_MODE_RDS_ON:I = 0x2

.field public static final SCAN_MODE_DOWN:I = 0x0

.field public static final SCAN_MODE_FAST:I = 0x1

.field public static final SCAN_MODE_FULL:I = 0x82

.field public static final SCAN_MODE_NORMAL:I = 0x0

.field public static final SCAN_MODE_UP:I = 0x80

.field public static final SIGNAL_POLL_INTERVAL_DEFAULT:I = 0x64

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x3

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FmProxy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/fm/fmreceiver/FmProxy;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
