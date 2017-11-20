.class public Lcom/android/incallui/secrcs/RcsShareUI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/secrcs/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;,
        Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;,
        Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;,
        Lcom/android/incallui/secrcs/RcsShareUI$SessionState;,
        Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;
    }
.end annotation


# static fields
.field private static final ACTION_CAPABILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.incalllui.rcsshareui.action.ACTION_CAPABILITY_CHANGED"

.field private static final ACTION_MENU_CHANGE:Ljava/lang/String; = "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

.field public static final ACTION_MUTE_UPDATE:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_UPDATE"

.field public static final ACTION_SEND_NUMBER_TOKEN:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.NUMBER_TOKEN"

.field public static final ACTION_SPEAKER_UPDATE:Ljava/lang/String; = "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

.field public static final ACTION_TO_OPTIONS_CALL_HOLD:Ljava/lang/String; = "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

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

.field public static final CAPABILITY_CRANE:Ljava/lang/String; = "gsma.sharedmap"

.field public static final CAP_REMOTE:I = 0x68

.field public static final CAP_SELF:I = 0x67

.field public static final CATEGORY_NUMBER_TOKEN:Ljava/lang/String; = "com.samsung.rcs.number.category.ACTION"

.field public static final COL_RCS_ENABLED:Ljava/lang/String; = "rcs_enabled"

.field private static final CRANE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.crane"

.field private static final CSH_ACTIVITY_NAME:Ljava/lang/String; = "com.samsung.rcs.share.ContentShareActivity"

.field private static final EXTRA_RCS_TOAST:Ljava/lang/String; = "com.samsung.rcs.intent.extra.RCS_TOAST_MESSAGE"

.field private static final FT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

.field private static final FT_HTTP:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft_http\""

.field private static final FT_IN_GROUP_CHAT:Ljava/lang/String; = "ft-in-group-chat"

.field private static final IM:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

.field public static final INCALL_CAP:I = 0x65

.field private static final INT_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.joyn.intmsg\""

.field public static final IS_MUTE_ON:Ljava/lang/String; = "is_mute_on"

.field public static final IS_SPEAKER_ON:Ljava/lang/String; = "is_speaker_on"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_TASK:I = 0x3e8

.field private static final OVERLAY_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.crane.contentshare.ShareOverlayService"

.field private static final PAUSE:C = ','

.field public static final POSTCALL_CAP:I = 0x66

.field public static final PRECALL_CAP:I = 0x64

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

.field private static capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

.field public static is2G:Z

.field public static isBB:Z

.field public static isCrane:Z

.field public static isCraneRemote:Z

.field public static isISHRemote:Z

.field public static isISHSelf:Z

.field public static isInCallRemote:Z

.field public static isInCallSelf:Z

.field public static isMT:Z

.field public static isPostCallRemote:Z

.field public static isPostCallSelf:Z

.field public static isPreCallRemote:Z

.field public static isPreCallSelf:Z

.field public static isRcsServiceRegistered:Z

.field public static isRcsSwtich:Z

.field public static isVSHRemote:Z

.field public static isVSHSelf:Z

.field private static mAddCallButton:Landroid/widget/Button;

.field private static mBluetoothButton:Landroid/widget/ToggleButton;

.field private static mCall:Lcom/android/incallui/Call;

.field private static mCnxManager:Lcom/b/a/a/a/a;

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

.field private static mRcsServiceControl:Lcom/gsma/services/rcs/d;

.field private static mReConnect:Z

.field private static mShareButton:Landroid/widget/Button;

.field private static mShareButtonStub:Landroid/view/ViewStub;

.field private static mUltraPowerMode:Z

.field private static myCapabilities:Lcom/sec/ims/options/Capabilities;

.field private static myCapabilities1:Lcom/gsma/services/rcs/capability/Capabilities;

.field public static rcsEnableObserver:Landroid/database/ContentObserver;

.field private static remoteCapabilities:Lcom/sec/ims/options/Capabilities;

.field private static remoteCapabilities1:Lcom/gsma/services/rcs/capability/Capabilities;

.field private static sMe:Lcom/android/incallui/secrcs/RcsShareUI;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field protected INCALL_HORIZONTAL_MW_MARGIN_SUM:F

.field private isVSHEnable:I

.field private mBatteryLevel:I

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

