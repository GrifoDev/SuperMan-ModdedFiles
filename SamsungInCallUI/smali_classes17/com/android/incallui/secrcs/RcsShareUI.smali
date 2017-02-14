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

.field private static mAddCallButton:Landroid/widget/Button;

.field private static mBluetoothButton:Landroid/widget/ToggleButton;

.field private static mContext:Landroid/content/Context;

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


# instance fields
.field private isVSHEnable:I

.field private mBatteryLevel:I

.field private mCall:Lcom/android/incallui/Call;

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
    .locals 3

    const/4 v2, 0x0

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

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

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

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->is2G:Z

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$7;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->rcsEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1300()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    sput-object p0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/media/SoundPool;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->releaseSoundPool(Landroid/media/SoundPool;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/incallui/secrcs/RcsShareUI;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/ViewStub;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$500()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/secrcs/RcsShareUI;->setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$800()Landroid/view/ViewStub;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x1

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

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
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

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static applyNonCallPlus()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

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

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

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

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getComposerAuth(Landroid/content/Context;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

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

    :cond_0
    if-eqz v8, :cond_1

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

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

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

    if-eqz v6, :cond_3

    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

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

    return v7

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

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

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
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
    .locals 9

    const/4 v8, -0x1

    const/4 v6, 0x0

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

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "root/application/0/ext/maxsizeimageshare"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

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

    return v8

    :catch_0
    move-exception v7

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

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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
    .locals 9

    const/4 v2, 0x0

    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

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

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

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

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    return v3

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method public static isCraneRunning(Landroid/content/Context;)Z
    .locals 6

    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ravi isCraneRunning"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

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

    :cond_0
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ravi Crane In Recent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 10

    const/4 v9, 0x0

    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

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

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    :goto_0
    return-object v6

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0

    :cond_1
    sput-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0
.end method

.method private releaseSoundPool(Landroid/media/SoundPool;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Release SoundPool"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    const/4 p1, 0x0

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

    :cond_0
    return-void
.end method

.method public static sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

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

    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

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

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.contentsharing.action.NUMBER_TOKEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.rcs.number.category.ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "num"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 11

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton null button"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

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

    if-eqz p4, :cond_3

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

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

    :cond_4
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor not null, show Rcs buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const-string v7, "MENU_STRING"

    const-string v8, "HOLD"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor not null, show Rcs buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    const-string v7, "MENU_STRING"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    if-eqz p4, :cond_8

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code return from setupPromotedServiceButton"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    const-string v4, " "

    const/4 v1, 0x0

    const-string v0, ""

    if-eqz p4, :cond_9

    const-string v7, "feature_tag"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "int_name"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    if-nez p5, :cond_a

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton not promoted"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p4, :cond_c

    const-string v7, "is_enabled"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

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

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_e

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_e

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "VSH service enabled"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v7, 0x2

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    :goto_1
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    const/4 v7, 0x0

    const v8, 0x7f020143

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v7, v8, v9, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "VSH service disabled"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 11

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton()"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton null button"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

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

    :cond_5
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value null or empty, show legacy buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0

    :cond_6
    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value not null, show RCS buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

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

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    if-eqz p4, :cond_9

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code returning from setupRcsServicesButton "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value null,call disconnecting show legacy buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v5, " "

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, " "

    if-eqz p4, :cond_a

    const-string v7, "service_name"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "is_enabled"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :cond_a
    if-eqz p4, :cond_b

    invoke-interface {p4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v7, "feature_tag"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

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

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

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

    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v0, :cond_a

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

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_10

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_10

    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ISH service enabled "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    const/4 v7, 0x0

    const v8, 0x7f020142

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v7, v8, v9, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_c

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton found enabled"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_1

    :cond_10
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ISH service disabled "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

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
    .locals 14

    new-instance v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    const/4 v0, 0x0

    const/4 v11, 0x0

    :try_start_0
    iput-boolean v11, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_0
    const-string v11, "id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v11, "dir"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v11, "state"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v11, "type"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v11, "size"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-nez v3, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

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

    iput v8, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    iput v9, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    iput-wide v6, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    iput-wide v4, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-object v10

    :cond_4
    :try_start_1
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "verifySessionStates no sessions"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "acquireSessionInfo() exception"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    :try_start_3
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "verifySessionStates no sessions"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v11
.end method

.method public checkIfCapableOfRcsFileTransfer(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 10

    const/4 v9, 0x1

    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver : opening cursor"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v9

    :goto_1
    return v2

    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No content resolver !"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "disconnected! "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    :cond_0
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    :cond_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    :cond_2
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public dismissIncomingDialog()V
    .locals 5

    const/4 v4, 0x0

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

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    throw v1
.end method

.method public dismissIncomingInvitationDialog()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

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

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

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

    :cond_0
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

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

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

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

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

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
    .locals 4

    const/4 v1, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    goto :goto_0
.end method

.method public getInvitationText(Landroid/content/res/Resources;Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI$8;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f090551

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090219

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09021c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090552

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090553

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
    .locals 6

    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

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

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

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

    move-result-object v1

    iget-boolean v0, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

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

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "is_enabled"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_tag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

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

    return v1
.end method

.method public isRcsOnTopScreen(Landroid/content/Context;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.rcs.share.ContentShareActivity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.rcs.share.RcsSharingServiceListDialog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v6, "RCS is on TOP"

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    return v3

    :cond_2
    move v3, v2

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
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "dir"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "state"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const-string v3, "state"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    :cond_1
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "found active session connecting/in progress "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

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

    return v2

    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
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
    .locals 8

    const/4 v7, 0x1

    const-string v4, "isVoiceMail()"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

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

    goto :goto_0
.end method

.method public notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v1, "alertoncall_mode"

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

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

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :pswitch_2
    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Playing Notification Sound"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v6, v9, [Landroid/content/Context;

    aput-object p1, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    const-string v3, "prepareRcsUiElements()"

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

    iput-object p9, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

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
    .locals 8

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

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

    if-nez v6, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->readDataFromQueryOwn(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v7

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

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public queryOwnCaps(Landroid/content/Context;)Z
    .locals 20

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x1

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwnCaps, cursor is null"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :try_start_1
    const-string v1, "feature_tag"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const-string v1, "is_enabled"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    :cond_4
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_d

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

    :cond_5
    const/4 v13, 0x0

    :cond_6
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v16, 0x1

    :cond_7
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_8
    if-eqz v13, :cond_9

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwnCaps, IM Service is impossible because own caps is null or unavailable."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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

    if-nez v13, :cond_f

    if-nez v15, :cond_f

    const/4 v14, 0x1

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

    if-eqz v14, :cond_a

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v1, "QUERYCALLPLUS"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a
    move v1, v14

    goto/16 :goto_0

    :cond_b
    :try_start_2
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "additional_info"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    goto/16 :goto_1

    :cond_c
    const-string v1, "ft-in-group-chat"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v17, v11

    goto/16 :goto_1

    :cond_d
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    const/4 v15, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_e
    throw v1

    :cond_f
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "feature_tag"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "is_enabled"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

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

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

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

    if-eqz v3, :cond_3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    return-void

    :cond_3
    if-eqz v3, :cond_4

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v0, :cond_4

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_1

    const-string v4, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

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
    .locals 5

    const/high16 v4, 0x10000000

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resuming share..! "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resume share since active share "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ravi Launch Crane"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.crane.sketchimage.SketchActivity"

    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.samsung.crane.sketchimage.LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.crane.sketchmap.MapActivity"

    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.crane.sketchmap.LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

.method public setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v5, 0x7f1001a2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v5, 0x7f1001a3

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

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

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$5;

    invoke-direct {v4, p0, p3}, Lcom/android/incallui/secrcs/RcsShareUI$5;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$6;

    invoke-direct {v4, p0, v1, v2, p2}, Lcom/android/incallui/secrcs/RcsShareUI$6;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/secrcs/RcsInvitation;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons()"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    :cond_0
    sput-object p1, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    sput-object p2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "State = Dialing "

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p4, :cond_1

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    if-eqz p6, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

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

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons ,Cursor not null"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    const-string v2, "MENU_STRING"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    invoke-virtual {p3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p4, v6}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

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

    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    const-string v2, "MENU_STRING"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    if-eqz p2, :cond_4

    invoke-virtual {p2, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    invoke-virtual {p5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p6, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "broadcast sent for menu change"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_6
    if-eqz p1, :cond_3

    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    const-string v2, "MENU_STRING"

    const-string v3, "HOLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p4, :cond_3

    invoke-virtual {p4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_5

    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-nez v2, :cond_8

    const-string v2, "MENU_STRING"

    const-string v3, "HOLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    invoke-virtual {p2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons no RCS"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_b
    if-eqz p3, :cond_d

    if-eqz p4, :cond_c

    invoke-virtual {p4, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    invoke-virtual {p3, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_d
    if-eqz p5, :cond_5

    if-eqz p6, :cond_e

    invoke-virtual {p6, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    invoke-virtual {p5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 18

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    const/4 v15, 0x6

    if-ge v14, v15, :cond_4

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, " Battery unavaialble "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v15, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-ne v14, v15, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v15, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    const/4 v15, 0x2

    if-ge v14, v15, :cond_3

    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_4

    const-string v14, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v15

    iget-wide v0, v15, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, " ISH Battery unavaialble "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->showISHBatteryError(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Did not find RCS service..."

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0b0010

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-class v15, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v15

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-nez v14, :cond_5

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Intializing dialog incoming"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v14, Landroid/app/Dialog;

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v16, 0x7f040082

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setContentView(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_5
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setupRcsCallCard "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v12

    iget-boolean v14, v12, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    if-eqz v14, :cond_f

    iget v14, v12, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_f

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "RcsCallCard hasInvite"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p3}, Lcom/android/incallui/secrcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V

    iget v14, v12, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    invoke-static {v14}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    move-result-object v13

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI$8;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual {v13}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Default case"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    const/4 v14, 0x2

    new-array v2, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const v15, 0x7f090220

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x1

    const v15, 0x7f090218

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const v15, 0x7f090218

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v9, p3

    if-eqz v4, :cond_9

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v14, "ims_crane"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v15, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-eq v14, v15, :cond_7

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "builder 1 "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object v2, v3

    :cond_6
    const/4 v14, 0x0

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/incallui/secrcs/RcsShareUI$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    invoke-virtual {v4, v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    :cond_7
    const-string v14, "ims_crane"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v15, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v15}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v15

    if-ne v14, v15, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v14

    iget-wide v14, v14, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_8

    const v14, 0x7f090087

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v9}, Lcom/android/incallui/secrcs/RcsShareUI$2;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_8
    :goto_2
    const v14, 0x7f09022f

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$4;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_9
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Showing dialog incoming"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-class v15, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v15

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsOnTopScreen(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_b

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "InComing invite Produce "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v14

    iget v14, v14, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v16, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v16

    move/from16 v0, v16

    if-ne v14, v0, :cond_e

    const-string v14, "ims_crane"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const v14, 0x7f090219

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_a
    :goto_3
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    :cond_b
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    :pswitch_0
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "sessionType: IMAGE_SHARE"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v14, "ims_crane"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getMaxImageSize(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sessionType: IMAGE_SHARE SIZE is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v15, 0x7f09021b

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(I)V

    const v14, 0x7f09021b

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :pswitch_1
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "sessionType: VIDEO_SHARE"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v15, 0x7f09021e

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(I)V

    const v14, 0x7f09021e

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_d
    const v14, 0x7f090087

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v9}, Lcom/android/incallui/secrcs/RcsShareUI$3;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_e
    :try_start_4
    const-string v14, "ims_crane"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const v14, 0x7f09021c

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "RcsCallCard has no invites"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showBatteryError(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f090082

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showISHBatteryError(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f090082

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4

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

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

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

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CRANE_CAPA"

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

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

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRcsSharingDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

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
    .locals 3

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, " updateAudioState from Notification "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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
