.class public Lcom/android/incallui/secrcs/RcsShareUI;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Lcom/android/incallui/secrcs/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;,
        Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;,
        Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;,
        Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    }
.end annotation


# static fields
.field private static final ACTION_MENU_CHANGE:Ljava/lang/String; = "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

.field public static final ACTION_MUTE_UPDATE:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_UPDATE"

.field public static final ACTION_SEND_NUMBER_TOKEN:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.NUMBER_TOKEN"

.field public static final ACTION_SPEAKER_UPDATE:Ljava/lang/String; = "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

.field private static final ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

.field private static final ADDINFO_NONE:Ljava/lang/String; = ""

.field private static final ADDINFO_REMOTE_OFFLINE:Ljava/lang/String;

.field private static final ADDINFO_SEPARATOR:Ljava/lang/String; = ";"

.field private static final ADDITIONAL_INFO:Ljava/lang/String; = "additional_info"

.field private static final ADDITIONAL_INFO_LOCAL_OFFLINE:Ljava/lang/String; = "local_offline;"

.field private static final ADDITIONAL_INFO_NONE:Ljava/lang/String; = ""

.field private static final ADDITIONAL_INFO_REMOTE_OFFLINE:Ljava/lang/String; = "remote_offline;"

.field private static final ADDITIONAL_INFO_REMOTE_ONLINE:Ljava/lang/String; = "fresh;"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field public static final AUTOCONFIGURATIONAUTHORITY:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field private static final AUTO_CONFIGURATION_URI:Landroid/net/Uri;

.field public static final AUTO_CONFIGURATION_URI_CRANE:Landroid/net/Uri;

.field private static final BEEP_SOUND:Ljava/lang/String; = "android.resource://com.sec.android.app.clockpackage/raw/alert_on_call"

.field public static final CAPABILITY_CRANE:Ljava/lang/String; = "gsma.callcomposer"

.field public static final CATEGORY_NUMBER_TOKEN:Ljava/lang/String; = "com.samsung.rcs.number.category.ACTION"

.field public static final COL_RCS_ENABLED:Ljava/lang/String; = "rcs_enabled"

.field private static final CRANE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.crane"

.field private static final CSH_ACTIVITY_NAME:Ljava/lang/String; = "com.samsung.rcs.share.ContentShareActivity"

.field private static final EXTRA_RCS_TOAST:Ljava/lang/String; = "com.samsung.rcs.intent.extra.RCS_TOAST_MESSAGE"

.field private static final FT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

.field private static final FT_HTTP:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft_http\""

.field private static final FT_IN_GROUP_CHAT:Ljava/lang/String; = "ft-in-group-chat"

.field private static final IM:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

.field private static final INT_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.joyn.intmsg\""

.field public static final IS_MUTE_ON:Ljava/lang/String; = "is_mute_on"

.field public static final IS_SPEAKER_ON:Ljava/lang/String; = "is_speaker_on"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_TASK:I = 0x3e8

.field private static final OVERLAY_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.crane.contentshare.ShareOverlayService"

.field private static final PAUSE:C = ','

.field public static final RCS_CAPA_OBSERVER:I = 0x2

.field public static final RCS_CONTENT_OBSERVER:I = 0x1

.field public static final RCS_SESSION_OBSERVER:I = 0x5

.field public static final RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

.field private static final RCS_TOAST:Ljava/lang/String; = "com.samsung.rcs.intent.action.RCS_TOAST"

.field public static final REGISTER:I = 0x3

.field private static final SHARING_DIALOG_ACTIVITY_NAME:Ljava/lang/String; = "com.samsung.rcs.share.RcsSharingServiceListDialog"

.field public static final UNREGISTER:I = 0x4

.field private static final WAIT:C = ';'

.field private static final WILD:C = 'N'

.field private static c:Landroid/database/Cursor;

.field public static is2G:Z

.field public static isBB:Z

.field public static isCrane:Z

.field public static isCraneOnlineRemote:Z

.field public static isCraneOnlineSelf:Z

.field public static isCraneRemote:Z

.field public static isCraneSelf:Z

.field public static isRcsSwtich:Z

.field public static isSketchRemote:Z

.field private static mAddCallButton:Landroid/widget/Button;

.field private static mBluetoothButton:Landroid/widget/ToggleButton;

.field public static mContext:Landroid/content/Context;

.field public static mHasRcsServices:Z

.field public static mIsActiveCall:Z

.field public static mIsCallPlusAvailable:Z

.field public static mIsConference:Z

.field public static mIsExtraVolumeAvailable:Z

.field public static mIsSelfCapable:Z

.field private static mNoShowVolumeAvailable:Z

.field private static mPromotedButton:Landroid/widget/Button;

.field private static mPromotedButtonStub:Landroid/view/ViewStub;

.field private static mShareButton:Landroid/widget/Button;

.field private static mShareButtonStub:Landroid/view/ViewStub;

.field private static mUltraPowerMode:Z

.field public static rcsEnableObserver:Landroid/database/ContentObserver;

.field private static sMe:Lcom/android/incallui/secrcs/RcsShareUI;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private isVSHEnable:I

.field private mBatteryLevel:I

.field private mCall:Lcom/android/incallui/Call;

.field private mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

.field private mImsServiceDeregistered:Z

.field private mIncomingDialog:Landroid/app/Dialog;

.field private mIncomingInvitationDialog:Landroid/app/AlertDialog;

.field private mIsHold:Z

.field private mIsISHButtonAvailable:Z

.field private mIsOwnFtCapable:Z

.field private mIsOwnIshCapable:Z

.field private mIsOwnVshCapable:Z

.field private mIsVSHButtonAvailable:Z

.field private mIsWebExEnabled:Z

.field private mMaxImageSize:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mPromotedService:Z

.field private mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

.field private mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

