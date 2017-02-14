.class public Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.super Lcom/android/incallui/fragment/CallButtonFragment;
.source "VoiceCallButtonCallPlusFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;,
        Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;,
        Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;,
        Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/CallButtonFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARG_COLUMNS:Ljava/lang/String; = "ARG_COLUMNS"

.field private static final ARG_MSISDN:Ljava/lang/String; = "ARG_MSISDN"

.field private static final CALLCONTENT_LOADER:I = 0x1

.field public static final CAPABILITY_CRANE:Ljava/lang/String; = "gsma.callcomposer"

.field private static final CHANGE_PAGE_CALLPLUS_TO_INCALL:I = 0x66

.field private static final CHANGE_PAGE_EXTRA_TO_INCALL:I = 0x65

.field private static final CHANGE_PAGE_EXTRA_TO_INCALL_DELAY:I = 0x1388

.field public static FEATURE_ENRICHED_CALL_COMPOSER:J = 0x0L

.field public static FEATURE_ENRICHED_POST_CALL:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_MAP:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_SKETCH:J = 0x0L

.field private static final NETWORK_2G:I = 0x0

.field private static final NETWORK_3G:I = 0x1

.field private static final NETWORK_4G:I = 0x2

.field private static final NETWORK_UNKNOWN:I = 0x3

.field private static PAGE_CALLPLUS:I = 0x0

.field private static PAGE_COUNT:I = 0x0

.field private static PAGE_COUNT_OUT:I = 0x0

.field private static PAGE_EXTRA:I = 0x0

.field private static PAGE_INCALL:I = 0x0

.field private static final PAUSE:C = ','

.field private static final UI_ENTRY_POINTS_LOADER:I = 0x2

.field private static final WAIT:C = ';'

.field private static final WILD:C = 'N'

.field private static lockForInflateInCallButtons:Ljava/lang/Object;

.field private static lockForInflateOutgoingPagerAdapter:Ljava/lang/Object;

.field private static lockForInflatePagerContainer:Ljava/lang/Object;

.field private static mCurrentPageScrollState:I


# instance fields
.field private CRANE_BTN_CONSTANT:I

.field public INCALL_PATH:Ljava/lang/String;

.field public INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

.field public INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

.field private imageLayout:Landroid/widget/LinearLayout;

.field private importanceLayout:Landroid/widget/RelativeLayout;

.field private is2G:Z

.field private isBB:Z

.field private isCallPlus:Z

.field private isUiEntery:Z

.field private isoutgoing:Z

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private mAction:Ljava/lang/String;

.field private mAddCallButton:Landroid/widget/Button;

.field private mBackground:Ljava/lang/String;

.field private mCallPlus:Landroid/widget/Button;

.field private mCallPlusAddress:Landroid/widget/TextView;

.field private mCallPlusImageMap:Landroid/widget/ImageView;

.field private mCallPlusImportance:Landroid/widget/ImageView;

.field private mCallPlusImportanceText:Landroid/widget/TextView;

.field private mCallPlusImportanceToggleButton:Landroid/widget/Switch;

.field private mCallPlusMap:Landroid/widget/ImageView;

.field private mCallPlusReceiver:Landroid/content/BroadcastReceiver;

.field private mCallPlusStub:Landroid/view/ViewStub;

.field private mCallPlusSubject:Landroid/widget/TextView;

.field private mCallPlusSubjectIcon:Landroid/widget/ImageView;

.field private mCameraButton:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContactButton:Landroid/widget/Button;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEmailButton:Landroid/widget/Button;

.field private mExtraVolumeButton:Landroid/widget/ToggleButton;

.field private mHandler:Landroid/os/Handler;

.field private mImportance:I

.field private mInCallButtonLayout:Landroid/view/ViewGroup;

.field private mInCallButtons:Landroid/view/View;

.field private mInternetButton:Landroid/widget/Button;

.field private mIsSprWFCRegistered:Z

.field private mLastestPagePosition:I

.field private mLocation:Ljava/lang/String;

.field private mLocationLatLong:Ljava/lang/String;

.field private mLocation_map:Ljava/lang/String;

.field private mMemoButton:Landroid/widget/Button;

.field private mMessageButton:Landroid/widget/Button;