.field private mListener:Lcom/sec/ims/options/CapabilityListener;

.field private mMaxImageSize:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mPromotedService:Z

.field private mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

.field private mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

.field private mServiceApi:Lcom/gsma/services/rcs/RcsService;

.field private mTwoWayShare:Z

.field private mtSideNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    sput-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    const-class v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v0, "remote_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_REMOTE_OFFLINE:Ljava/lang/String;

    const-string v0, "local_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI_CRANE:Landroid/net/Uri;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mReConnect:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->is2G:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isMT:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    sput-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    sput-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallSelf:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallRemote:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallSelf:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallRemote:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallSelf:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallRemote:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHSelf:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHRemote:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isISHSelf:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isISHRemote:Z

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$8;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->rcsEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mServiceApi:Lcom/gsma/services/rcs/RcsService;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mtSideNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_HORIZONTAL_MW_MARGIN_SUM:F

    iput-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/secrcs/RcsShareUI$9;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mListener:Lcom/sec/ims/options/CapabilityListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->getCurrentCapabilities()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/secrcs/RcsShareUI;->setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$1200()Landroid/view/ViewStub;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1700()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    sput-object p0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/media/SoundPool;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->releaseSoundPool(Landroid/media/SoundPool;)V

    return-void
.end method

.method static synthetic access$200()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->remoteCapabilities1:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object v0
.end method