.field private mTwoWayShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    const-class v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    .line 86
    const-string v0, "remote_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_REMOTE_OFFLINE:Ljava/lang/String;

    .line 87
    const-string v0, "local_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    .line 94
    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    .line 106
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    .line 109
    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    .line 111
    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI_CRANE:Landroid/net/Uri;

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    .line 148
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    .line 149
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    .line 159
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    .line 160
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 161
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isSketchRemote:Z

    .line 162
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 163
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 164
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->is2G:Z

    .line 168
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    .line 169
    sput-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    .line 170
    sput-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1955
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$7;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->rcsEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    .line 124
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 127
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    .line 129
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 130
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 150
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    .line 167
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    .line 1992
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/incallui/Call;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1200()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 64
    sput-object p0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/media/SoundPool;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->releaseSoundPool(Landroid/media/SoundPool;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/incallui/secrcs/RcsShareUI;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/ViewStub;
    .param p3, "x3"    # Landroid/widget/Button;
    .param p4, "x4"    # Landroid/database/Cursor;
    .param p5, "x5"    # Z

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/secrcs/RcsShareUI;->setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$700()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/ViewStub;
    .param p3, "x3"    # Landroid/widget/Button;
    .param p4, "x4"    # Landroid/database/Cursor;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V

    return-void
.end method

.method private addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1301
    const/4 v2, 0x0

    .line 1302
    .local v2, "isSpeakerOn":Z
    const/4 v1, 0x0

    .line 1303
    .local v1, "isBluetoothOn":Z
    const/4 v0, 0x0

    .line 1305
    .local v0, "isBluetoothAvailable":Z
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1306
    const/4 v2, 0x1

    .line 1310
    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1311
    const/4 v1, 0x1

    .line 1314
    :goto_1
    const/4 v0, 0x1

    .line 1316
    const-string v3, "contactNumber"

    invoke-static {p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    const-string v3, "contactName"

    invoke-static {p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    const-string v3, "contactLabel"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1319
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1321
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1322
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1325
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1329
    return-void

    .line 1308
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1313
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static applyCallPlus()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 761
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyCallPlus mShare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &&mBluetoothButton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 762
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 763
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 766
    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v0, :cond_2

    .line 767
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 768
    :cond_2
    return-void
.end method

.method public static applyNonCallPlus()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 772
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyNonCallPlus mShare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && mBluetoothButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 773
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v0, :cond_2

    .line 774
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 775
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 776
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 777
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 787
    :cond_1
    :goto_0
    return-void

    .line 780
    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 781
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 782
    :cond_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 784
    :cond_4
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v0, :cond_1

    .line 785
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkOwnCapability()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1995
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1996
    const-string v2, "Context is null return : "

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2034
    :goto_0
    return-void

    .line 1999
    :cond_0
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->getComposerAuth(Landroid/content/Context;)I

    .line 2000
    new-instance v2, Lcom/sec/ims/options/CapabilityManager;

    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    .line 2001
    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v2, :cond_1

    .line 2002
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 2003
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    goto :goto_0

    .line 2008
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v2}, Lcom/sec/ims/options/CapabilityManager;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 2009
    .local v0, "cap":Lcom/sec/ims/options/Capabilities;
    if-nez v0, :cond_2

    .line 2010
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 2011
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2028
    .end local v0    # "cap":Lcom/sec/ims/options/Capabilities;
    :catch_0
    move-exception v1

    .line 2029
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "checkOwnCapability - error"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2032
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCraneSelf -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCraneOnlineSelf -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2015
    .restart local v0    # "cap":Lcom/sec/ims/options/Capabilities;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Own cap - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v4, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2016
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2017
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 2018
    const-string v2, "checkOwnCapability - true"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2019
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2020
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    goto :goto_1

    .line 2022
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    goto :goto_1

    .line 2024
    :cond_4
    const-string v2, "checkOwnCapability - false"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 2026
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 802
    if-nez p1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-object v1

    .line 805
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 806
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 807
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 808
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCapabilityByNumber(Lcom/sec/ims/options/CapabilityManager;Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .param p0, "capabilityManager"    # Lcom/sec/ims/options/CapabilityManager;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I

    .prologue
    .line 2093
    if-eqz p0, :cond_0

    .line 2095
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/options/CapabilityManager;->getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2100
    :goto_0
    return-object v1

    .line 2096
    :catch_0
    move-exception v0

    .line 2097
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2100
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getComposerAuth(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 366
    const/4 v7, -0x1

    .line 367
    .local v7, "craneavailable":I
    const/4 v8, 0x0

    .line 369
    .local v8, "cursorbrand":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI_CRANE:Landroid/net/Uri;

    const-string v2, "root/application/1/services/composerauth"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 371
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isauth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    if-eqz v8, :cond_1

    .line 374
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursorbrand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, "boolStr":Ljava/lang/String;
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursorbrand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    if-eqz v6, :cond_3

    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    const/4 v7, 0x1

    .line 380
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    .line 381
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    .end local v6    # "boolStr":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "craneavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 398
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCrane: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isBB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    return v7

    .line 383
    .restart local v6    # "boolStr":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    .end local v6    # "boolStr":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 390
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoConfiguration Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    .line 392
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    if-eqz v8, :cond_2

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 386
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getInstance()Lcom/android/incallui/secrcs/RcsShareUI;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {v0}, Lcom/android/incallui/secrcs/RcsShareUI;-><init>()V

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    .line 176
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    return-object v0
.end method

.method private getMaxImageSize(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    const/4 v8, -0x1

    .line 405
    .local v8, "maxsize":I
    const/4 v6, 0x0

    .line 407
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    const-string v2, "root/application/0/ext/maxsizeimageshare"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "root/application/0/ext/maxsizeimageshare"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 415
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISH maxsize return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return v8

    .line 412
    :catch_0
    move-exception v7

    .line 413
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoConfiguration Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 790
    if-nez p1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-object v1

    .line 793
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 794
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 795
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 796
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1039
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "state"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "dir"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "type"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    .line 1046
    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    .line 1047
    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1039
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 1183
    const/4 v2, 0x0

    .line 1184
    .local v2, "isTopActivity":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1185
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1186
    .local v1, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1187
    .local v4, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "classname is on topActivity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "classname is on classname "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1190
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "classname is on TOP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v2, 0x1

    move v3, v2

    .line 1195
    .end local v2    # "isTopActivity":Z
    .end local v4    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v3, "isTopActivity":I
    :goto_0
    return v3

    .end local v3    # "isTopActivity":I
    .restart local v2    # "isTopActivity":Z
    :cond_1
    move v3, v2

    .restart local v3    # "isTopActivity":I
    goto :goto_0
.end method

.method public static isCraneRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1198
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ravi isCraneRunning"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1200
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1201
    .local v1, "activitys":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 1202
    .local v3, "isActivityFound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1203
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentInfo{com.samsung.crane/com.samsung.crane.sketchimage.SketchActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1204
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentInfo{com.samsung.crane/com.samsung.crane.sketchmap.MapActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1206
    :cond_0
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ravi Crane In Recent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const/4 v3, 0x1

    .line 1211
    :cond_1
    return v3

    .line 1202
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 448
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1347
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1348
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1349
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1351
    .local v1, "className":Ljava/lang/String;
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top most activity is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v9, 0x0

    .line 341
    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "telNum":Ljava/lang/String;
    const/4 v6, 0x0

    .line 343
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    .line 344
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?disable_requery"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 345
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    .line 362
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v6

    .line 352
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v7

    .line 356
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sput-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0

    .line 360
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    sput-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0
.end method

.method private releaseSoundPool(Landroid/media/SoundPool;)V
    .locals 4
    .param p1, "soundPool"    # Landroid/media/SoundPool;

    .prologue
    const/4 v3, 0x1

    .line 927
    if-eqz p1, :cond_0

    .line 928
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Release SoundPool"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 929
    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    .line 930
    const/4 p1, 0x0

    .line 931
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After release SoundPool :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 933
    :cond_0
    return-void
.end method

.method public static sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mnewcall"    # Lcom/android/incallui/Call;

    .prologue
    .line 1964
    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 1965
    .local v2, "telNum":Ljava/lang/String;
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPhoneNumberBroadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 1967
    .local v0, "name":Ljava/lang/String;
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPhoneNumberBroadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.contentsharing.action.NUMBER_TOKEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1969
    .local v1, "phoneNumberIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.rcs.number.category.ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1970
    const-string v3, "num"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1971
    const-string v3, "name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1972
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1973
    return-void
.end method

.method private setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonStub"    # Landroid/view/ViewStub;
    .param p3, "button"    # Landroid/widget/Button;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "isWebExEnabled"    # Z

    .prologue
    .line 461
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 465
    :cond_0
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton null button"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 565
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 469
    .local v2, "broadcast":Landroid/content/Intent;
    const-string v7, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsCallPlusAvailable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 472
    if-eqz p4, :cond_3

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 473
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CursorCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 475
    :cond_3
    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v7, :cond_4

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 476
    :cond_4
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor not null, show Rcs buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 477
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 478
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 480
    const-string v7, "MENU_STRING"

    const-string v8, "HOLD"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 482
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_1

    .line 483
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 488
    :cond_5
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor not null, show Rcs buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 489
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 490
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 491
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    const-string v7, "MENU_STRING"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value mAddCallButton="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 494
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_6

    .line 495
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 499
    :cond_6
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_7

    .line 500
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    :cond_7
    if-eqz p4, :cond_8

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_8

    .line 505
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code return from setupPromotedServiceButton"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-eqz v7, :cond_1

    .line 507
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    goto/16 :goto_0

    .line 512
    :cond_8
    const/4 v5, 0x0

    .line 513
    .local v5, "feature_tag_idx":I
    const-string v4, " "

    .line 514
    .local v4, "featureTag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 515
    .local v1, "action_idx":I
    const-string v0, ""

    .line 516
    .local v0, "action":Ljava/lang/String;
    if-eqz p4, :cond_9

    .line 517
    const-string v7, "feature_tag"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 518
    invoke-interface {p4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    const-string v7, "int_name"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 520
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_9
    if-nez p5, :cond_a

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    .line 528
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 529
    :cond_a
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton not promoted"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    .line 531
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 536
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    .line 539
    const/4 v3, 0x0

    .line 540
    .local v3, "enabled":I
    const/4 v6, 0x0

    .line 541
    .local v6, "is_enabled_idx":I
    if-eqz p4, :cond_c

    .line 542
    const-string v7, "is_enabled"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 543
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 546
    :cond_c
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsActiveCall?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isRcsServiceAvailable()? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mImsServiceDeregistered? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIsHold? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 547
    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_e

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_e

    .line 548
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "VSH service enabled"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 549
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 550
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    .line 557
    :goto_1
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 558
    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    .line 559
    const/4 v7, 0x0

    const v8, 0x7f020141

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v7, v8, v9, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 563
    :cond_d
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 564
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 552
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    .line 554
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "VSH service disabled"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonStub"    # Landroid/view/ViewStub;
    .param p3, "button"    # Landroid/widget/Button;
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 575
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton()"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 577
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 578
    :cond_0
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton null button"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-nez v7, :cond_4

    :cond_3
    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-eqz v7, :cond_5

    :cond_4
    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 584
    :cond_5
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value null or empty, show legacy buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 585
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 586
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 587
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 588
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v7, :cond_1

    .line 589
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0

    .line 593
    :cond_6
    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-nez v7, :cond_8

    .line 594
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value not null, show RCS buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 595
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 596
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 597
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value  mBluetoothButton="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 599
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    if-eqz v7, :cond_7

    .line 600
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 613
    :cond_7
    if-eqz p4, :cond_9

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_9

    .line 614
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code returning from setupRcsServicesButton "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    if-eqz v7, :cond_1

    .line 616
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 603
    :cond_8
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value null,call disconnecting show legacy buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 604
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 605
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 606
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 607
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v7, :cond_1

    .line 608
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 621
    :cond_9
    const/4 v0, 0x0

    .line 624
    .local v0, "enabled":I
    const/4 v6, 0x0

    .line 625
    .local v6, "service_name_idx":I
    const/4 v4, 0x0

    .line 626
    .local v4, "is_enabled_idx":I
    const-string v5, " "

    .line 627
    .local v5, "serviceName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 628
    .local v3, "isEnabled":I
    const/4 v2, 0x0

    .line 629
    .local v2, "feature_tag_idx":I
    const-string v1, " "

    .line 631
    .local v1, "featureTag":Ljava/lang/String;
    if-eqz p4, :cond_a

    .line 632
    const-string v7, "service_name"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 633
    const-string v7, "is_enabled"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 637
    :cond_a
    if-eqz p4, :cond_b

    .line 638
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-interface {p4, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 640
    const-string v7, "feature_tag"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 641
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 644
    :cond_b
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 647
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "featureTag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " skip!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v0, :cond_a

    .line 659
    :cond_d
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsActiveCall?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isRcsServiceAvailable()? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mImsServiceDeregistered? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIsHold? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 660
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_10

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_10

    .line 661
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 662
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ISH service enabled "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 668
    :goto_2
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 669
    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    .line 670
    const/4 v7, 0x0

    const v8, 0x7f020140

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v7, v8, v9, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 674
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 675
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 652
    :cond_f
    if-eqz v3, :cond_c

    .line 653
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton found enabled"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move v0, v3

    goto/16 :goto_1

    .line 664
    :cond_10
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 665
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ISH service disabled "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 429
    const/4 v4, 0x0

    .line 441
    :goto_0
    return-object v4

    .line 431
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 432
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 435
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 436
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    .end local v0    # "c":C
    :cond_2
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1223
    return-void
.end method

.method public acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 982
    new-instance v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    .line 983
    .local v10, "state":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    const/4 v0, 0x0

    .line 985
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    :try_start_0
    iput-boolean v11, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    .line 986
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_5

    .line 988
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 990
    :cond_0
    const-string v11, "id"

    .line 992
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 991
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 993
    .local v6, "sessionId":J
    const-string v11, "dir"

    .line 995
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 994
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 996
    .local v3, "sessionDirection":I
    const-string v11, "state"

    .line 998
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 997
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 999
    .local v8, "sessionState":I
    const-string v11, "type"

    .line 1001
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1000
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1002
    .local v9, "sessionType":I
    const-string v11, "size"

    .line 1003
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1005
    .local v4, "sessionFileSize":J
    if-nez v3, :cond_1

    .line 1006
    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    .line 1007
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "verifySessionStates incoming session id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iput v8, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    .line 1010
    iput v9, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    .line 1012
    iput-wide v6, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    .line 1013
    iput-wide v4, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    .line 1015
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    .line 1033
    .end local v3    # "sessionDirection":I
    .end local v4    # "sessionFileSize":J
    .end local v6    # "sessionId":J
    .end local v8    # "sessionState":I
    .end local v9    # "sessionType":I
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_3
    :goto_1
    return-object v10

    .line 1017
    :cond_4
    :try_start_1
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "verifySessionStates no sessions"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    .line 1019
    .local v2, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v2, :cond_2

    .line 1020
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1030
    .end local v2    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "acquireSessionInfo() exception"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1033
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1024
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "verifySessionStates no sessions"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    .line 1026
    .restart local v2    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v2, :cond_2

    .line 1027
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1033
    .end local v2    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    :catchall_0
    move-exception v11

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v11
.end method

.method public checkIfCapableOfRcsFileTransfer(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v9, 0x1

    .line 845
    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    .line 846
    .local v7, "telNum":Ljava/lang/String;
    const/4 v6, 0x0

    .line 848
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 849
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver : opening cursor"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 850
    invoke-virtual {p0, v7, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 851
    .local v8, "telNumUri":Ljava/lang/String;
    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 852
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 854
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 855
    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 860
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    .line 861
    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 866
    if-eqz v6, :cond_0

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v9

    .line 870
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "telNumUri":Ljava/lang/String;
    :goto_1
    return v2

    .line 858
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "telNumUri":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No content resolver !"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 866
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "telNumUri":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 866
    :cond_3
    if-eqz v6, :cond_4

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 870
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkRemoteCapability(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2037
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 2038
    const-string v2, "Context is null return : "

    invoke-static {p0, v2, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2089
    :goto_0
    return-void

    .line 2041
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->checkOwnCapability()V

    .line 2042
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, "remote_number":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote_number - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2044
    new-instance v2, Lcom/sec/ims/options/CapabilityManager;

    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    .line 2045
    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v2, :cond_1

    .line 2046
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 2047
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 2048
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isSketchRemote:Z

    goto :goto_0

    .line 2052
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCapabilityByNumber(Lcom/sec/ims/options/CapabilityManager;Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 2053
    .local v0, "cap":Lcom/sec/ims/options/Capabilities;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote cap - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2054
    if-eqz v0, :cond_6

    .line 2055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote cap 1 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v4, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2057
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2058
    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 2059
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2060
    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 2073
    :goto_1
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2074
    const-string v2, "Map/Image Sketch is present remote side"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2075
    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isSketchRemote:Z

    .line 2085
    :goto_2
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isSketchRemote:Z

    if-eqz v2, :cond_7

    .line 2086
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isSketch"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 2062
    :cond_2
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    goto :goto_1

    .line 2065
    :cond_3
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 2066
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 2067
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2068
    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    goto :goto_1

    .line 2070
    :cond_4
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    goto :goto_1

    .line 2077
    :cond_5
    const-string v2, "Map/Image Sketch is not  present remote side"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2078
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isSketchRemote:Z

    goto :goto_2

    .line 2081
    :cond_6
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 2082
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 2083
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isSketchRemote:Z

    goto :goto_2

    .line 2088
    :cond_7
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isSketch"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1275
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1276
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 1277
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    .line 1278
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1281
    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 1282
    :cond_1
    const/4 v2, 0x0

    .line 1297
    :goto_0
    return-object v2

    .line 1286
    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1287
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1288
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1289
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1295
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1084
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "disconnected! "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    .line 1087
    .local v1, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v1, :cond_0

    .line 1088
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    .line 1090
    :cond_0
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1091
    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    .line 1093
    :cond_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 1094
    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 1096
    :cond_2
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    .line 1097
    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 1099
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1101
    return-void
.end method

.method public dismissIncomingDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1761
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIncomingDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1764
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1766
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After dismiss mIncomingDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    :cond_0
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    .line 1774
    :goto_0
    return-void

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1772
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    throw v1
.end method

.method public dismissIncomingInvitationDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1743
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissing mIncomingInvitationDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1745
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1747
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1748
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After dismiss mIncomingInvitationDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    :cond_0
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1755
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIncomingInvitationDialog should be null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1757
    :goto_0
    return-void

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1755
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIncomingInvitationDialog should be null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1754
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1755
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIncomingInvitationDialog should be null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    throw v1
.end method

.method public generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "telNumber"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 957
    if-nez p1, :cond_0

    .line 958
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 963
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 967
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "result":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    .line 971
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1907
    const/16 v0, 0x64

    return v0
.end method

.method public getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 824
    if-nez p2, :cond_0

    .line 825
    const-wide/16 v0, 0x0

    .line 829
    :goto_0
    return-wide v0

    .line 828
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, -0x1

    .line 813
    if-nez p2, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v1

    .line 816
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 817
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 816
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 818
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 819
    iget v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    goto :goto_0
.end method

.method public getInvitationText(Landroid/content/res/Resources;Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "sessionType"    # Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    .prologue
    .line 1779
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI$8;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1792
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1781
    :pswitch_0
    const v0, 0x7f090556

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1783
    :pswitch_1
    const v0, 0x7f09021f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1785
    :pswitch_2
    const v0, 0x7f090222

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1787
    :pswitch_3
    const v0, 0x7f090557

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1789
    :pswitch_4
    const v0, 0x7f090558

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1779
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hideRcsCallCard(Lcom/android/incallui/secrcs/RcsInvitation;)V
    .locals 3
    .param p1, "invitation"    # Lcom/android/incallui/secrcs/RcsInvitation;

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1437
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIncomingDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    .line 1439
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    .line 1443
    :cond_0
    return-void
.end method

.method public isCallPlusAvailable()Z
    .locals 1

    .prologue
    .line 1924
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    return v0
.end method

.method public isConference()Z
    .locals 1

    .prologue
    .line 1932
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    return v0
.end method

.method public isCshRunning(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1357
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1358
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1359
    .local v1, "activitys":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 1360
    .local v3, "isActivityFound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1361
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentInfo{com.samsung.rcs/com.samsung.rcs.share.ContentShareActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1362
    const/4 v3, 0x1

    .line 1366
    :cond_0
    return v3

    .line 1360
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isCshTopMostActivity(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1339
    const-string v0, "com.samsung.rcs.share.ContentShareActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExtraVolumeAvailable()Z
    .locals 1

    .prologue
    .line 1916
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    return v0
.end method

.method public isISHButtonAvailable()Z
    .locals 1

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    return v0
.end method

.method public isImsServiceDeregistered()Z
    .locals 1

    .prologue
    .line 1940
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    return v0
.end method

.method public isInvitationActive(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    .line 977
    .local v0, "active":Z
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInvitationActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return v0
.end method

.method public isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "FeatureTags"    # Ljava/lang/String;

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->queryOwn(Landroid/content/Context;)V

    .line 1423
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1430
    :goto_0
    return v0

    .line 1425
    :cond_0
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    .line 1427
    :cond_1
    const-string v0, "+g.3gpp.cs-voice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1428
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0

    .line 1430
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRcsFTAvailable(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 937
    const/4 v1, 0x0

    .line 939
    .local v1, "isAvailableFT":Z
    if-eqz p1, :cond_2

    .line 940
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 942
    :cond_0
    const-string v2, "is_enabled"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 943
    const-string v2, "feature_tag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "featureTag":Ljava/lang/String;
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "featureTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    const/4 v1, 0x1

    .line 948
    .end local v0    # "featureTag":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 951
    :cond_2
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableFT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    return v1
.end method

.method public isRcsOnTopScreen(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 1727
    const/4 v2, 0x0

    .line 1728
    .local v2, "isTopActivity":Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1729
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1730
    .local v1, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1731
    .local v4, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.rcs.share.ContentShareActivity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1732
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.rcs.share.RcsSharingServiceListDialog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1733
    :cond_1
    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v6, "RCS is on TOP"

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1734
    const/4 v2, 0x1

    move v3, v2

    .line 1738
    .end local v2    # "isTopActivity":Z
    .end local v4    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v3, "isTopActivity":I
    :goto_0
    return v3

    .end local v3    # "isTopActivity":I
    .restart local v2    # "isTopActivity":Z
    :cond_2
    move v3, v2

    .restart local v3    # "isTopActivity":I
    goto :goto_0
.end method

.method public isRcsServiceAvailable()Z
    .locals 3

    .prologue
    .line 833
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRcsServiceAvailable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    return v0
.end method

.method public isRcsServicePromoted()Z
    .locals 3

    .prologue
    .line 838
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRcsServicePromoted? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfCapable()Z
    .locals 1

    .prologue
    .line 1928
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    return v0
.end method

.method public isShareActive(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1051
    const/4 v2, 0x0

    .line 1052
    .local v2, "returnVal":Z
    const/4 v0, 0x0

    .line 1054
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_2

    .line 1056
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1059
    :cond_0
    const-string v3, "dir"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "state"

    .line 1060
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const-string v3, "state"

    .line 1061
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    .line 1063
    :cond_1
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "found active session connecting/in progress "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_SESSION_DIRECTION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dir"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_SESSION_STATE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    const/4 v2, 0x1

    .line 1075
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1076
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_3
    :goto_1
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is Share active? returnVal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    return v2

    .line 1069
    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v1

    .line 1073
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1075
    if-eqz v0, :cond_3

    .line 1076
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1075
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 1076
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method public isSharingDialogTopMostActivity(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1343
    const-string v0, "com.samsung.rcs.share.RcsSharingServiceListDialog"

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVSHButtonAvailable()Z
    .locals 1

    .prologue
    .line 1944
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    return v0
.end method

.method public isVoiceMail()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1982
    const-string v4, "isVoiceMail()"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1983
    const/4 v2, 0x0

    .line 1984
    .local v2, "isVoicemail":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1985
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    move v3, v2

    .line 1990
    .end local v2    # "isVoicemail":Z
    .local v3, "isVoicemail":I
    :goto_0
    return v3

    .line 1986
    .end local v3    # "isVoicemail":I
    .restart local v2    # "isVoicemail":Z
    :cond_0
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 1987
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v1, :cond_1

    move v3, v2

    .restart local v3    # "isVoicemail":I
    goto :goto_0

    .line 1988
    .end local v3    # "isVoicemail":I
    :cond_1
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 1989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoicemail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move v3, v2

    .line 1990
    .restart local v3    # "isVoicemail":I
    goto :goto_0
.end method

.method public notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 876
    const-string v1, "alertoncall_mode"

    .line 877
    .local v1, "alertoncall_mode":Ljava/lang/String;
    const/4 v0, 0x1

    .line 878
    .local v0, "alertoncallModeIndex":I
    const/4 v3, 0x0

    .line 879
    .local v3, "textToSpeachVariant":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 880
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 881
    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside notifyUser Beep Sound alertoncallModeIndex :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 882
    packed-switch v0, :pswitch_data_0

    .line 924
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 884
    :pswitch_1
    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 885
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 886
    .local v4, "v":Landroid/os/Vibrator;
    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 890
    .end local v4    # "v":Landroid/os/Vibrator;
    :pswitch_2
    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 891
    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Playing Notification Sound"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    new-instance v5, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v6, v9, [Landroid/content/Context;

    aput-object p1, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepareRcsUiElements(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;ZLcom/android/incallui/Call;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "promotedButtonStub"    # Landroid/view/ViewStub;
    .param p3, "promotedButton"    # Landroid/widget/Button;
    .param p4, "addcallButton"    # Landroid/widget/Button;
    .param p5, "bluetoothButton"    # Landroid/widget/ToggleButton;
    .param p6, "shareButtonStub"    # Landroid/view/ViewStub;
    .param p7, "shareButton"    # Landroid/widget/Button;
    .param p8, "isWebExEnabled"    # Z
    .param p9, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 303
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "prepareRcsUiElements()"

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 304
    invoke-virtual {p9}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    .line 305
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsActiveCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 308
    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    .line 312
    :goto_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUltraPowerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    sput-object p1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    .line 325
    iput-object p9, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    .line 326
    sput-object p2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    .line 327
    sput-object p6, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    .line 328
    sput-object p3, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    .line 329
    sput-object p4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 330
    sput-object p5, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 331
    sput-object p7, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    .line 332
    iput-boolean p8, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z

    .line 333
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;

    invoke-direct {v0, p0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 334
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;

    invoke-direct {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    return-void

    :cond_0
    move v0, v2

    .line 304
    goto :goto_0

    .line 310
    :cond_1
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    goto :goto_1
.end method

.method public queryOwn(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1370
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const/4 v6, 0x0

    .line 1373
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1374
    if-nez v6, :cond_1

    .line 1375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    .line 1377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    .line 1378
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    if-eqz v6, :cond_0

    .line 1387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->readDataFromQueryOwn(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
    if-eqz v6, :cond_0

    .line 1387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1383
    :catch_0
    move-exception v7

    .line 1384
    .local v7, "ise":Ljava/lang/IllegalStateException;
    :try_start_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwn : RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1386
    if-eqz v6, :cond_0

    .line 1387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1386
    .end local v7    # "ise":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public queryOwnCaps(Landroid/content/Context;)Z
    .locals 20
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1446
    const/4 v13, 0x1

    .line 1448
    .local v13, "forceFinish":Z
    const/16 v16, 0x0

    .line 1449
    .local v16, "mOwnFtCapable":Z
    const/16 v17, 0x0

    .line 1450
    .local v17, "mOwnGcftCapable":I
    const/4 v14, 0x0

    .line 1451
    .local v14, "mIsEnableRcs":Z
    const/4 v15, 0x0

    .line 1453
    .local v15, "mIsLocalOffline":Z
    const/4 v10, 0x0

    .line 1455
    .local v10, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1456
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1458
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1459
    :cond_1
    const/4 v14, 0x0

    .line 1460
    const/4 v15, 0x1

    .line 1461
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwnCaps, cursor is null"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    const/4 v1, 0x0

    .line 1499
    if-eqz v10, :cond_2

    .line 1500
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1501
    const/4 v10, 0x0

    .line 1520
    :cond_2
    :goto_0
    return v1

    .line 1465
    :cond_3
    :try_start_1
    const-string v1, "feature_tag"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1466
    .local v18, "serviceTagNo":I
    const-string v1, "is_enabled"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1469
    .local v12, "enabledNo":I
    :cond_4
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1470
    .local v19, "tag":Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1472
    .local v11, "enabled":I
    if-lez v11, :cond_d

    .line 1473
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1474
    :cond_5
    const/4 v13, 0x0

    .line 1477
    :cond_6
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1478
    const/16 v16, 0x1

    .line 1497
    :cond_7
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 1499
    if-eqz v10, :cond_8

    .line 1500
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1501
    const/4 v10, 0x0

    .line 1505
    :cond_8
    if-eqz v13, :cond_9

    .line 1506
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwnCaps, IM Service is impossible because own caps is null or unavailable."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1508
    :cond_9
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOwnCaps, forceFinish is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1509
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOwnCaps, FT capability is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1510
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOwnCaps, GC capability is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1511
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOwnCaps, localOffline is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1513
    if-nez v13, :cond_f

    if-nez v15, :cond_f

    const/4 v14, 0x1

    .line 1514
    :goto_2
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selfcapable  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1515
    if-eqz v14, :cond_a

    .line 1516
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1517
    .local v9, "broadcast":Landroid/content/Intent;
    const-string v1, "QUERYCALLPLUS"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v9    # "broadcast":Landroid/content/Intent;
    :cond_a
    move v1, v14

    .line 1520
    goto/16 :goto_0

    .line 1479
    :cond_b
    :try_start_2
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1480
    const-string v1, "additional_info"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1482
    .local v7, "additionalIndex":I
    const/4 v1, -0x1

    if-eq v7, v1, :cond_7

    .line 1483
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1485
    .local v8, "additionalInfo":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 1486
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    goto/16 :goto_1

    .line 1489
    .end local v7    # "additionalIndex":I
    .end local v8    # "additionalInfo":Ljava/lang/String;
    :cond_c
    const-string v1, "ft-in-group-chat"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1490
    move/from16 v17, v11

    goto/16 :goto_1

    .line 1493
    :cond_d
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 1494
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1499
    .end local v11    # "enabled":I
    .end local v12    # "enabledNo":I
    .end local v18    # "serviceTagNo":I
    .end local v19    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_e

    .line 1500
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1501
    const/4 v10, 0x0

    :cond_e
    throw v1

    .line 1513
    .restart local v11    # "enabled":I
    .restart local v12    # "enabledNo":I
    .restart local v18    # "serviceTagNo":I
    .restart local v19    # "tag":Ljava/lang/String;
    :cond_f
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1393
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1397
    const-string v4, "feature_tag"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1398
    .local v2, "serviceTagNo":I
    const-string v4, "is_enabled"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1399
    .local v1, "enabledNo":I
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1400
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    .line 1401
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    .line 1402
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.getCount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1405
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, "tag":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1407
    .local v0, "enabled":I
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    if-eqz v3, :cond_3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    .line 1410
    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1416
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1419
    .end local v0    # "enabled":I
    .end local v1    # "enabledNo":I
    .end local v2    # "serviceTagNo":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    return-void

    .line 1411
    .restart local v0    # "enabled":I
    .restart local v1    # "enabledNo":I
    .restart local v2    # "serviceTagNo":I
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v0, :cond_4

    .line 1412
    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    .line 1413
    :cond_4
    if-eqz v3, :cond_1

    const-string v4, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    .line 1414
    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0
.end method

.method public registerRcsObserver(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rcsObserver"    # I

    .prologue
    const/4 v3, 0x1

    .line 1853
    if-nez p1, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

    .line 1855
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRcsObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->rcsEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1857
    if-ne p2, v3, :cond_2

    .line 1858
    new-instance v0, Lcom/android/incallui/secrcs/RcsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/android/incallui/secrcs/RcsContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 1859
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsContentObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 1862
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_3

    .line 1864
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 1867
    :cond_3
    new-instance v0, Lcom/android/incallui/secrcs/RcsCapaObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/incallui/secrcs/RcsCapaObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 1868
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsCapaObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/high16 v4, 0x10000000

    .line 1151
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resuming share..! "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1155
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resume share since active share "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ravi Launch Crane"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1162
    .local v1, "imageIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.crane.sketchimage.SketchActivity"

    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1163
    const-string v2, "com.samsung.crane.sketchimage.LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1165
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1167
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.crane.sketchmap.MapActivity"

    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    const-string v2, "com.samsung.crane.sketchmap.LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1170
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1333
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.intent.action.RCS_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    const-string v1, "com.samsung.rcs.intent.extra.RCS_TOAST_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1336
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1903
    iput p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    .line 1904
    return-void
.end method

.method public setCallPlusAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1920
    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    .line 1921
    return-void
.end method

.method public setExtraVolumeAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1912
    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    .line 1913
    return-void
.end method

.method public setImsServiceDeregistered(Z)V
    .locals 0
    .param p1, "deregistered"    # Z

    .prologue
    .line 1936
    iput-boolean p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    .line 1937
    return-void
.end method

.method public setNoShowVolumeAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1952
    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    .line 1953
    return-void
.end method

.method public setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invitation"    # Lcom/android/incallui/secrcs/RcsInvitation;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1797
    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v5, 0x7f1001a2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1798
    .local v0, "accept":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v5, 0x7f1001a3

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1800
    .local v3, "reject":Landroid/widget/Button;
    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1801
    .local v1, "name":Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 1804
    .local v2, "num":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupInviteCallCardButtons "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 1807
    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$5;

    invoke-direct {v4, p0, p3}, Lcom/android/incallui/secrcs/RcsShareUI$5;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1816
    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$6;

    invoke-direct {v4, p0, v1, v2, p2}, Lcom/android/incallui/secrcs/RcsShareUI$6;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/secrcs/RcsInvitation;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1847
    :cond_0
    return-void
.end method

.method public setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V
    .locals 8
    .param p1, "mTopLeftButton"    # Landroid/widget/Button;
    .param p2, "mBluetoothButton"    # Landroid/widget/ToggleButton;
    .param p3, "mPromotedButtonStub"    # Landroid/view/ViewStub;
    .param p4, "mPromotedButton"    # Landroid/widget/Button;
    .param p5, "mShareButtonStub"    # Landroid/view/ViewStub;
    .param p6, "mShareButton"    # Landroid/widget/Button;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 690
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons()"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 692
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 693
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    .line 695
    :cond_0
    sput-object p1, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 696
    sput-object p2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 697
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    .line 698
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "State = Dialing "

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 699
    if-eqz p4, :cond_1

    .line 700
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 702
    :cond_1
    if-eqz p6, :cond_2

    .line 703
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 706
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 707
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsConference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 709
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v2

    if-nez v2, :cond_9

    .line 710
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons ,Cursor not null"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 711
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 712
    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 713
    const-string v2, "MENU_STRING"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupLegacyInCallButtons mIsVSHButtonAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 715
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupLegacyInCallButtons mPromotedService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 716
    invoke-virtual {p3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 717
    invoke-virtual {p4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 718
    if-eqz p1, :cond_3

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 726
    :cond_3
    :goto_0
    if-eqz p5, :cond_7

    if-eqz p6, :cond_7

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v2, :cond_7

    .line 727
    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 728
    const-string v2, "MENU_STRING"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupLegacyInCallButtons mIsISHButtonAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsCallPlusAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 730
    if-eqz p2, :cond_4

    invoke-virtual {p2, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 731
    :cond_4
    invoke-virtual {p5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 732
    invoke-virtual {p6, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 756
    :cond_5
    :goto_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "broadcast sent for menu change"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 757
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 758
    return-void

    .line 719
    :cond_6
    if-eqz p1, :cond_3

    .line 720
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 721
    const-string v2, "MENU_STRING"

    const-string v3, "HOLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupLegacyInCallButtons mIsVSHButtonAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 723
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 724
    if-eqz p4, :cond_3

    invoke-virtual {p4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 733
    :cond_7
    if-eqz p2, :cond_5

    .line 734
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 735
    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-nez v2, :cond_8

    .line 736
    const-string v2, "MENU_STRING"

    const-string v3, "HOLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    :cond_8
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupLegacyInCallButtons mIsISHButtonAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsCallPlusAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 738
    invoke-virtual {p2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    .line 741
    :cond_9
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons no RCS"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 742
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 743
    if-eqz p1, :cond_a

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 746
    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 747
    :cond_b
    if-eqz p3, :cond_d

    .line 748
    if-eqz p4, :cond_c

    invoke-virtual {p4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 749
    :cond_c
    invoke-virtual {p3, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 751
    :cond_d
    if-eqz p5, :cond_5

    .line 752
    if-eqz p6, :cond_e

    invoke-virtual {p6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 753
    :cond_e
    invoke-virtual {p5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invitation"    # Lcom/android/incallui/secrcs/RcsInvitation;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1524
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1528
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, " Battery unavaialble "

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1529
    const/4 v9, 0x0

    .line 1530
    .local v9, "i":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 1531
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    move/from16 v17, v0

    sget-object v18, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1532
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "i":Landroid/content/Intent;
    const-string v17, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1533
    .restart local v9    # "i":Landroid/content/Intent;
    const-string v17, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1536
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    move/from16 v17, v0

    sget-object v18, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 1537
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "i":Landroid/content/Intent;
    const-string v17, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1538
    .restart local v9    # "i":Landroid/content/Intent;
    const-string v17, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1539
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1541
    :cond_3
    if-eqz v10, :cond_4

    .line 1542
    const-string v17, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 1543
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    move-wide/from16 v18, v0

    .line 1542
    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1546
    :try_start_0
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, " ISH Battery unavaialble "

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1547
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->showISHBatteryError(Landroid/content/Context;)V

    .line 1548
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1549
    :catch_0
    move-exception v8

    .line 1550
    .local v8, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Did not find RCS service..."

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1555
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "i":Landroid/content/Intent;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v6, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0b0010

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1556
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const-class v18, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v18

    .line 1557
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 1558
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v19, "Intializing dialog incoming"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1559
    new-instance v17, Landroid/app/Dialog;

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const v19, 0x7f040082

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1563
    :cond_5
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1565
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v12

    .line 1566
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v13

    .line 1569
    .local v13, "num":Ljava/lang/String;
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setupRcsCallCard "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v15

    .line 1572
    .local v15, "session":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    iget-boolean v0, v15, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    iget v0, v15, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 1573
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "RcsCallCard hasInvite"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p0 .. p3}, Lcom/android/incallui/secrcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V

    .line 1575
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v17, :cond_7

    .line 1576
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 1577
    .local v14, "pm":Landroid/os/PowerManager;
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " setup wakelock "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1578
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v17, :cond_6

    .line 1579
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, " Acquire wakelock "

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1580
    const v17, 0x1000001a

    const-string v18, "TAG"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    sput-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1582
    :cond_6
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1584
    .end local v14    # "pm":Landroid/os/PowerManager;
    :cond_7
    iget v0, v15, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    move-result-object v16

    .line 1585
    .local v16, "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI$8;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1604
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Default case"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1607
    :goto_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const v18, 0x7f090226

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    const/16 v17, 0x1

    const v18, 0x7f09021e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    .line 1608
    .local v4, "VideoShareOptions":[Ljava/lang/CharSequence;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const v18, 0x7f09021e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v17

    .line 1609
    .local v5, "VideoShareOptions1":[Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1610
    .local v7, "ctx":Landroid/content/Context;
    move-object/from16 v11, p3

    .line 1612
    .local v11, "mnewcall":Lcom/android/incallui/Call;
    if-eqz v6, :cond_b

    .line 1613
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1614
    const-string v17, "ims_crane"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    move/from16 v17, v0

    sget-object v18, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1615
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "builder 1 "

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1616
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    .line 1617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1618
    move-object v4, v5

    .line 1619
    :cond_8
    const/16 v17, 0x0

    new-instance v18, Lcom/android/incallui/secrcs/RcsShareUI$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1635
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    .line 1637
    :cond_9
    const-string v17, "ims_crane"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    move/from16 v17, v0

    sget-object v18, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1638
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-gez v17, :cond_a

    .line 1639
    const v17, 0x7f090089

    new-instance v18, Lcom/android/incallui/secrcs/RcsShareUI$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v11}, Lcom/android/incallui/secrcs/RcsShareUI$2;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1664
    :cond_a
    :goto_2
    const v17, 0x7f09023a

    new-instance v18, Lcom/android/incallui/secrcs/RcsShareUI$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/secrcs/RcsShareUI$4;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1693
    :cond_b
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Showing dialog incoming"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1694
    const-class v18, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v18

    .line 1695
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsOnTopScreen(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 1696
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "InComing invite Produce "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1697
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    move/from16 v17, v0

    sget-object v19, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    const-string v17, "ims_crane"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1698
    const v17, 0x7f09021f

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1702
    :cond_c
    :goto_3
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 1705
    :cond_d
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1712
    .end local v4    # "VideoShareOptions":[Ljava/lang/CharSequence;
    .end local v5    # "VideoShareOptions1":[Ljava/lang/CharSequence;
    .end local v7    # "ctx":Landroid/content/Context;
    .end local v11    # "mnewcall":Lcom/android/incallui/Call;
    .end local v16    # "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    :cond_e
    :goto_4
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " wakeLock "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1713
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v17, :cond_0

    .line 1714
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1715
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "wakeLock released "

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1716
    const/16 v17, 0x0

    sput-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 1563
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "num":Ljava/lang/String;
    .end local v15    # "session":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    :catchall_0
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    .line 1587
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "num":Ljava/lang/String;
    .restart local v15    # "session":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    .restart local v16    # "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    :pswitch_0
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "sessionType: IMAGE_SHARE"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1588
    const-string v17, "ims_crane"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1589
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getMaxImageSize(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    .line 1590
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sessionType: IMAGE_SHARE SIZE is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1592
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const v18, 0x7f090221

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setTitle(I)V

    .line 1593
    const v17, 0x7f090221

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1597
    :pswitch_1
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "sessionType: VIDEO_SHARE"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const v18, 0x7f090224

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setTitle(I)V

    .line 1599
    const v17, 0x7f090224

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1652
    .restart local v4    # "VideoShareOptions":[Ljava/lang/CharSequence;
    .restart local v5    # "VideoShareOptions1":[Ljava/lang/CharSequence;
    .restart local v7    # "ctx":Landroid/content/Context;
    .restart local v11    # "mnewcall":Lcom/android/incallui/Call;
    :cond_10
    const v17, 0x7f090089

    new-instance v18, Lcom/android/incallui/secrcs/RcsShareUI$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v11}, Lcom/android/incallui/secrcs/RcsShareUI$3;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 1699
    :cond_11
    :try_start_4
    const-string v17, "ims_crane"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1700
    const v17, 0x7f090222

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    .line 1705
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v17

    .line 1707
    .end local v4    # "VideoShareOptions":[Ljava/lang/CharSequence;
    .end local v5    # "VideoShareOptions1":[Ljava/lang/CharSequence;
    .end local v7    # "ctx":Landroid/content/Context;
    .end local v11    # "mnewcall":Lcom/android/incallui/Call;
    .end local v16    # "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 1708
    sget-object v17, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v18, "RcsCallCard has no invites"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    goto/16 :goto_4

    .line 1585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showBatteryError(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1893
    const v0, 0x7f090084

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1894
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1895
    return-void
.end method

.method public showISHBatteryError(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1898
    const v0, 0x7f090084

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1899
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1900
    return-void
.end method

.method public startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1215
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLiveVideo() context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",call:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1218
    return-void
.end method

.method public startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1226
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1227
    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :cond_1
    :goto_0
    return-void

    .line 1231
    :cond_2
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start RCS startRcsActivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1232
    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    .line 1236
    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1237
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1238
    const-string v1, "CRANE_CAPA"

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1239
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find RCS activity..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1247
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1248
    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_1
    :goto_0
    return-void

    .line 1251
    :cond_2
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start RCS startRcsService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1252
    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1251
    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    .line 1255
    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find RCS activity..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRcsSharingDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1266
    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 1267
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    if-eqz v2, :cond_0

    .line 1268
    const-string v2, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1270
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1271
    return-void
.end method

.method public stopOverlayService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1976
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1977
    .local v0, "overlayIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.contentshare.ShareOverlayService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1978
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1979
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1104
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tearDown()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1107
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1111
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1115
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 1117
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    .line 1118
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    .line 1120
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 1121
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    .line 1123
    :cond_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 1124
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    .line 1126
    :cond_4
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 1127
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    .line 1129
    :cond_5
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 1130
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    .line 1132
    :cond_6
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 1133
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 1135
    :cond_7
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    .line 1136
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 1139
    :cond_8
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    .line 1140
    return-void
.end method

.method public unregisterRcsObserver(I)V
    .locals 4
    .param p1, "rcsObserver"    # I

    .prologue
    const/4 v3, 0x0

    .line 1875
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRcsObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1878
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1880
    iput-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1885
    iput-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    goto :goto_0
.end method

.method public updateAudioState(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1143
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, " updateAudioState from Notification "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1148
    :cond_0
    return-void
.end method