.field private mModifyErrorDialog:Landroid/app/AlertDialog;

.field private mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOneWayCameraButton:Landroid/widget/Button;

.field private mOneWayCameraButtonStub:Landroid/view/ViewStub;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

.field private mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

.field private mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

.field private mPagerIndicator:Landroid/view/View;

.field private mPagerIndicatorLeft:Landroid/view/View;

.field protected mPagerIndicatorLeftWrapper:Landroid/view/View;

.field private mPagerIndicatorRight:Landroid/view/View;

.field protected mPagerIndicatorRightWrapper:Landroid/view/View;

.field private mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

.field private mParentView:Landroid/view/View;

.field private mPlannerButton:Landroid/widget/Button;

.field private mPrevAudioMode:I

.field private mPromotedButton:Landroid/widget/Button;

.field private mPromotedButtonStub:Landroid/view/ViewStub;

.field private mShareButton:Landroid/widget/Button;

.field private mShareButtonStub:Landroid/view/ViewStub;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSubject:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

.field protected mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

.field protected mVoiceCallButtonContainer:Landroid/view/View;

.field private mapLayout:Landroid/widget/LinearLayout;

.field private mapimageLayout:Landroid/widget/LinearLayout;

.field private msisdn:Ljava/lang/String;

.field private networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

.field private orientation:I

.field popupWindow:Landroid/widget/PopupWindow;

.field popupWindow_map:Landroid/widget/PopupWindow;

.field rotated:Landroid/graphics/Bitmap;