.method static synthetic access$202(Lcom/gsma/services/rcs/capability/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 0

    sput-object p0, Lcom/android/incallui/secrcs/RcsShareUI;->remoteCapabilities1:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/incallui/secrcs/RcsShareUI;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->checkRcsServiceRegistered(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mListener:Lcom/sec/ims/options/CapabilityListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->myCapabilities1:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object v0
.end method

.method static synthetic access$302(Lcom/gsma/services/rcs/capability/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 0

    sput-object p0, Lcom/android/incallui/secrcs/RcsShareUI;->myCapabilities1:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object p0
.end method

.method static synthetic access$400()Lcom/b/a/a/a/a;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/incallui/Call;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/secrcs/RcsShareUI;->mReConnect:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/view/ViewStub;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v2, v1

    :cond_0
    const-string v3, "contactNumber"

    invoke-static {p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactName"

    invoke-static {p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactLabel"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static applyCallPlus()V
    .locals 4

    const/16 v3, 0x8

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

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static applyNonCallPlus()V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new applyNonCallPlus mShare "

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

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v0, :cond_2

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_4
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " applyNonCallPlus mBluetoothButton.setVisibility(View.VISIBLE); 2 "

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkRcsServiceRegistered(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsServiceRegistered called "

    invoke-static {v0, v1, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsServiceRegistered isRcsServiceRegistered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const/4 v2, 0x0

    :try_start_3
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RcsServiceRegistered : RCS Query Failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private connectToService(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Try to connect to service API"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {p1}, Lcom/gsma/services/rcs/d;->a(Landroid/content/Context;)Lcom/gsma/services/rcs/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RCS service not yet started"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mServiceApi:Lcom/gsma/services/rcs/RcsService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gsma/services/rcs/capability/b;

    invoke-direct {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->rcsServiceListener()Lcom/gsma/services/rcs/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/gsma/services/rcs/capability/b;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mServiceApi:Lcom/gsma/services/rcs/RcsService;

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mServiceApi:Lcom/gsma/services/rcs/RcsService;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsService;->a()V
    :try_end_0
    .catch Lcom/gsma/services/rcs/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Cannot connect service API"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private connectionListener()Lcom/sec/ims/options/CapabilityManager$ConnectionListener;
    .locals 1

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/secrcs/RcsShareUI$10;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    return-object v0
.end method

.method public static getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCapabilityByNumber(Lcom/sec/ims/options/CapabilityManager;Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/options/CapabilityManager;->getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentCapabilities()V
    .locals 6

    const/4 v3, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " capabilitiesListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCnxManager.isServiceConnected(RcsServiceName.CAPABILITY) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/b/a/a/a/a$b;

    const/4 v4, 0x0

    sget-object v5, Lcom/b/a/a/a/a$b;->a:Lcom/b/a/a/a/a$b;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/b/a/a/a/a;->a([Lcom/b/a/a/a/a$b;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/b/a/a/a/a$b;

    const/4 v2, 0x0

    sget-object v3, Lcom/b/a/a/a/a$b;->a:Lcom/b/a/a/a/a$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a;->a([Lcom/b/a/a/a/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    invoke-virtual {v0}, Lcom/b/a/a/a/a;->c()Lcom/gsma/services/rcs/capability/b;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/b;->a(Lcom/gsma/services/rcs/capability/a;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/e; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RcsServiceException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gsma/services/rcs/e;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/incallui/secrcs/RcsShareUI;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {v0}, Lcom/android/incallui/secrcs/RcsShareUI;-><init>()V

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    return-object v0
.end method

.method private getMaxImageSize(Landroid/content/Context;)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "root/application/0/ext/maxsizeimageshare"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    move v0, v6

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISH maxsize return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_2
    :try_start_2
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoConfiguration Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public static getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

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

    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classname is on topActivity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classname is on classname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classname is on TOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isCraneRunning(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " isCraneRunning"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ComponentInfo{com.samsung.crane/com.samsung.crane.sketchimage.SketchActivity}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ComponentInfo{com.samsung.crane/com.samsung.crane.sketchmap.MapActivity}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ComponentInfo{com.samsung.crane/com.samsung.crane.sketchmap.GeoLocationPushActivity}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " Crane In Recent"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1

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
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "top most activity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mReConnect:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?disable_requery"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go for RCS"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go for RCS"

    invoke-static {v1, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_1

    :cond_2
    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method

.method private rcsServiceListener()Lcom/gsma/services/rcs/f;
    .locals 1

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secrcs/RcsShareUI$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    return-object v0
.end method

.method private releaseSoundPool(Landroid/media/SoundPool;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Release SoundPool"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After release SoundPool :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPhoneNumberBroadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPhoneNumberBroadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.contentsharing.action.NUMBER_TOKEN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.rcs.number.category.ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "num"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "state"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setupPromotedServiceButton"

    invoke-static {v0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupPromotedServiceButton null button"

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsCallPlusAvailable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p4, :cond_3

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CursorCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cursor not null, show Rcs buttons"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    invoke-virtual {p3, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p2, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    const-string v2, "MENU_STRING"

    const-string v3, "HOLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/widget/Button;)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cursor not null, show Rcs buttons"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    invoke-virtual {p2, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v2, "MENU_STRING"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value mAddCallButton="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/view/ViewStub;)V

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    if-eqz p4, :cond_9

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "code return from setupPromotedServiceButton"

    invoke-static {v0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-eqz v0, :cond_9

    iput v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    :cond_9
    const-string v0, " "

    const-string v0, ""

    if-eqz p4, :cond_a

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "feature_tag"

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v0, "int_name"

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    :cond_a
    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    if-eqz p4, :cond_c

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "is_enabled"

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mIsActiveCall?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isRcsServiceAvailable()? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mImsServiceDeregistered? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mIsHold? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHSelf:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHRemote:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "VSH service enabled"

    invoke-static {v0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    :goto_2
    const-string v0, "ims_rcs_bb"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_org"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const v0, 0x7f0201b6

    invoke-virtual {p3, v1, v0, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iput v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "VSH service disabled"

    invoke-static {v0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method private setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 11

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v10, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupRcsServicesButton()"

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupRcsServicesButton null button"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-eqz v0, :cond_4

    :cond_3
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cursor value null or empty, show legacy buttons"

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setupRcsServicesButton mIsSelfCapable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setupRcsServicesButton ImsCommonUtils.isAvailablePSVT() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    invoke-virtual {p3, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " setupRcsServicesButton mBluetoothButton.setVisibility(View.VISIBLE); "

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_5
    :goto_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " setupRcsServicesButton mBluetoothButton.setVisibility(View.VISIBLE); 2 "

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_6
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/widget/Button;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InCallUIFeature.hasFeature(InCallUIFeature.IMS.IMS_CRANE) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-nez v0, :cond_f

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cursor value not null, show RCS buttons"

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v10, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    invoke-virtual {p2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value  mBluetoothButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/view/ViewStub;)V

    if-eqz p4, :cond_a

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "code returning from setupRcsServicesButton "

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    if-eqz v0, :cond_a

    :cond_a
    const-string v2, " "

    const-string v0, " "

    if-eqz p4, :cond_13

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "service_name"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v1, "is_enabled"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v5, v4

    move v6, v3

    move v4, v1

    move v1, v3

    :cond_b
    :goto_2
    if-eqz p4, :cond_c

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {p4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "feature_tag"

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "featureTag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " skip!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_3
    if-eqz p4, :cond_e

    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v6, :cond_b

    :cond_e
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsActiveCall?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRcsServiceAvailable()? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mImsServiceDeregistered? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsHold? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isISHRemote:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isISHSelf:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v0, :cond_12

    invoke-virtual {p3, v10}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ISH service enabled "

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    const-string v0, "ims_rcs_bb"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_org"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const v0, 0x7f0201b5

    invoke-virtual {p3, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cursor value null,call disconnecting show legacy buttons"

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    invoke-virtual {p3, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " setupRcsServicesButton mBluetoothButton.setVisibility(View.VISIBLE); 3 "

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_10
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/widget/Button;)V

    goto/16 :goto_0

    :cond_11
    if-eqz v1, :cond_d

    sget-object v6, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupRcsServicesButton found enabled"

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v6, v1

    goto/16 :goto_3

    :cond_12
    invoke-virtual {p3, v3}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ISH service disabled "

    invoke-static {v0, v1, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_13
    move v1, v3

    move v4, v3

    move v5, v3

    move v6, v3

    goto/16 :goto_2
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "striping done...."

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "dir"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "state"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "type"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "size"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    if-nez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verifySessionStates incoming session id:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " type: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    iput v6, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    iput-wide v2, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    iput-wide v8, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    :try_start_2
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "verifySessionStates no sessions"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "acquireSessionInfo() exception"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    :try_start_4
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "verifySessionStates no sessions"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2
.end method

.method addCorrectionMargin(Landroid/view/ViewStub;)V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCorrectionMargin :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCorrectionMargin return:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    :cond_3
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0585

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_HORIZONTAL_MW_MARGIN_SUM:F

    div-float/2addr v0, v1

    float-to-int v1, v0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCorrectionMargin marginWidth:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method addCorrectionMargin(Landroid/widget/Button;)V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCorrectionMargin :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCorrectionMargin return:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    :cond_3
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0585

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_HORIZONTAL_MW_MARGIN_SUM:F

    div-float/2addr v0, v1

    float-to-int v1, v0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCorrectionMargin marginWidth:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public checkIfCapableOfRcsFileTransfer(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsCapaObserver : opening cursor"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No content resolver !"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v7

    goto :goto_0

    :cond_2
    move-object v1, v7

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnected! "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mReConnect:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isMT:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    :cond_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnected! CallList.getInstance().hasHoldCall() :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v0}, Lcom/sec/ims/options/CapabilityManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mListener:Lcom/sec/ims/options/CapabilityListener;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mListener:Lcom/sec/ims/options/CapabilityListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->unregisterListener(Lcom/sec/ims/options/CapabilityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    const-class v1, Lcom/sec/ims/options/CapabilityManager;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disconnected! mCapabilityManager assigned null "

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    if-eqz v0, :cond_6

    :try_start_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    invoke-virtual {v0}, Lcom/b/a/a/a/a;->c()Lcom/gsma/services/rcs/capability/b;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/b;->b(Lcom/gsma/services/rcs/capability/a;)V
    :try_end_2
    .catch Lcom/gsma/services/rcs/e; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const-class v1, Lcom/gsma/services/rcs/capability/a;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->capabilitiesListener:Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mServiceApi:Lcom/gsma/services/rcs/RcsService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mServiceApi:Lcom/gsma/services/rcs/RcsService;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsService;->b()V

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mServiceApi:Lcom/gsma/services/rcs/RcsService;

    :cond_7
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException ConnectionListener :"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/e;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public dismissIncomingDialog()V
    .locals 5

    const/4 v4, 0x0

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

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After dismiss mIncomingDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    throw v0
.end method

.method public dismissIncomingInvitationDialog()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing mIncomingInvitationDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After dismiss mIncomingInvitationDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIncomingInvitationDialog should be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIncomingInvitationDialog should be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

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

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    throw v0
.end method

.method public fetchOwnCapabilities()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v1}, Lcom/sec/ims/options/CapabilityManager;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myCapabilities : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallSelf:Z

    :goto_2
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-nez v1, :cond_2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallSelf:Z

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    :goto_3
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_6

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallSelf:Z

    :goto_4
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isISHSelf:Z

    :goto_5
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHSelf:Z

    goto :goto_1

    :cond_3
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallSelf:Z

    goto :goto_2

    :cond_4
    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    :cond_5
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallSelf:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    goto :goto_3

    :cond_6
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallSelf:Z

    goto :goto_4

    :cond_7
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isISHSelf:Z

    goto :goto_5

    :cond_8
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHSelf:Z

    goto :goto_1

    :cond_9
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    :cond_a
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallSelf:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallSelf:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallSelf:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHRemote:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isISHRemote:Z

    goto/16 :goto_1
.end method

.method public generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null telephone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J
    .locals 6

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    goto :goto_0
.end method

.method public getComposerAuth(Landroid/content/Context;)I
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isauth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_4

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursorbrand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursorbrand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v6

    :goto_1
    move v7, v0

    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_3
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

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    move v0, v7

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    :try_start_3
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoConfiguration Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :cond_4
    move v7, v9

    goto/16 :goto_2

    :cond_5
    move-object v1, v8

    goto/16 :goto_0
.end method

.method public getCraneCap(IILjava/lang/String;)V
    .locals 7

    const/16 v6, 0x68

    const/16 v5, 0x67

    const/4 v4, 0x1

    const-string v0, "getCraneCap : "

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " getCraneCap mCapabilityManager null"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-ne p1, v5, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v0}, Lcom/sec/ims/options/CapabilityManager;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    :cond_2
    :goto_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " capabilities :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_7

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PRECALL_CAP is Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallSelf:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "checkOwnCapability - error"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-ne p1, v6, :cond_2

    :try_start_1
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->getCapabilityByNumber(Lcom/sec/ims/options/CapabilityManager;Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-ne p1, v6, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallRemote:Z

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PRECALL_CAP is not Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallSelf:Z

    goto/16 :goto_0

    :cond_6
    if-ne p1, v6, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallRemote:Z

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " FEATURE_ENRICHED_CALL_COMPOSER is not Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_8

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallSelf:Z

    goto/16 :goto_0

    :cond_8
    if-ne p1, v6, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallRemote:Z

    goto/16 :goto_0

    :pswitch_1
    if-eqz v0, :cond_9

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    if-eqz v0, :cond_11

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_a
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " INCALL_CAP is Available cap_type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_d

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    :cond_b
    :goto_2
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " INCALL_CAP is Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallSelf:Z

    :cond_c
    :goto_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCraneRemote :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCrane :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    if-ne p1, v6, :cond_b

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    goto :goto_2

    :cond_e
    if-ne p1, v6, :cond_c

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallRemote:Z

    goto :goto_3

    :cond_f
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " INCALL_CAP is not Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_10

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallSelf:Z

    goto :goto_3

    :cond_10
    if-ne p1, v6, :cond_c

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallRemote:Z

    goto :goto_3

    :cond_11
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " FEATURE_ENRICHED_SHARED_MAP is not Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_12

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallSelf:Z

    goto/16 :goto_3

    :cond_12
    if-ne p1, v6, :cond_c

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallRemote:Z

    goto/16 :goto_3

    :cond_13
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :pswitch_2
    if-eqz v0, :cond_17

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " POSTCALL_CAP is Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_14

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallSelf:Z

    goto/16 :goto_0

    :cond_14
    if-ne p1, v6, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallRemote:Z

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " INCALL_CAP is not Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_16

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallSelf:Z

    goto/16 :goto_0

    :cond_16
    if-ne p1, v6, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallRemote:Z

    goto/16 :goto_0

    :cond_17
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " FEATURE_ENRICHED_POST_CALL is not Available cap_type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_18

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallSelf:Z

    goto/16 :goto_0

    :cond_18
    if-ne p1, v6, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallRemote:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getInvitationText(Landroid/content/res/Resources;Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI$11;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f090620

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090289

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09028c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090621

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090622

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

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

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    :cond_0
    return-void
.end method

.method public isCallPlusAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    return v0
.end method

.method public isConference()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    return v0
.end method

.method public isCshRunning(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ComponentInfo{com.samsung.rcs/com.samsung.rcs.share.ContentShareActivity}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isCshTopMostActivity(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.rcs.share.ContentShareActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExtraVolumeAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    return v0
.end method

.method public isISHButtonAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    return v0
.end method

.method public isImsServiceDeregistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    return v0
.end method

.method public isInvitationActive(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

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

    return v0
.end method

.method public isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->queryOwn(Landroid/content/Context;)V

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    :cond_1
    const-string v0, "+g.3gpp.cs-voice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRcsFTAvailable(Landroid/database/Cursor;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "is_enabled"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_tag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "featureTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableFT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isRcsOnTopScreen(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.rcs.share.ContentShareActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.samsung.rcs.share.RcsSharingServiceListDialog"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RCS is on TOP"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public isRcsServiceAvailable()Z
    .locals 3

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

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    return v0
.end method

.method public isRcsServicePromoted()Z
    .locals 3

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

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    return v0
.end method

.method public isShareActive(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "dir"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "state"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const-string v2, "state"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_4

    :cond_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "found active session connecting/in progress "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_SESSION_DIRECTION : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dir"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_SESSION_STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is Share active? returnVal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Bad RCS query, no actives shares? "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public isSharingDialogTopMostActivity(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.rcs.share.RcsSharingServiceListDialog"

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVSHButtonAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    return v0
.end method

.method public isVoiceMail()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const-string v1, "isVoiceMail()"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoicemail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "alertoncall_mode"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside notifyUser Beep Sound alertoncallModeIndex :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :pswitch_2
    const-string v0, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Playing Notification Sound"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v1, v5, [Landroid/content/Context;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

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

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRcsUiElements() promotedButton : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p9}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

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

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

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

    sput-object p1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    sput-object p9, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    sput-object p2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    sput-object p6, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    sput-object p3, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    sput-object p4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    sput-object p5, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    sput-object p7, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    iput-boolean p8, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;

    invoke-direct {v0, p0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;

    invoke-direct {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    goto :goto_1
.end method

.method public queryOwn(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwn : ownCursor == null"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->readDataFromQueryOwn(Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_3
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryOwn : RCS Query Failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public queryOwnCaps(Landroid/content/Context;)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_10

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwnCaps, cursor is null"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    :cond_2
    :goto_1
    return v0

    :cond_3
    :try_start_2
    const-string v0, "feature_tag"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "is_enabled"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move v0, v7

    move v2, v7

    move v4, v7

    move v5, v6

    :goto_2
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_b

    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v5, v7

    :cond_5
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v3, v6

    move v4, v5

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-nez v5, :cond_e

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v4, :cond_7

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "queryOwnCaps, IM Service is impossible because own caps is null or unavailable."

    invoke-static {v1, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryOwnCaps, forceFinish is : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryOwnCaps, FT capability is : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryOwnCaps, GC capability is : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOwnCaps, localOffline is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v4, :cond_d

    if-nez v0, :cond_d

    move v0, v6

    :goto_4
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selfcapable  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "QUERYCALLPLUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    :try_start_3
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v3, "additional_info"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_9
    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_a
    const-string v11, "ft-in-group-chat"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_b
    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_f

    move v0, v6

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :cond_d
    move v0, v7

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_e
    move v5, v4

    move v4, v3

    goto/16 :goto_2

    :cond_f
    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_10
    move-object v1, v8

    goto/16 :goto_0
.end method

.method public readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "readDataFromQueryOwn"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "feature_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "is_enabled"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor.getCount()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v3, :cond_3

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    return-void

    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v3, :cond_4

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_1

    const-string v4, "+g.3gpp.cs-voice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0
.end method

.method public registerRcsObserver(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

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

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->rcsEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-ne p2, v3, :cond_2

    new-instance v0, Lcom/android/incallui/secrcs/RcsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/android/incallui/secrcs/RcsContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsContentObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    :cond_3
    new-instance v0, Lcom/android/incallui/secrcs/RcsCapaObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/incallui/secrcs/RcsCapaObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsCapaObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4

    const/high16 v3, 0x10000000

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resuming share..! "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "resume share since active share "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " Launch Crane"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.crane.sketchimage.SketchActivity"

    invoke-static {v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.crane.sketchimage.LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.crane.sketchmap.MapActivity"

    invoke-static {v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.samsung.crane.sketchmap.LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.crane.sketchmap.GeoLocationPushActivity"

    invoke-static {v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.crane.sharelocation.LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.intent.action.RCS_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.intent.extra.RCS_TOAST_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    return-void
.end method

.method public setCallPlusAvailable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    return-void
.end method

.method public setExtraVolumeAvailable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    return-void
.end method

.method public setImsServiceDeregistered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    return-void
.end method

.method public setNoShowVolumeAvailable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    return-void
.end method

.method public setupConnection(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "setupConnection : "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mtSideNumber:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "Context is null return : "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->checkRcsServiceRegistered(Landroid/content/Context;)V

    invoke-static {}, Lcom/b/a/a/a/a;->a()Lcom/b/a/a/a/a;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/d;->a(Landroid/content/Context;)Lcom/gsma/services/rcs/d;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsServiceControl:Lcom/gsma/services/rcs/d;

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsServiceControl:Lcom/gsma/services/rcs/d;

    const-class v2, Lcom/b/a/a/a/a$b;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/a/a/a;->a(Landroid/content/Context;Lcom/gsma/services/rcs/d;Ljava/util/Set;)Lcom/b/a/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCraneCap mCnxManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    invoke-virtual {v0}, Lcom/b/a/a/a/a;->b()V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " mCapabilityManager initialization "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/sec/ims/options/CapabilityManager;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " mCapabilityManager null"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/b/a/a/a/a;->a()Lcom/b/a/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mCnxManager:Lcom/b/a/a/a/a;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v0}, Lcom/sec/ims/options/CapabilityManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " mCapabilityManager is connected  "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mListener:Lcom/sec/ims/options/CapabilityListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteException ConnectionListener :"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->connectionListener()Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->setConnectionListener(Lcom/sec/ims/options/CapabilityManager$ConnectionListener;)V

    goto/16 :goto_0
.end method

.method public setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 7

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v1, 0x7f100219

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v2, 0x7f10021a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupInviteCallCardButtons "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$6;

    invoke-direct {v4, p0, p3}, Lcom/android/incallui/secrcs/RcsShareUI$6;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$7;

    invoke-direct {v0, p0, v2, v3, p2}, Lcom/android/incallui/secrcs/RcsShareUI$7;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/secrcs/RcsInvitation;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupLegacyInCallButtons() mPromotedButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    :cond_0
    sput-object p1, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    sput-object p2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "State = Dialing  or Hold"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p4, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    if-eqz p6, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " setupLegacyInCallButtons mBluetoothButton.setVisibility(View.VISIBLE); "

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsConference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceRegistered:Z

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setupLegacyInCallButtons ,Cursor not null"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    iput-boolean v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    const-string v1, "MENU_STRING"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mIsVSHButtonAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mPromotedService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p4, v5}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/view/ViewStub;)V

    :cond_4
    :goto_0
    if-eqz p5, :cond_9

    if-eqz p6, :cond_9

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-nez v1, :cond_9

    const-string v1, "ims_crane"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v1, :cond_9

    iput-boolean v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    const-string v1, "MENU_STRING"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mIsISHButtonAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsCallPlusAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_5

    invoke-virtual {p2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_5
    invoke-virtual {p5, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p6, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, p5}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/view/ViewStub;)V

    :cond_6
    :goto_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "broadcast sent for menu change"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_7
    if-eqz p1, :cond_4

    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    const-string v1, "MENU_STRING"

    const-string v2, "HOLD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mIsVSHButtonAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p4, :cond_8

    invoke-virtual {p4, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/widget/Button;)V

    goto/16 :goto_0

    :cond_9
    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    iget-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-nez v1, :cond_a

    const-string v1, "MENU_STRING"

    const-string v2, "HOLD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mIsISHButtonAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsCallPlusAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, " setupLegacyInCallButtons mBluetoothButton.setVisibility(View.VISIBLE); 2 "

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_b
    if-eqz p5, :cond_c

    invoke-virtual {p5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_c
    if-eqz p6, :cond_d

    invoke-virtual {p6, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/widget/Button;)V

    goto/16 :goto_1

    :cond_e
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setupLegacyInCallButtons no RCS"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/widget/Button;)V

    :cond_f
    if-eqz p2, :cond_10

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    if-nez v1, :cond_10

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, " setupLegacyInCallButtons mBluetoothButton.setVisibility(View.VISIBLE); 3 "

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addCorrectionMargin(Landroid/widget/Button;)V

    :cond_10
    if-eqz p3, :cond_12

    if-eqz p4, :cond_11

    invoke-virtual {p4, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_11
    invoke-virtual {p3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_12
    if-eqz p5, :cond_6

    if-eqz p6, :cond_13

    invoke-virtual {p6, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    invoke-virtual {p5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 11

    const v10, 0x7f090288

    const v9, 0x7f0900aa

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " Battery unavaialble "

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v2}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :cond_2
    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v2}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    if-ge v1, v8, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, " ISH Battery unavaialble "

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->showISHBatteryError(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Did not find RCS service..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0010

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Intializing dialog incoming"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v3, 0x7f040093

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupRcsCallCard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    if-eqz v0, :cond_12

    iget v0, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    if-ne v0, v8, :cond_12

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_12

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCallCard hasInvite"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setup wakelock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, " Acquire wakelock "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const v3, 0x1000001a

    const-string v4, "TAG"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_6
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_7
    iget v0, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI$11;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default case"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    new-array v1, v8, [Ljava/lang/CharSequence;

    const v0, 0x7f090290

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    new-array v0, v6, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_a

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v4

    iget v4, v4, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v5, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_8

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    if-eqz v4, :cond_f

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    const v0, 0x7f09028c

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_8
    :goto_2
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v1}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    iget v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_9

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$3;

    invoke-direct {v0, p0, v3, p3}, Lcom/android/incallui/secrcs/RcsShareUI$3;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {v2, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_9
    :goto_3
    const v0, 0x7f0902a6

    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$5;

    invoke-direct {v1, p0, v3}, Lcom/android/incallui/secrcs/RcsShareUI$5;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_a
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Showing dialog incoming"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-class v1, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_c

    invoke-virtual {p0, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsOnTopScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InComing invite Produce "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v3, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v3}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_11

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f090289

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_b
    :goto_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_c
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_d
    :goto_5
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "wakeLock released "

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sessionType: IMAGE_SHARE"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getMaxImageSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionType: IMAGE_SHARE SIZE is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v1, 0x7f09028b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f09028b

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sessionType: VIDEO_SHARE"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v1, 0x7f09028d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f09028d

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_f
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "builder 1 "

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    iget v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    if-ne v4, v6, :cond_13

    :goto_6
    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/secrcs/RcsShareUI$2;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    invoke-virtual {v2, v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    if-ne v0, v6, :cond_8

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    goto/16 :goto_2

    :cond_10
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$4;

    invoke-direct {v0, p0, v3, p3}, Lcom/android/incallui/secrcs/RcsShareUI$4;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {v2, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_11
    :try_start_4
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7f09028c

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCallCard has no invites"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    goto/16 :goto_5

    :cond_13
    move-object v0, v1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showBatteryError(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0900a3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showISHBatteryError(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0900a3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLiveVideo() context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null info"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start RCS startRcsActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "CRANE_CAPA"

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find RCS activity..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null info"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start RCS startRcsService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find RCS activity..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRcsSharingDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public stopOverlayService(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.contentshare.ShareOverlayService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public tearDown()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tearDown()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    :cond_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    :cond_4
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    :cond_5
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    :cond_6
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    :cond_7
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    :cond_8
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    return-void
.end method

.method public unregisterRcsObserver(I)V
    .locals 4

    const/4 v3, 0x0

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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    iput-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    iput-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    goto :goto_0
.end method

.method public updateAudioState(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " updateAudioState from Notification "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updateRemoteCapabilities(Lcom/sec/ims/options/Capabilities;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRemoteCapabilities remoteCapabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.incalllui.rcsshareui.action.ACTION_CAPABILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {p1, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallRemote:Z

    :goto_0
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {p1, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-nez v1, :cond_0

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {p1, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isSketch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_1

    const-string v1, "isSketch"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallRemote:Z

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {p1, v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallRemote:Z

    :goto_2
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isISHRemote:Z

    :goto_3
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHRemote:Z

    :cond_2
    :goto_4
    return-void

    :cond_3
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallRemote:Z

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isSketch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallRemote:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallRemote:Z

    goto :goto_2

    :cond_6
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isISHRemote:Z

    goto :goto_3

    :cond_7
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHRemote:Z

    goto :goto_4

    :cond_8
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPreCallRemote:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isInCallRemote:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isPostCallRemote:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHRemote:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isISHRemote:Z

    goto :goto_4
.end method
