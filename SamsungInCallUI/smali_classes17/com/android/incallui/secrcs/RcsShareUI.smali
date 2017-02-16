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

    .prologue
    const/4 v2, 0x0

    .line 60
    const-class v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    .line 80
    const-string v0, "remote_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_REMOTE_OFFLINE:Ljava/lang/String;

    .line 81
    const-string v0, "local_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    .line 88
    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    .line 100
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    .line 103
    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->AUTO_CONFIGURATION_URI_CRANE:Landroid/net/Uri;

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    .line 141
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    .line 142
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    .line 152
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    .line 153
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 154
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 155
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 156
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->is2G:Z

    .line 160
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    .line 1932
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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    .line 117
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 120
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    .line 122
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 123
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 143
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    .line 159
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    .line 248
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/ViewStub;
    .param p3, "x3"    # Landroid/widget/Button;
    .param p4, "x4"    # Landroid/database/Cursor;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsServicesButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    return v0
.end method

.method static synthetic access$1300()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 58
    sput-object p0, Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/media/SoundPool;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->releaseSoundPool(Landroid/media/SoundPool;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/incallui/Call;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/incallui/secrcs/RcsShareUI;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$500()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/secrcs/RcsShareUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/ViewStub;
    .param p3, "x3"    # Landroid/widget/Button;
    .param p4, "x4"    # Landroid/database/Cursor;
    .param p5, "x5"    # Z

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/secrcs/RcsShareUI;->setupPromotedServiceButton(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$800()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1291
    const/4 v2, 0x0

    .line 1292
    .local v2, "isSpeakerOn":Z
    const/4 v1, 0x0

    .line 1293
    .local v1, "isBluetoothOn":Z
    const/4 v0, 0x0

    .line 1295
    .local v0, "isBluetoothAvailable":Z
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1296
    const/4 v2, 0x1

    .line 1300
    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1301
    const/4 v1, 0x1

    .line 1304
    :goto_1
    const/4 v0, 0x1

    .line 1306
    const-string v3, "contactNumber"

    invoke-static {p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    const-string v3, "contactName"

    invoke-static {p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    const-string v3, "contactLabel"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1309
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1311
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1312
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1314
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1315
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1319
    return-void

    .line 1298
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1303
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static applyCallPlus()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 751
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

    .line 752
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 753
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 754
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 756
    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v0, :cond_2

    .line 757
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 758
    :cond_2
    return-void
.end method

.method public static applyNonCallPlus()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 762
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

    .line 763
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    if-nez v0, :cond_2

    .line 764
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 765
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 766
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 767
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 777
    :cond_1
    :goto_0
    return-void

    .line 770
    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 771
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 772
    :cond_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 774
    :cond_4
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v0, :cond_1

    .line 775
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 792
    if-nez p1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-object v1

    .line 795
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 796
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 795
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 797
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 798
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getComposerAuth(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 357
    const/4 v7, -0x1

    .line 358
    .local v7, "craneavailable":I
    const/4 v8, 0x0

    .line 360
    .local v8, "cursorbrand":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
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

    .line 362
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

    .line 364
    :cond_0
    if-eqz v8, :cond_1

    .line 365
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

    .line 366
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 368
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

    .line 369
    if-eqz v6, :cond_3

    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    const/4 v7, 0x1

    .line 371
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    .line 372
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v6    # "boolStr":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 387
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

    .line 388
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

    .line 389
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

    .line 390
    return v7

    .line 374
    .restart local v6    # "boolStr":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    .end local v6    # "boolStr":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 381
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

    .line 382
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    if-eqz v8, :cond_2

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 377
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getInstance()Lcom/android/incallui/secrcs/RcsShareUI;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {v0}, Lcom/android/incallui/secrcs/RcsShareUI;-><init>()V

    sput-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    .line 167
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    return-object v0
.end method

.method private getMaxImageSize(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    const/4 v8, -0x1

    .line 395
    .local v8, "maxsize":I
    const/4 v6, 0x0

    .line 397
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

    .line 399
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "root/application/0/ext/maxsizeimageshare"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 405
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
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

    .line 408
    return v8

    .line 402
    :catch_0
    move-exception v7

    .line 403
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

    .line 405
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

    .line 780
    if-nez p1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-object v1

    .line 783
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 784
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 783
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 785
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 786
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

    .line 1029
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

    .line 1036
    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    .line 1037
    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1029
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 1173
    const/4 v2, 0x0

    .line 1174
    .local v2, "isTopActivity":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1175
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1176
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

    .line 1177
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

    .line 1178
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

    .line 1179
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1180
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

    .line 1181
    const/4 v2, 0x1

    move v3, v2

    .line 1185
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
    .line 1188
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ravi isCraneRunning"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1190
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1191
    .local v1, "activitys":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 1192
    .local v3, "isActivityFound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1193
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

    .line 1194
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

    .line 1196
    :cond_0
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ravi Crane In Recent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const/4 v3, 0x1

    .line 1201
    :cond_1
    return v3

    .line 1192
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 438
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

    .line 1337
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1338
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1339
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1341
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

    .line 1343
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

    .line 332
    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "telNum":Ljava/lang/String;
    const/4 v6, 0x0

    .line 334
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    .line 335
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

    .line 336
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

    .line 338
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 340
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    .line 353
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v6

    .line 343
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v7

    .line 347
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sput-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0

    .line 351
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

    .line 917
    if-eqz p1, :cond_0

    .line 918
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Release SoundPool"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 919
    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    .line 920
    const/4 p1, 0x0

    .line 921
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

    .line 923
    :cond_0
    return-void
.end method

.method public static sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mnewcall"    # Lcom/android/incallui/Call;

    .prologue
    .line 1941
    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 1942
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

    .line 1943
    invoke-static {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 1944
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

    .line 1945
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.contentsharing.action.NUMBER_TOKEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1946
    .local v1, "phoneNumberIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.rcs.number.category.ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1947
    const-string v3, "num"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1948
    const-string v3, "name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1949
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1950
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
    .line 451
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 454
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 455
    :cond_0
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton null button"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 459
    .local v2, "broadcast":Landroid/content/Intent;
    const-string v7, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
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

    .line 462
    if-eqz p4, :cond_3

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 463
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

    .line 465
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

    .line 466
    :cond_4
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor not null, show Rcs buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 467
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 468
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 469
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 470
    const-string v7, "MENU_STRING"

    const-string v8, "HOLD"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 472
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_1

    .line 473
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 478
    :cond_5
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor not null, show Rcs buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 479
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 480
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 481
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    const-string v7, "MENU_STRING"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
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

    .line 484
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_6

    .line 485
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    :cond_6
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_7

    .line 490
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    :cond_7
    if-eqz p4, :cond_8

    invoke-interface {p4}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_8

    .line 495
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code return from setupPromotedServiceButton"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 496
    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-eqz v7, :cond_1

    .line 497
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    goto/16 :goto_0

    .line 502
    :cond_8
    const/4 v5, 0x0

    .line 503
    .local v5, "feature_tag_idx":I
    const-string v4, " "

    .line 504
    .local v4, "featureTag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 505
    .local v1, "action_idx":I
    const-string v0, ""

    .line 506
    .local v0, "action":Ljava/lang/String;
    if-eqz p4, :cond_9

    .line 507
    const-string v7, "feature_tag"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 508
    invoke-interface {p4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 509
    const-string v7, "int_name"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 510
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    :cond_9
    if-nez p5, :cond_a

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    .line 518
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 519
    :cond_a
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupPromotedServiceButton not promoted"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    .line 521
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 526
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    .line 529
    const/4 v3, 0x0

    .line 530
    .local v3, "enabled":I
    const/4 v6, 0x0

    .line 531
    .local v6, "is_enabled_idx":I
    if-eqz p4, :cond_c

    .line 532
    const-string v7, "is_enabled"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 533
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 536
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

    .line 537
    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_e

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_e

    .line 538
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "VSH service enabled"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 539
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 540
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    .line 547
    :goto_1
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 548
    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    .line 549
    const/4 v7, 0x0

    const v8, 0x7f020143

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v7, v8, v9, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 553
    :cond_d
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 554
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 542
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    .line 544
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
    .line 565
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton()"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 567
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 568
    :cond_0
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton null button"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 572
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

    .line 574
    :cond_5
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value null or empty, show legacy buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 575
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 576
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 578
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v7, :cond_1

    .line 579
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0

    .line 583
    :cond_6
    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-nez v7, :cond_8

    .line 584
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value not null, show RCS buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 585
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 586
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 587
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
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

    .line 589
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_7

    .line 590
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 603
    :cond_7
    if-eqz p4, :cond_9

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_9

    .line 604
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "code returning from setupRcsServicesButton "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 605
    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    if-eqz v7, :cond_1

    .line 606
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 593
    :cond_8
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "cursor value null,call disconnecting show legacy buttons"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 594
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 595
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 597
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    if-eqz v7, :cond_1

    .line 598
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 611
    :cond_9
    const/4 v0, 0x0

    .line 614
    .local v0, "enabled":I
    const/4 v6, 0x0

    .line 615
    .local v6, "service_name_idx":I
    const/4 v4, 0x0

    .line 616
    .local v4, "is_enabled_idx":I
    const-string v5, " "

    .line 617
    .local v5, "serviceName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 618
    .local v3, "isEnabled":I
    const/4 v2, 0x0

    .line 619
    .local v2, "feature_tag_idx":I
    const-string v1, " "

    .line 621
    .local v1, "featureTag":Ljava/lang/String;
    if-eqz p4, :cond_a

    .line 622
    const-string v7, "service_name"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 623
    const-string v7, "is_enabled"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 627
    :cond_a
    if-eqz p4, :cond_b

    .line 628
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-interface {p4, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 630
    const-string v7, "feature_tag"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 631
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 634
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

    .line 636
    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 637
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

    .line 646
    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v0, :cond_a

    .line 649
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

    .line 650
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_10

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsHold:Z

    if-nez v7, :cond_10

    .line 651
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 652
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ISH service enabled "

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 658
    :goto_2
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "feature_org"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 659
    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    .line 660
    const/4 v7, 0x0

    const v8, 0x7f020142

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v7, v8, v9, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 664
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 665
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 642
    :cond_f
    if-eqz v3, :cond_c

    .line 643
    sget-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton found enabled"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    move v0, v3

    goto/16 :goto_1

    .line 654
    :cond_10
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 655
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
    .line 418
    if-nez p0, :cond_0

    .line 419
    const/4 v4, 0x0

    .line 431
    :goto_0
    return-object v4

    .line 421
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 422
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 424
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 425
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 426
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "c":C
    :cond_2
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
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
    .line 1211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1213
    return-void
.end method

.method public acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 972
    new-instance v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    .line 973
    .local v10, "state":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    const/4 v0, 0x0

    .line 975
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    :try_start_0
    iput-boolean v11, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    .line 976
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 977
    if-eqz v0, :cond_5

    .line 978
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 980
    :cond_0
    const-string v11, "id"

    .line 982
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 981
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 983
    .local v6, "sessionId":J
    const-string v11, "dir"

    .line 985
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 984
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 986
    .local v3, "sessionDirection":I
    const-string v11, "state"

    .line 988
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 987
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 989
    .local v8, "sessionState":I
    const-string v11, "type"

    .line 991
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 990
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 992
    .local v9, "sessionType":I
    const-string v11, "size"

    .line 993
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 995
    .local v4, "sessionFileSize":J
    if-nez v3, :cond_1

    .line 996
    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    .line 997
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

    .line 999
    iput v8, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    .line 1000
    iput v9, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    .line 1002
    iput-wide v6, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    .line 1003
    iput-wide v4, v10, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->size:J

    .line 1005
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    .line 1023
    .end local v3    # "sessionDirection":I
    .end local v4    # "sessionFileSize":J
    .end local v6    # "sessionId":J
    .end local v8    # "sessionState":I
    .end local v9    # "sessionType":I
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1025
    :cond_3
    :goto_1
    return-object v10

    .line 1007
    :cond_4
    :try_start_1
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "verifySessionStates no sessions"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    .line 1009
    .local v2, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v2, :cond_2

    .line 1010
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1020
    .end local v2    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    :catch_0
    move-exception v1

    .line 1021
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "acquireSessionInfo() exception"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1023
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1014
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    sget-object v11, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v12, "verifySessionStates no sessions"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    .line 1016
    .restart local v2    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v2, :cond_2

    .line 1017
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1023
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

    .line 835
    invoke-static {p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    .line 836
    .local v7, "telNum":Ljava/lang/String;
    const/4 v6, 0x0

    .line 838
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 839
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver : opening cursor"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 840
    invoke-virtual {p0, v7, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 841
    .local v8, "telNumUri":Ljava/lang/String;
    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 842
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 844
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 845
    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 850
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    .line 851
    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    if-eqz v6, :cond_0

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v9

    .line 860
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "telNumUri":Ljava/lang/String;
    :goto_1
    return v2

    .line 848
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

    .line 856
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "telNumUri":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 856
    :cond_3
    if-eqz v6, :cond_4

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 860
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1265
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1266
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 1267
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    .line 1268
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1271
    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 1272
    :cond_1
    const/4 v2, 0x0

    .line 1287
    :goto_0
    return-object v2

    .line 1276
    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1277
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1278
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1279
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1285
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1074
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "disconnected! "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    .line 1077
    .local v1, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v1, :cond_0

    .line 1078
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    .line 1080
    :cond_0
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1081
    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    .line 1083
    :cond_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 1084
    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 1086
    :cond_2
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    .line 1087
    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 1089
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1091
    return-void
.end method

.method public dismissIncomingDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1738
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

    .line 1740
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1741
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1742
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1743
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

    .line 1749
    :cond_0
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    .line 1751
    :goto_0
    return-void

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
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

    .line 1749
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

    .line 1720
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

    .line 1722
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1723
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1725
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

    .line 1731
    :cond_0
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1732
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

    .line 1734
    :goto_0
    return-void

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
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

    .line 1731
    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1732
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

    .line 1731
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1732
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
    .line 947
    if-nez p1, :cond_0

    .line 948
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 957
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "result":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    .line 961
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

    .line 962
    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1884
    const/16 v0, 0x64

    return v0
.end method

.method public getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 814
    if-nez p2, :cond_0

    .line 815
    const-wide/16 v0, 0x0

    .line 819
    :goto_0
    return-wide v0

    .line 818
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 819
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

    .line 803
    if-nez p2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 806
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 807
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 808
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 809
    iget v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    goto :goto_0
.end method

.method public getInvitationText(Landroid/content/res/Resources;Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "sessionType"    # Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    .prologue
    .line 1756
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI$8;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual {p2}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1769
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1758
    :pswitch_0
    const v0, 0x7f090551

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1760
    :pswitch_1
    const v0, 0x7f090219

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1762
    :pswitch_2
    const v0, 0x7f09021c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1764
    :pswitch_3
    const v0, 0x7f090552

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1766
    :pswitch_4
    const v0, 0x7f090553

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1756
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
    .line 1426
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1427
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

    .line 1428
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    .line 1429
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    .line 1433
    :cond_0
    return-void
.end method

.method public isCallPlusAvailable()Z
    .locals 1

    .prologue
    .line 1901
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    return v0
.end method

.method public isConference()Z
    .locals 1

    .prologue
    .line 1909
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    return v0
.end method

.method public isCshRunning(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1347
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1348
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1349
    .local v1, "activitys":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 1350
    .local v3, "isActivityFound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1351
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

    .line 1352
    const/4 v3, 0x1

    .line 1356
    :cond_0
    return v3

    .line 1350
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isCshTopMostActivity(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1329
    const-string v0, "com.samsung.rcs.share.ContentShareActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExtraVolumeAvailable()Z
    .locals 1

    .prologue
    .line 1893
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    return v0
.end method

.method public isISHButtonAvailable()Z
    .locals 1

    .prologue
    .line 1925
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    return v0
.end method

.method public isImsServiceDeregistered()Z
    .locals 1

    .prologue
    .line 1917
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    return v0
.end method

.method public isInvitationActive(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    .line 967
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

    .line 968
    return v0
.end method

.method public isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "FeatureTags"    # Ljava/lang/String;

    .prologue
    .line 1412
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->queryOwn(Landroid/content/Context;)V

    .line 1413
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1420
    :goto_0
    return v0

    .line 1415
    :cond_0
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    .line 1417
    :cond_1
    const-string v0, "+g.3gpp.cs-voice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1418
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0

    .line 1420
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRcsFTAvailable(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 927
    const/4 v1, 0x0

    .line 929
    .local v1, "isAvailableFT":Z
    if-eqz p1, :cond_2

    .line 930
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 932
    :cond_0
    const-string v2, "is_enabled"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    const-string v2, "feature_tag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 934
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

    .line 935
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    const/4 v1, 0x1

    .line 938
    .end local v0    # "featureTag":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 941
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

    .line 942
    return v1
.end method

.method public isRcsOnTopScreen(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 1704
    const/4 v2, 0x0

    .line 1705
    .local v2, "isTopActivity":Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1706
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1707
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

    .line 1708
    .local v4, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.rcs.share.ContentShareActivity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1709
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.rcs.share.RcsSharingServiceListDialog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1710
    :cond_1
    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v6, "RCS is on TOP"

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1711
    const/4 v2, 0x1

    move v3, v2

    .line 1715
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
    .line 823
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

    .line 824
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    return v0
.end method

.method public isRcsServicePromoted()Z
    .locals 3

    .prologue
    .line 828
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

    .line 829
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
    .line 1905
    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    return v0
.end method

.method public isShareActive(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1041
    const/4 v2, 0x0

    .line 1042
    .local v2, "returnVal":Z
    const/4 v0, 0x0

    .line 1044
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_2

    .line 1046
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1049
    :cond_0
    const-string v3, "dir"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "state"

    .line 1050
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const-string v3, "state"

    .line 1051
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    .line 1053
    :cond_1
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "found active session connecting/in progress "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
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

    .line 1055
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

    .line 1056
    const/4 v2, 0x1

    .line 1065
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1069
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

    .line 1070
    return v2

    .line 1059
    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1062
    :catch_0
    move-exception v1

    .line 1063
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1065
    if-eqz v0, :cond_3

    .line 1066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1065
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 1066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method public isSharingDialogTopMostActivity(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1333
    const-string v0, "com.samsung.rcs.share.RcsSharingServiceListDialog"

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVSHButtonAvailable()Z
    .locals 1

    .prologue
    .line 1921
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    return v0
.end method

.method public isVoiceMail()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1959
    const-string v4, "isVoiceMail()"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1960
    const/4 v2, 0x0

    .line 1961
    .local v2, "isVoicemail":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1962
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    move v3, v2

    .line 1967
    .end local v2    # "isVoicemail":Z
    .local v3, "isVoicemail":I
    :goto_0
    return v3

    .line 1963
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

    .line 1964
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v1, :cond_1

    move v3, v2

    .restart local v3    # "isVoicemail":I
    goto :goto_0

    .line 1965
    .end local v3    # "isVoicemail":I
    :cond_1
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 1966
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

    .line 1967
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

    .line 866
    const-string v1, "alertoncall_mode"

    .line 867
    .local v1, "alertoncall_mode":Ljava/lang/String;
    const/4 v0, 0x1

    .line 868
    .local v0, "alertoncallModeIndex":I
    const/4 v3, 0x0

    .line 869
    .local v3, "textToSpeachVariant":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 870
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 871
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

    .line 872
    packed-switch v0, :pswitch_data_0

    .line 914
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 874
    :pswitch_1
    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 875
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 876
    .local v4, "v":Landroid/os/Vibrator;
    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 880
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

    .line 881
    sget-object v5, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Playing Notification Sound"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v5, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v6, v9, [Landroid/content/Context;

    aput-object p1, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 872
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

    .line 294
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "prepareRcsUiElements()"

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    invoke-virtual {p9}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    .line 296
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

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 299
    sput-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    .line 303
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

    .line 315
    sput-object p1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    .line 316
    iput-object p9, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;

    .line 317
    sput-object p2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    .line 318
    sput-object p6, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    .line 319
    sput-object p3, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    .line 320
    sput-object p4, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 321
    sput-object p5, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 322
    sput-object p7, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    .line 323
    iput-boolean p8, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsWebExEnabled:Z

    .line 324
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;

    invoke-direct {v0, p0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/incallui/secrcs/RcsShareUI$ContactsQuerryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;

    invoke-direct {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void

    :cond_0
    move v0, v2

    .line 295
    goto :goto_0

    .line 301
    :cond_1
    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mUltraPowerMode:Z

    goto :goto_1
.end method

.method public queryOwn(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1360
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const/4 v6, 0x0

    .line 1363
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

    .line 1364
    if-nez v6, :cond_1

    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    .line 1368
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    if-eqz v6, :cond_0

    .line 1377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->readDataFromQueryOwn(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    if-eqz v6, :cond_0

    .line 1377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1373
    :catch_0
    move-exception v7

    .line 1374
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

    .line 1376
    if-eqz v6, :cond_0

    .line 1377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1376
    .end local v7    # "ise":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public queryOwnCaps(Landroid/content/Context;)Z
    .locals 20
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1436
    const/4 v13, 0x1

    .line 1438
    .local v13, "forceFinish":Z
    const/16 v16, 0x0

    .line 1439
    .local v16, "mOwnFtCapable":Z
    const/16 v17, 0x0

    .line 1440
    .local v17, "mOwnGcftCapable":I
    const/4 v14, 0x0

    .line 1441
    .local v14, "mIsEnableRcs":Z
    const/4 v15, 0x0

    .line 1443
    .local v15, "mIsLocalOffline":Z
    const/4 v10, 0x0

    .line 1445
    .local v10, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .line 1446
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

    .line 1448
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1449
    :cond_1
    const/4 v14, 0x0

    .line 1450
    const/4 v15, 0x1

    .line 1451
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwnCaps, cursor is null"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    const/4 v1, 0x0

    .line 1489
    if-eqz v10, :cond_2

    .line 1490
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1491
    const/4 v10, 0x0

    .line 1510
    :cond_2
    :goto_0
    return v1

    .line 1455
    :cond_3
    :try_start_1
    const-string v1, "feature_tag"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1456
    .local v18, "serviceTagNo":I
    const-string v1, "is_enabled"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1459
    .local v12, "enabledNo":I
    :cond_4
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1460
    .local v19, "tag":Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1462
    .local v11, "enabled":I
    if-lez v11, :cond_d

    .line 1463
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

    .line 1464
    :cond_5
    const/4 v13, 0x0

    .line 1467
    :cond_6
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1468
    const/16 v16, 0x1

    .line 1487
    :cond_7
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 1489
    if-eqz v10, :cond_8

    .line 1490
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1491
    const/4 v10, 0x0

    .line 1495
    :cond_8
    if-eqz v13, :cond_9

    .line 1496
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "queryOwnCaps, IM Service is impossible because own caps is null or unavailable."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1498
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

    .line 1499
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

    .line 1500
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

    .line 1501
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

    .line 1503
    if-nez v13, :cond_f

    if-nez v15, :cond_f

    const/4 v14, 0x1

    .line 1504
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

    .line 1505
    if-eqz v14, :cond_a

    .line 1506
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1507
    .local v9, "broadcast":Landroid/content/Intent;
    const-string v1, "QUERYCALLPLUS"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v9    # "broadcast":Landroid/content/Intent;
    :cond_a
    move v1, v14

    .line 1510
    goto/16 :goto_0

    .line 1469
    :cond_b
    :try_start_2
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1470
    const-string v1, "additional_info"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1472
    .local v7, "additionalIndex":I
    const/4 v1, -0x1

    if-eq v7, v1, :cond_7

    .line 1473
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1475
    .local v8, "additionalInfo":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 1476
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    goto/16 :goto_1

    .line 1479
    .end local v7    # "additionalIndex":I
    .end local v8    # "additionalInfo":Ljava/lang/String;
    :cond_c
    const-string v1, "ft-in-group-chat"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1480
    move/from16 v17, v11

    goto/16 :goto_1

    .line 1483
    :cond_d
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 1484
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1489
    .end local v11    # "enabled":I
    .end local v12    # "enabledNo":I
    .end local v18    # "serviceTagNo":I
    .end local v19    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_e

    .line 1490
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1491
    const/4 v10, 0x0

    :cond_e
    throw v1

    .line 1503
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

    .line 1383
    sget-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1387
    const-string v4, "feature_tag"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1388
    .local v2, "serviceTagNo":I
    const-string v4, "is_enabled"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1389
    .local v1, "enabledNo":I
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1390
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    .line 1391
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    .line 1392
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

    .line 1393
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1395
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1396
    .local v3, "tag":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1397
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

    .line 1399
    if-eqz v3, :cond_3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    .line 1400
    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnFtCapable:Z

    .line 1406
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1409
    .end local v0    # "enabled":I
    .end local v1    # "enabledNo":I
    .end local v2    # "serviceTagNo":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    return-void

    .line 1401
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

    .line 1402
    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    .line 1403
    :cond_4
    if-eqz v3, :cond_1

    const-string v4, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    .line 1404
    iput-boolean v7, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0
.end method

.method public registerRcsObserver(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rcsObserver"    # I

    .prologue
    const/4 v3, 0x1

    .line 1830
    if-nez p1, :cond_1

    .line 1849
    :cond_0
    :goto_0
    return-void

    .line 1831
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

    .line 1832
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

    .line 1833
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->rcsEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1834
    if-ne p2, v3, :cond_2

    .line 1835
    new-instance v0, Lcom/android/incallui/secrcs/RcsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/android/incallui/secrcs/RcsContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 1836
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsContentObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 1839
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 1844
    :cond_3
    new-instance v0, Lcom/android/incallui/secrcs/RcsCapaObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/incallui/secrcs/RcsCapaObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 1845
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    .line 1846
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

    .line 1141
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resuming share..! "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1145
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resume share since active share "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ravi Launch Crane"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1152
    .local v1, "imageIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.crane.sketchimage.SketchActivity"

    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1153
    const-string v2, "com.samsung.crane.sketchimage.LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1155
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1157
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.crane.sketchmap.MapActivity"

    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isActivityOnTopScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    const-string v2, "com.samsung.crane.sketchmap.LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1160
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1323
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.intent.action.RCS_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const-string v1, "com.samsung.rcs.intent.extra.RCS_TOAST_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1326
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1880
    iput p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    .line 1881
    return-void
.end method

.method public setCallPlusAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1897
    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    .line 1898
    return-void
.end method

.method public setExtraVolumeAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1889
    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    .line 1890
    return-void
.end method

.method public setImsServiceDeregistered(Z)V
    .locals 0
    .param p1, "deregistered"    # Z

    .prologue
    .line 1913
    iput-boolean p1, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mImsServiceDeregistered:Z

    .line 1914
    return-void
.end method

.method public setNoShowVolumeAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1929
    sput-boolean p1, Lcom/android/incallui/secrcs/RcsShareUI;->mNoShowVolumeAvailable:Z

    .line 1930
    return-void
.end method

.method public setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invitation"    # Lcom/android/incallui/secrcs/RcsInvitation;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1774
    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v5, 0x7f1001a2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1775
    .local v0, "accept":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v5, 0x7f1001a3

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1777
    .local v3, "reject":Landroid/widget/Button;
    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1778
    .local v1, "name":Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 1781
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

    .line 1783
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 1784
    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$5;

    invoke-direct {v4, p0, p3}, Lcom/android/incallui/secrcs/RcsShareUI$5;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1793
    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$6;

    invoke-direct {v4, p0, v1, v2, p2}, Lcom/android/incallui/secrcs/RcsShareUI$6;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/secrcs/RcsInvitation;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1824
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

    .line 680
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons()"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 682
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 683
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    .line 685
    :cond_0
    sput-object p1, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 686
    sput-object p2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 687
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    .line 688
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "State = Dialing "

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 689
    if-eqz p4, :cond_1

    .line 690
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 692
    :cond_1
    if-eqz p6, :cond_2

    .line 693
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 696
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 697
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
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

    .line 699
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

    .line 700
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons ,Cursor not null"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 701
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 702
    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 703
    const-string v2, "MENU_STRING"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
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

    .line 705
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

    .line 706
    invoke-virtual {p3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 707
    invoke-virtual {p4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 708
    if-eqz p1, :cond_3

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 716
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

    .line 717
    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 718
    const-string v2, "MENU_STRING"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
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

    .line 720
    if-eqz p2, :cond_4

    invoke-virtual {p2, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 721
    :cond_4
    invoke-virtual {p5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 722
    invoke-virtual {p6, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 746
    :cond_5
    :goto_1
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "broadcast sent for menu change"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 747
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 748
    return-void

    .line 709
    :cond_6
    if-eqz p1, :cond_3

    .line 710
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    .line 711
    const-string v2, "MENU_STRING"

    const-string v3, "HOLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
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

    .line 713
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 714
    if-eqz p4, :cond_3

    invoke-virtual {p4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 723
    :cond_7
    if-eqz p2, :cond_5

    .line 724
    iput-boolean v6, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsISHButtonAvailable:Z

    .line 725
    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsVSHButtonAvailable:Z

    if-nez v2, :cond_8

    .line 726
    const-string v2, "MENU_STRING"

    const-string v3, "HOLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
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

    .line 728
    invoke-virtual {p2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    .line 731
    :cond_9
    sget-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setupLegacyInCallButtons no RCS"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 732
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 733
    if-eqz p1, :cond_a

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 736
    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 737
    :cond_b
    if-eqz p3, :cond_d

    .line 738
    if-eqz p4, :cond_c

    invoke-virtual {p4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 739
    :cond_c
    invoke-virtual {p3, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 741
    :cond_d
    if-eqz p5, :cond_5

    .line 742
    if-eqz p6, :cond_e

    invoke-virtual {p6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 743
    :cond_e
    invoke-virtual {p5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invitation"    # Lcom/android/incallui/secrcs/RcsInvitation;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1514
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBatteryLevel:I

    const/4 v15, 0x6

    if-ge v14, v15, :cond_4

    .line 1518
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, " Battery unavaialble "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1519
    const/4 v7, 0x0

    .line 1520
    .local v7, "i":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 1521
    .local v8, "intent":Landroid/content/Intent;
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

    .line 1522
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "i":Landroid/content/Intent;
    const-string v14, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    .restart local v7    # "i":Landroid/content/Intent;
    const-string v14, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    .line 1526
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

    .line 1527
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "i":Landroid/content/Intent;
    const-string v14, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    .restart local v7    # "i":Landroid/content/Intent;
    const-string v14, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    .line 1531
    :cond_3
    if-eqz v8, :cond_4

    .line 1532
    const-string v14, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 1533
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v15

    iget-wide v0, v15, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    move-wide/from16 v16, v0

    .line 1532
    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1536
    :try_start_0
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, " ISH Battery unavaialble "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1537
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->showISHBatteryError(Landroid/content/Context;)V

    .line 1538
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1539
    :catch_0
    move-exception v6

    .line 1540
    .local v6, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Did not find RCS service..."

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "i":Landroid/content/Intent;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0b0010

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1547
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const-class v15, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v15

    .line 1548
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    if-nez v14, :cond_5

    .line 1549
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Intializing dialog incoming"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1550
    new-instance v14, Landroid/app/Dialog;

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    .line 1551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v16, 0x7f040082

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1554
    :cond_5
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1556
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    .line 1557
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v11

    .line 1560
    .local v11, "num":Ljava/lang/String;
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

    .line 1562
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v12

    .line 1563
    .local v12, "session":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    iget-boolean v14, v12, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->isActive:Z

    if-eqz v14, :cond_f

    iget v14, v12, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_f

    .line 1564
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "RcsCallCard hasInvite"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p0 .. p3}, Lcom/android/incallui/secrcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V

    .line 1567
    iget v14, v12, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    invoke-static {v14}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    move-result-object v13

    .line 1568
    .local v13, "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI$8;->$SwitchMap$com$android$incallui$secrcs$RcsTransferConstants$SessionType:[I

    invoke-virtual {v13}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 1587
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Default case"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1590
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

    .line 1591
    .local v2, "VideoShareOptions":[Ljava/lang/CharSequence;
    const/4 v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const v15, 0x7f090218

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 1592
    .local v3, "VideoShareOptions1":[Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1593
    .local v5, "ctx":Landroid/content/Context;
    move-object/from16 v9, p3

    .line 1595
    .local v9, "mnewcall":Lcom/android/incallui/Call;
    if-eqz v4, :cond_9

    .line 1596
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1597
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

    .line 1598
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "builder 1 "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1599
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    .line 1600
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 1601
    move-object v2, v3

    .line 1602
    :cond_6
    const/4 v14, 0x0

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/incallui/secrcs/RcsShareUI$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    invoke-virtual {v4, v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1617
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHEnable:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 1618
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z

    .line 1620
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

    .line 1621
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

    .line 1622
    const v14, 0x7f090087

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v9}, Lcom/android/incallui/secrcs/RcsShareUI$2;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1647
    :cond_8
    :goto_2
    const v14, 0x7f09022f

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI$4;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1676
    :cond_9
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Showing dialog incoming"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1677
    const-class v15, Lcom/android/incallui/secrcs/RcsShareUI;

    monitor-enter v15

    .line 1678
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsOnTopScreen(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 1679
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

    .line 1680
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

    .line 1681
    const v14, 0x7f090219

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1685
    :cond_a
    :goto_3
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    .line 1686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 1688
    :cond_b
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 1554
    .end local v2    # "VideoShareOptions":[Ljava/lang/CharSequence;
    .end local v3    # "VideoShareOptions1":[Ljava/lang/CharSequence;
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v9    # "mnewcall":Lcom/android/incallui/Call;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "num":Ljava/lang/String;
    .end local v12    # "session":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    .end local v13    # "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .line 1570
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "num":Ljava/lang/String;
    .restart local v12    # "session":Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
    .restart local v13    # "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    :pswitch_0
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "sessionType: IMAGE_SHARE"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1571
    const-string v14, "ims_crane"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1572
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/secrcs/RcsShareUI;->getMaxImageSize(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mMaxImageSize:I

    .line 1573
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

    .line 1575
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v15, 0x7f09021b

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(I)V

    .line 1576
    const v14, 0x7f09021b

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1580
    :pswitch_1
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "sessionType: VIDEO_SHARE"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingDialog:Landroid/app/Dialog;

    const v15, 0x7f09021e

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(I)V

    .line 1582
    const v14, 0x7f09021e

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1635
    .restart local v2    # "VideoShareOptions":[Ljava/lang/CharSequence;
    .restart local v3    # "VideoShareOptions1":[Ljava/lang/CharSequence;
    .restart local v5    # "ctx":Landroid/content/Context;
    .restart local v9    # "mnewcall":Lcom/android/incallui/Call;
    :cond_d
    const v14, 0x7f090087

    new-instance v15, Lcom/android/incallui/secrcs/RcsShareUI$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v9}, Lcom/android/incallui/secrcs/RcsShareUI$3;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 1682
    :cond_e
    :try_start_4
    const-string v14, "ims_crane"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1683
    const v14, 0x7f09021c

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1690
    .end local v2    # "VideoShareOptions":[Ljava/lang/CharSequence;
    .end local v3    # "VideoShareOptions1":[Ljava/lang/CharSequence;
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v9    # "mnewcall":Lcom/android/incallui/Call;
    .end local v13    # "sessionType":Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIncomingInvitationDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    .line 1691
    sget-object v14, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v15, "RcsCallCard has no invites"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    goto/16 :goto_0

    .line 1568
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
    .line 1870
    const v0, 0x7f090082

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1871
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1872
    return-void
.end method

.method public showISHBatteryError(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1875
    const v0, 0x7f090082

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1876
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1877
    return-void
.end method

.method public startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1205
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

    .line 1206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1208
    return-void
.end method

.method public startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1216
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1217
    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1221
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

    .line 1222
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

    .line 1221
    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    .line 1226
    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1228
    const-string v1, "CRANE_CAPA"

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1229
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
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
    .line 1237
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1238
    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :cond_1
    :goto_0
    return-void

    .line 1241
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

    .line 1242
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

    .line 1241
    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-direct {p0, p3, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    .line 1245
    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
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
    .line 1254
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1256
    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 1257
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedService:Z

    if-eqz v2, :cond_0

    .line 1258
    const-string v2, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1260
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1261
    return-void
.end method

.method public stopOverlayService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1953
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1954
    .local v0, "overlayIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.contentshare.ShareOverlayService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1956
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1094
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tearDown()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1097
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1101
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1105
    iput-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    .line 1107
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    .line 1108
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    .line 1110
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 1111
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButtonStub:Landroid/view/ViewStub;

    .line 1113
    :cond_3
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 1114
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButtonStub:Landroid/view/ViewStub;

    .line 1116
    :cond_4
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 1117
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;

    .line 1119
    :cond_5
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 1120
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mShareButton:Landroid/widget/Button;

    .line 1122
    :cond_6
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 1123
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mAddCallButton:Landroid/widget/Button;

    .line 1125
    :cond_7
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    .line 1126
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 1129
    :cond_8
    sput-object v2, Lcom/android/incallui/secrcs/RcsShareUI;->sMe:Lcom/android/incallui/secrcs/RcsShareUI;

    .line 1130
    return-void
.end method

.method public unregisterRcsObserver(I)V
    .locals 4
    .param p1, "rcsObserver"    # I

    .prologue
    const/4 v3, 0x0

    .line 1852
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

    .line 1854
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1855
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1857
    iput-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsContentObserver:Lcom/android/incallui/secrcs/RcsContentObserver;

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1859
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1862
    iput-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI;->mRcsCapaObserver:Lcom/android/incallui/secrcs/RcsCapaObserver;

    goto :goto_0
.end method

.method public updateAudioState(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1133
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, " updateAudioState from Notification "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1136
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1138
    :cond_0
    return-void
.end method