.field private ultraPowerMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    sput v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateOutgoingPagerAdapter:Ljava/lang/Object;

    const-wide v0, 0x1000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_CALL_COMPOSER:J

    const-wide v0, 0x2000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_SHARED_MAP:J

    const-wide v0, 0x4000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_SHARED_SKETCH:J

    const-wide v0, 0x8000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_POST_CALL:J

    sput v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isBB:Z

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->rotated:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    iput v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    iput v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    const-string v0, "incall"

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_PATH:Ljava/lang/String;

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "feature_tag"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "is_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "service_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    iput v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->CRANE_BTN_CONSTANT:I

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$2;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryForCallPlusEntrypoint()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateInCallButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateExtraButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateOutgoingPagerAdapter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->checkThenModify(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->recordClicked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->emailClicked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getNetworkClass(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    return p1
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    sput p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateCallPlus(Landroid/view/View;)V

    return-void
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

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactName"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactLabel"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

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

.method private changePageCallPlusToInCall()V
    .locals 4

    const/16 v1, 0x66

    const-string v0, "changePageCallPlusToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private changePageExtraToInCall()V
    .locals 4

    const/16 v1, 0x65

    const-string v0, "changePageExtraToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private checkThenModify(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkThenModify, enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", modifyPossible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "volteSettingErrorShowNeverAgain"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->showVoLTESettingErrorDialog(I)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->showModifyErrorDialog()V

    goto :goto_0

    :cond_3
    const v4, 0x7f1003f2

    if-ne p1, v4, :cond_4

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0

    :cond_4
    const v4, 0x7f1002fa

    if-ne p1, v4, :cond_0

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private dismissUSAVoLTEDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private emailClicked()V
    .locals 14

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emailClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/android/incallui/util/PackageHelpers;->launchEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 13

    const-string v11, "enableVoiceCallButtons :"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_3

    :cond_2
    const/4 v8, 0x0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_13

    :cond_5
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_14

    const/4 v9, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getHasBeenVideoCall()Z

    move-result v11

    if-nez v11, :cond_15

    const/4 v0, 0x1

    :goto_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v11

    if-eqz v11, :cond_16

    if-nez v7, :cond_16

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    :goto_4
    if-nez v7, :cond_17

    const/4 v5, 0x1

    :goto_5
    const/4 v11, 0x4

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v2, 0x0

    :cond_6
    const/16 v11, 0x40

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_18

    if-nez v7, :cond_18

    if-nez v9, :cond_18

    const/4 v4, 0x1

    :goto_6
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v4, 0x0

    :cond_7
    if-nez v7, :cond_19

    const/4 v3, 0x1

    :goto_7
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v3, 0x0

    :cond_8
    const/4 v10, 0x1

    const/16 v11, 0x8

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v10, 0x0

    :cond_9
    const/4 v1, 0x1

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v1, 0x0

    :cond_a
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    :cond_b
    if-nez v9, :cond_1a

    const/4 v6, 0x1

    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " canShare: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isUiEntery: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "isHolding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v11, :cond_c

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1b

    if-eqz v5, :cond_1b

    iget-boolean v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    if-eqz v11, :cond_1b

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v11, :cond_1b

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v11, :cond_1b

    iget-boolean v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    if-nez v11, :cond_1b

    if-nez v9, :cond_1b

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v11, :cond_1b

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v11, :cond_1b

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_d

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v8, :cond_1c

    if-eqz v2, :cond_1c

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_e

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1d

    if-eqz v3, :cond_1d

    iget-boolean v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    if-nez v11, :cond_1d

    const/4 v11, 0x1

    :goto_b
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_e
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_f

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1e

    if-eqz v1, :cond_1e

    const/4 v11, 0x1

    :goto_c
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_f
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_10

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1f

    if-eqz v10, :cond_1f

    const/4 v11, 0x1

    :goto_d
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_10
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v11, :cond_11

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v8, :cond_20

    if-eqz v6, :cond_20

    const/4 v11, 0x1

    :goto_e
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_11
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_12

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_21

    if-eqz v4, :cond_21

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_12
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1b
    const/4 v11, 0x0

    goto :goto_9

    :cond_1c
    const/4 v11, 0x0

    goto :goto_a

    :cond_1d
    const/4 v11, 0x0

    goto :goto_b

    :cond_1e
    const/4 v11, 0x0

    goto :goto_c

    :cond_1f
    const/4 v11, 0x0

    goto :goto_d

    :cond_20
    const/4 v11, 0x0

    goto :goto_e

    :cond_21
    const/4 v11, 0x0

    goto :goto_f
.end method

.method private getLatLongfromLocation(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v0, v1, v4

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v6

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "latitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "longitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method private getNetworkClass(Landroid/content/Context;)I
    .locals 3

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized inflateCallPlus(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflateCallPlus isCallPlus "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_5

    :cond_0
    const-string v2, "isoutgoing true"

    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    :goto_0
    const v2, 0x7f100232

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f100235

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f1003fd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->importanceLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100401

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapimageLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f1003fe

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    const v2, 0x7f1003ff

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    const v2, 0x7f10022e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v2, 0x7f10022f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    const v2, 0x7f100403

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    const v2, 0x7f100404

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    const v2, 0x7f100402

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    const v2, 0x7f100400

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    new-instance v4, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallPlusImportanceToggleButtonmImportance :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusImportance(ZI)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->importanceLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    const-string v2, "isoutgoing false"

    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_8

    :goto_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_3

    :cond_d
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isOutgoingCall()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    :goto_5
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusImportance(ZI)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_15
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method private inflateExtraButtons(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f100408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "secOnscreenInternetText"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "secOnscreenInternetText"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f10040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10040e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPlannerButton:Landroid/widget/Button;

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPlannerButton:Landroid/widget/Button;

    const v1, 0x7f090249

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPlannerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10040f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageExtraToInCall()V

    :cond_1
    return-void
.end method

.method private declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 12

    monitor-enter p0

    const v8, 0x7f1003f0

    :try_start_0
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    const v8, 0x7f1003f1

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    const v8, 0x7f1003fc

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    const v8, 0x7f100389

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v8, 0x7f1003f6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v8, 0x7f10019d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_14

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_14

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    const v8, 0x7f1003f5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_2

    sget-object v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_2
    const v8, 0x7f1003f8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_3
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const v8, 0x7f1003f4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v8, 0x7f100347

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_6
    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const v8, 0x7f1003f2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    const v8, 0x7f1003f9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    const v8, 0x7f1002fa

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    const-string v8, "ims_rcs"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "RCS present"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v8, 0x7f1003f3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v8, 0x7f1001ab

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v8, 0x7f1003f7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    const v8, 0x7f1001aa

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$8;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const-string v8, "ims_rcs"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "onUiResume called"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    :cond_c
    const v8, 0x7f10037d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    const v8, 0x7f100097

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f100096

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->returnButtonsForDialpad(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableVoiceCallButtons isUiEntery "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v5

    const-string v8, "ims_crane"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    if-nez v8, :cond_19

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsSwtich:Z

    if-eqz v8, :cond_19

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_19

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v8, :cond_19

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v8, :cond_19

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableVoiceCallButtons isUiEntery my "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryInCallServiceProvider()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v8, "feature_tag"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v8, "int_name"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->CRANE_BTN_CONSTANT:I

    const/4 v6, 0x1

    :cond_d
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_f
    sget-object v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setCallPlusAvailable(Z)V

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_16

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_10
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_11
    :goto_1
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v5, v8, :cond_21

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v8, :cond_21

    const-string v8, "State Incall; show Page Incall"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageCallPlusToInCall()V

    :cond_12
    :goto_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_13
    monitor-exit p0

    return-void

    :cond_14
    :try_start_5
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8

    :cond_16
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_17
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_18
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    goto :goto_1

    :cond_19
    const-string v8, "ims_crane"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    iget-boolean v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    if-eqz v8, :cond_1d

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_1d

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v8, :cond_1d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableVoiceCallButtons isUiEntery true "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v5, v8, :cond_1c

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v5, v8, :cond_1c

    iget-boolean v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z

    if-nez v8, :cond_1c

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_1c

    iget-boolean v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    if-nez v8, :cond_1c

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v8, :cond_1c

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v8, :cond_1c

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1a
    :goto_3
    sget-object v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    monitor-enter v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setCallPlusAvailable(Z)V

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1b
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_11

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_11

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1c
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catchall_3
    move-exception v8

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v8

    :cond_1d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableVoiceCallButtons isUiEntery false "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1e

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1e
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/secrcs/RcsShareUI;->setCallPlusAvailable(Z)V

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1f
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    :cond_20
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_21
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v8

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    if-ne v8, v9, :cond_12

    const-string v8, "State dialing; show latest page"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-ne v8, v9, :cond_22

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageCallPlusToInCall()V

    goto/16 :goto_2

    :cond_22
    iget v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    if-ne v8, v9, :cond_12

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageExtraToInCall()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2
.end method

.method private declared-synchronized inflatePagerContainer()V
    .locals 5

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflatePagerContainer: mParentView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateInCallButtons(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_a

    :cond_3
    const-string v1, "isoutgoing true"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callplus ultraPowerMode::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z

    if-eqz v1, :cond_d

    :cond_5
    const-string v1, "inflatePagerContainer values null in DB"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-eqz v1, :cond_c

    const-string v1, "inflatePagerContainer null outgoing"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v1, 0x2

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    const-string v1, "reset adapter "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->notifyDataSetChanged()V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->notifyDataSetChanged()V

    :cond_7
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_f

    :cond_8
    const-string v1, "outgoing is there"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v1, "inflatePagerContainer: outgoingButtonsPager Call Plus"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    goto/16 :goto_0

    :cond_a
    const-string v1, "isoutgoing false"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :cond_c
    const-string v1, "inflatePagerContainer null not outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, -0x1

    :try_start_7
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    const/4 v1, 0x0

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    monitor-exit v2

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    :cond_d
    const-string v1, "inflatePagerContainer values NOT null in DB "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-eqz v1, :cond_e

    const-string v1, "inflatePagerContainer not null outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v1, 0x0

    :try_start_9
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v1, 0x2

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    monitor-exit v2

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v1

    :cond_e
    const-string v1, "inflatePagerContainer not null not outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v1, 0x0

    :try_start_b
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v1, 0x2

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    monitor-exit v2

    goto/16 :goto_3

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v1

    :cond_f
    const-string v1, "else part outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_10

    const-string v1, "setting new pager"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v1, "inflatePagerContainer: inCallButtonsPagerCallPlus"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0
.end method

.method private static final isNonSeparator(C)Z
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

.method private isOutgoingCall()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v2, "isoutgoing true"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v2, "isoutgoing false"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private queryForCallPlusContent()V
    .locals 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v3

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryForCallPlus number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_3
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_3
.end method

.method private queryForCallPlusEntrypoint()V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v3

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryForCallPlus number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_SHARING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const-string v4, "restartLoader UI_ENTRY_POINTS_LOADER : "

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const-string v4, "destroyLoader UI_ENTRY_POINTS_LOADER : "

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private queryInCallServiceProvider()Landroid/database/Cursor;
    .locals 11

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    if-eqz v10, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v9, 0x1

    :goto_0
    return-object v6

    :cond_0
    const-string v0, "No go for RCS"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "Bad RCS query, No go for RCS"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private recordClicked()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-string v1, "record Duration < 1000, toggleRecord Ignored."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    goto :goto_0
.end method

.method private removePagerInstance()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    :cond_0
    return-void
.end method

.method private removePagerInstance_out()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance_out"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    :cond_0
    return-void
.end method

.method private setCallPlusAddress(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallPlusAddress : show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setCallPlusImportance(ZI)V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    if-ne p2, v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v4, 0x7f090085

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    if-ne p2, v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isOutgoingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-ne p2, v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    if-ne p2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    monitor-exit p0

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCallPlusMap(ZLjava/lang/String;Z)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallPlusMap show :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "map_uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "map_only: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method private setCallPlusMapImage(ZLjava/lang/String;Z)V
    .locals 18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallPlusMapImage show :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "img_uri: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "img_only :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v15

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v15, v1, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    :cond_1
    const/4 v12, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v1

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v14, Landroid/media/ExifInterface;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v14, v1, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "columnIndex :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectedImagePath :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orientation :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v15, v1, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/16 v5, 0x8

    if-eq v1, v5, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try block isoutgoing: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_c

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->rotated:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->rotated:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    if-eqz p3, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v15, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/16 v5, 0x8

    if-eq v1, v5, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/4 v5, 0x3

    if-eq v1, v5, :cond_a

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isoutgoing: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    return-void

    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_d

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_d
    const/high16 v1, 0x42b40000    # 90.0f

    :try_start_3
    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_11
    const/16 v1, 0x8

    goto :goto_3
.end method

.method private setCallPlusSubject(ZLjava/lang/String;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallPlusSubject : show"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sub "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallPlusSubject : sub.isEmpty()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private showModifyErrorDialog()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Other party"

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$10;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVoLTESettingErrorDialog(I)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$11;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$11;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
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

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "InCall"

    const-string v5, "VoiceCallButtonCallPlusFragment striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 5

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isAudio(I)Z

    move-result v0

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isAudio(I)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetoothEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speakerEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "is_speaker_on"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateMuteButton()V

    return-void
.end method

.method private updateMuteButton()V
    .locals 4

    const-string v2, "updateMuteButton()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.intent.action.MUTE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_mute_on"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private updatePagerDescription(I)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePagerIndicator(I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f0201d8

    const v1, 0x7f0201d7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v6, :cond_7

    :cond_0
    move v3, v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePagerIndicator: isOutgoing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePagerIndicator: position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget v6, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    if-ne p1, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePagerIndicator: PAGE_CALLPLUS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageCallPlusToInCall()V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    move v3, v4

    goto/16 :goto_0

    :cond_8
    sget v6, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-ne p1, v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePagerIndicator: PAGE_INCALL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isOutgoing :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget v5, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-nez v5, :cond_c

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_f
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_12
    sget v4, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    if-ne p1, v4, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageExtraToInCall()V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private updatePagerState(Lcom/android/incallui/Call;)V
    .locals 11

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    const/4 v7, 0x3

    if-eq v4, v7, :cond_2

    const/16 v7, 0x8

    if-eq v4, v7, :cond_2

    const/4 v7, 0x6

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v7, :cond_12

    :cond_2
    move v3, v6

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x0

    :cond_3
    const-string v7, "support_safetycare"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x0

    :cond_4
    const-string v7, "emergency_find_lost_phone"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v3, 0x0

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v3, 0x0

    :cond_8
    const-string v7, "not_support_extra_view_page"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v3, 0x0

    :cond_9
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const/4 v3, 0x0

    :cond_b
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v7, :cond_c

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v3, :cond_13

    move v7, v5

    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v7, :cond_f

    if-eq v4, v9, :cond_d

    if-ne v4, v10, :cond_14

    :cond_d
    move v2, v6

    :goto_3
    if-eqz v2, :cond_15

    :cond_e
    :goto_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v7, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerDescription(I)V

    :cond_f
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v7, :cond_0

    if-eq v4, v9, :cond_10

    if-ne v4, v10, :cond_16

    :cond_10
    move v2, v6

    :goto_5
    if-eqz v2, :cond_17

    :cond_11
    :goto_6
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v5, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerDescription(I)V

    goto/16 :goto_0

    :cond_12
    move v3, v5

    goto/16 :goto_1

    :cond_13
    const/4 v7, 0x4

    goto :goto_2

    :cond_14
    move v2, v5

    goto :goto_3

    :cond_15
    if-nez v3, :cond_e

    iget-boolean v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v8, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    invoke-virtual {v7, v8, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    sget v7, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    goto :goto_4

    :cond_16
    move v2, v5

    goto :goto_5

    :cond_17
    if-nez v3, :cond_11

    iget-boolean v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v7, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    invoke-virtual {v6, v7, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    sget v5, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    goto :goto_6
.end method

.method private updateVideoBtnImage(I)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateVoiceCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateExtraVolumeButton()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateDiapadButton()V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVolteButton(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateVolteButton(Lcom/android/incallui/Call;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    move v1, v5

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v4

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getSuppService()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_4

    move v0, v5

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVolteButton() IsDialing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isOnHold:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsConference:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " InCallUISystemDB.getSuppService():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getSuppService()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsEmergencyMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsPSDomain:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " VOLTE_SETTING_ENABLED:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " swapProcessing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsTTyOff:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v8

    if-nez v8, :cond_5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVideoBtnImage(I)V

    goto/16 :goto_0

    :cond_3
    move v1, v6

    goto/16 :goto_1

    :cond_4
    move v0, v6

    goto/16 :goto_2

    :cond_5
    move v5, v6

    goto :goto_3
.end method


# virtual methods
.method public animateForManager(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "animateForManager...showManager:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " direct:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "animateForManager...isRunning"

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_a

    const/4 v3, 0x0

    :goto_1
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v14, v11, [F

    const/4 v15, 0x0

    if-eqz p1, :cond_b

    const/4 v11, 0x0

    :goto_2
    aput v11, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v14, v11, [F

    const/4 v15, 0x0

    if-eqz p1, :cond_c

    const/4 v11, 0x0

    :goto_3
    aput v11, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    new-instance v12, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v12}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    int-to-long v12, v3

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_11

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_12

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_13

    const/4 v11, 0x0

    :goto_7
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_14

    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_15

    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_16

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_17

    const/4 v11, 0x0

    :goto_b
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0042

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto/16 :goto_1

    :cond_b
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_c
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v11}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v4, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-static {v11}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v10, v11

    sub-float v2, v4, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    if-eqz p1, :cond_e

    :goto_c
    aput v2, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v14, v11, [F

    const/4 v15, 0x0

    if-eqz p1, :cond_f

    const/4 v11, 0x0

    :goto_d
    aput v11, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v14, v11, [F

    const/4 v15, 0x0

    if-eqz p1, :cond_10

    const/4 v11, 0x0

    :goto_e
    aput v11, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x0

    goto :goto_c

    :cond_f
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_10
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_11
    const/16 v11, 0xff

    goto/16 :goto_5

    :cond_12
    const/16 v11, 0xff

    goto/16 :goto_6

    :cond_13
    const/16 v11, 0xff

    goto/16 :goto_7

    :cond_14
    const/16 v11, 0xff

    goto/16 :goto_8

    :cond_15
    const/16 v11, 0xff

    goto/16 :goto_9

    :cond_16
    const/16 v11, 0xff

    goto/16 :goto_a

    :cond_17
    const/16 v11, 0xff

    goto/16 :goto_b
.end method

.method public animateForMoveDialpad(Z)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v2

    if-eqz p1, :cond_3

    cmpl-float v6, v3, v7

    if-gtz v6, :cond_0

    cmpl-float v6, v2, v7

    if-gtz v6, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d0027

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a04f8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v12, [F

    if-eqz p1, :cond_4

    move v6, v0

    :goto_1
    aput v6, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v12, [F

    if-eqz p1, :cond_5

    :goto_2
    aput v0, v9, v11

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    cmpl-float v6, v3, v7

    if-eqz v6, :cond_0

    cmpl-float v6, v2, v7

    if-nez v6, :cond_2

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2
.end method

.method public animateForRevealEndCallButton()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;

    invoke-direct {v5, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public extraVolumeClicked()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->toggleExtraVolume()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateExtraVolumeButton()V

    return-void
.end method

.method public getAddCallButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getBluetoothButton()Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
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

.method public getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPromotedButtonStub()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButtonStub()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method protected getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onBackPress()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryForCallPlusContent()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryForCallPlusEntrypoint()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "onCreateLoader CALLCONTENT_LOADER :"

    invoke-static {p0, v0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallContentContractCrane;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateLoader uri :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    const-string v0, "onCreateLoader UI_ENTRY_POINTS_LOADER :"

    invoke-static {p0, v0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04015f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    const/16 v4, 0x66

    const/16 v1, 0x65

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->dismissUSAVoLTEDialogs()V

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroyView()V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished CALLCONTENT_LOADER :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "onLoaderReset CALLCONTENT_LOADER :"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    const-string v1, "callplus onResume::"

    invoke-static {p0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "QUERYCALLPLUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    invoke-virtual {v1, v2, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    invoke-virtual {v1, v2, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateEndCallButton(Z)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    :cond_2
    return-void
.end method

.method public queryForSwappedCall()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v4, "queryForSwappedCall"

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "queryForSwappedCall - fragment is detached from activity, return"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryForSwappedCall getBackgroundCall number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "send nuber to crane"

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_SHARING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v7, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    :cond_3
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a04f8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public setAudio(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-eq v2, p1, :cond_2

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateAudioButtons(I)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-ne v2, v3, :cond_3

    if-ne p1, v5, :cond_3

    move v2, v3

    :goto_0
    or-int/2addr v0, v2

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-ne v2, v5, :cond_4

    if-ne p1, v3, :cond_4

    :goto_1
    or-int/2addr v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateExtraVolumeButton()V

    :cond_1
    iput p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2

    const v0, 0x7f02025b

    if-eqz p1, :cond_0

    const-string v1, "spr_vowifi_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0202a2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_1
    const v0, 0x7f020054

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 7

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/secrcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "updateCallButtons() :"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateEndCallButton()V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateDiapadButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDiapadButton..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f090255

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f090256

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090256

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDiapadButton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateEndCallButton()V
    .locals 4

    const-string v2, "show_vowifi_endcall_button"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez v1, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setEndCallButtonIcon(Z)V

    :cond_3
    return-void

    :cond_4
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateEndCallButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setEndCallButtonIcon(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 3

    const-string v1, "updateExtraVolumeButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isExtraVolOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateUiEntryPoint(Landroid/database/Cursor;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiEntryPoint data :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiEntryPoint mAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->CRANE_BTN_CONSTANT:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsSwtich:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiEntryPoint mAction good enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_4

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z

    if-nez v2, :cond_4

    if-ne v0, v5, :cond_4

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    const-string v2, "updateUiEntryPoint mAction"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_b
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_c
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v2, :cond_3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiEntryPoint mAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_15

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_15

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsSwtich:Z

    if-eqz v2, :cond_15

    const-string v2, "updateUiEntryPoint mAction true"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_11

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_11

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    :goto_3
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_e
    monitor-enter p0

    :try_start_3
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_12

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    :goto_4
    monitor-exit p0

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :cond_12
    :try_start_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :cond_15
    const-string v2, "updateUiEntryPoint mAction false"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_16
    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    :cond_17
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_18
    monitor-exit p0

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 10

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView data :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_8

    :cond_0
    const-string v2, "isoutgoing true"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    :goto_0
    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView data.moveToFirst() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView mImportance :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mSubject "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_2

    const-string v2, "fetching lat. and long.:"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLatLongfromLocation(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView mLocation :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLocation_map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mBackground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusImportance(ZI)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_4

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->importanceLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void

    :cond_8
    const-string v2, "isoutgoing false"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    goto/16 :goto_0

    :cond_9
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView mImportance :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mSubject "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_a

    const-string v2, "fetching lat. and long.:"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_a
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v5, v2, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    :cond_e
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isOutgoingCall()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    :goto_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_16
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
