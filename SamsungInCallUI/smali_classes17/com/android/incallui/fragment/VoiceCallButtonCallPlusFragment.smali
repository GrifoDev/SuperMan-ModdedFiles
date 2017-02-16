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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    .line 132
    sput v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    .line 133
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    .line 134
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    .line 135
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateOutgoingPagerAdapter:Ljava/lang/Object;

    .line 178
    const-wide v0, 0x1000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_CALL_COMPOSER:J

    .line 179
    const-wide v0, 0x2000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_SHARED_MAP:J

    .line 180
    const-wide v0, 0x4000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_SHARED_SKETCH:J

    .line 181
    const-wide v0, 0x8000000000L

    sput-wide v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->FEATURE_ENRICHED_POST_CALL:J

    .line 305
    sput v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    .line 145
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    .line 162
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 163
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    .line 165
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    .line 176
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isBB:Z

    .line 184
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->rotated:Landroid/graphics/Bitmap;

    .line 185
    iput v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    .line 186
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    .line 187
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    .line 188
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    .line 189
    iput v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    .line 190
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    .line 193
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 242
    iput v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    .line 243
    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    .line 246
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    .line 247
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    .line 252
    const-string v0, "incall"

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_PATH:Ljava/lang/String;

    .line 253
    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_PATH:Ljava/lang/String;

    .line 253
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    .line 256
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

    .line 260
    iput v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->CRANE_BTN_CONSTANT:I

    .line 263
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$2;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    .line 292
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    .line 294
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    .line 842
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 1162
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 2821
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryForCallPlusEntrypoint()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateInCallButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateExtraButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateOutgoingPagerAdapter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->checkThenModify(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->recordClicked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->emailClicked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # Lcom/android/incallui/Call;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getNetworkClass(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    return p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 129
    sput p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateCallPlus(Landroid/view/View;)V

    return-void
.end method

.method private addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1099
    const/4 v2, 0x0

    .line 1100
    .local v2, "isSpeakerOn":Z
    const/4 v1, 0x0

    .line 1101
    .local v1, "isBluetoothOn":Z
    const/4 v0, 0x0

    .line 1103
    .local v0, "isBluetoothAvailable":Z
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1104
    const/4 v2, 0x1

    .line 1108
    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1109
    const/4 v1, 0x1

    .line 1112
    :goto_1
    const/4 v0, 0x1

    .line 1114
    const-string v3, "contactNumber"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    const-string v3, "contactName"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v3, "contactLabel"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1117
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-virtual {p0, p3, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1119
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1122
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1123
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1127
    return-void

    .line 1106
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1111
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private changePageCallPlusToInCall()V
    .locals 4

    .prologue
    const/16 v1, 0x66

    .line 826
    const-string v0, "changePageCallPlusToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 831
    return-void
.end method

.method private changePageExtraToInCall()V
    .locals 4

    .prologue
    const/16 v1, 0x65

    .line 834
    const-string v0, "changePageExtraToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 840
    return-void
.end method

.method private checkThenModify(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2686
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v1

    .line 2687
    .local v1, "enabled":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2688
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 2706
    :cond_0
    :goto_0
    return-void

    .line 2689
    :cond_1
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 2690
    .local v2, "modifyPossible":Z
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

    .line 2691
    if-eqz v1, :cond_2

    .line 2692
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "volteSettingErrorShowNeverAgain"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2693
    .local v3, "showNeverAgain":I
    if-nez v3, :cond_0

    .line 2694
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->showVoLTESettingErrorDialog(I)V

    goto :goto_0

    .line 2696
    .end local v3    # "showNeverAgain":I
    :cond_2
    if-nez v2, :cond_3

    .line 2697
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->showModifyErrorDialog()V

    goto :goto_0

    .line 2699
    :cond_3
    const v4, 0x7f1003f2

    if-ne p1, v4, :cond_4

    .line 2700
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0

    .line 2701
    :cond_4
    const v4, 0x7f1002fa

    if-ne p1, v4, :cond_0

    .line 2702
    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private dismissUSAVoLTEDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2748
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2749
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2750
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    .line 2752
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2753
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2754
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    .line 2756
    :cond_1
    return-void
.end method

.method private emailClicked()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2534
    const/4 v6, 0x0

    .line 2535
    .local v6, "address":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    .line 2536
    .local v7, "call":Lcom/android/incallui/Call;
    if-nez v7, :cond_0

    .line 2564
    :goto_0
    return-void

    .line 2537
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    .line 2538
    .local v10, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v10, :cond_3

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_3

    .line 2539
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

    .line 2543
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 2544
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2546
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2547
    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2548
    .local v8, "columnIndex":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    .line 2549
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2550
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

    .line 2554
    .end local v8    # "columnIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2555
    const/4 v9, 0x0

    throw v0

    .line 2554
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2555
    const/4 v9, 0x0

    .line 2563
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/android/incallui/util/PackageHelpers;->launchEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2558
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 13
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1224
    const-string v11, "enableVoiceCallButtons :"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1225
    if-nez p1, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    const/4 v8, 0x1

    .line 1228
    .local v8, "isEnabled":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_3

    .line 1229
    :cond_2
    const/4 v8, 0x0

    .line 1231
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1232
    const-string v11, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1233
    const/4 v8, 0x0

    .line 1236
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_5

    .line 1237
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_13

    :cond_5
    const/4 v7, 0x1

    .line 1239
    .local v7, "isDialing":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_14

    const/4 v9, 0x1

    .line 1241
    .local v9, "isHolding":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getHasBeenVideoCall()Z

    move-result v11

    if-nez v11, :cond_15

    const/4 v0, 0x1

    .line 1242
    .local v0, "addEnabled":Z
    :goto_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v11

    if-eqz v11, :cond_16

    if-nez v7, :cond_16

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    .line 1243
    .local v2, "canAdd":Z
    :goto_4
    if-nez v7, :cond_17

    const/4 v5, 0x1

    .line 1244
    .local v5, "canShare":Z
    :goto_5
    const/4 v11, 0x4

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1245
    const/4 v2, 0x0

    .line 1247
    :cond_6
    const/16 v11, 0x40

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_18

    if-nez v7, :cond_18

    if-nez v9, :cond_18

    const/4 v4, 0x1

    .line 1248
    .local v4, "canMute":Z
    :goto_6
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1249
    const/4 v4, 0x0

    .line 1251
    :cond_7
    if-nez v7, :cond_19

    const/4 v3, 0x1

    .line 1252
    .local v3, "canExtraVol":Z
    :goto_7
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1253
    const/4 v3, 0x0

    .line 1255
    :cond_8
    const/4 v10, 0x1

    .line 1256
    .local v10, "speakerEnabled":Z
    const/16 v11, 0x8

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1257
    const/4 v10, 0x0

    .line 1259
    :cond_9
    const/4 v1, 0x1

    .line 1260
    .local v1, "bluetoothEnabled":Z
    const/16 v11, 0x20

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1261
    const/4 v1, 0x0

    .line 1265
    :cond_a
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1266
    const/4 v3, 0x0

    .line 1267
    const/4 v10, 0x0

    .line 1268
    const/4 v1, 0x0

    .line 1271
    :cond_b
    if-nez v9, :cond_1a

    const/4 v6, 0x1

    .line 1272
    .local v6, "dialpadEnabled":Z
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

    .line 1273
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

    .line 1275
    :cond_c
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_d

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v8, :cond_1c

    if-eqz v2, :cond_1c

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1276
    :cond_d
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_e

    .line 1277
    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1d

    if-eqz v3, :cond_1d

    iget-boolean v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    if-nez v11, :cond_1d

    const/4 v11, 0x1

    :goto_b
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1278
    :cond_e
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_f

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1e

    if-eqz v1, :cond_1e

    const/4 v11, 0x1

    :goto_c
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1279
    :cond_f
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_10

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1f

    if-eqz v10, :cond_1f

    const/4 v11, 0x1

    :goto_d
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1280
    :cond_10
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v11, :cond_11

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v8, :cond_20

    if-eqz v6, :cond_20

    const/4 v11, 0x1

    :goto_e
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1281
    :cond_11
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_12

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_21

    if-eqz v4, :cond_21

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1282
    :cond_12
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1237
    .end local v0    # "addEnabled":Z
    .end local v1    # "bluetoothEnabled":Z
    .end local v2    # "canAdd":Z
    .end local v3    # "canExtraVol":Z
    .end local v4    # "canMute":Z
    .end local v5    # "canShare":Z
    .end local v6    # "dialpadEnabled":Z
    .end local v7    # "isDialing":Z
    .end local v9    # "isHolding":Z
    .end local v10    # "speakerEnabled":Z
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1239
    .restart local v7    # "isDialing":Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1241
    .restart local v9    # "isHolding":Z
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1242
    .restart local v0    # "addEnabled":Z
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1243
    .restart local v2    # "canAdd":Z
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1247
    .restart local v5    # "canShare":Z
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1251
    .restart local v4    # "canMute":Z
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 1271
    .restart local v1    # "bluetoothEnabled":Z
    .restart local v3    # "canExtraVol":Z
    .restart local v10    # "speakerEnabled":Z
    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1273
    .restart local v6    # "dialpadEnabled":Z
    :cond_1b
    const/4 v11, 0x0

    goto :goto_9

    .line 1275
    :cond_1c
    const/4 v11, 0x0

    goto :goto_a

    .line 1277
    :cond_1d
    const/4 v11, 0x0

    goto :goto_b

    .line 1278
    :cond_1e
    const/4 v11, 0x0

    goto :goto_c

    .line 1279
    :cond_1f
    const/4 v11, 0x0

    goto :goto_d

    .line 1280
    :cond_20
    const/4 v11, 0x0

    goto :goto_e

    .line 1281
    :cond_21
    const/4 v11, 0x0

    goto :goto_f
.end method

.method private getLatLongfromLocation(Ljava/lang/String;)V
    .locals 7
    .param p1, "mLocation2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1694
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1695
    .local v1, "mLatLong":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 1696
    .local v0, "mLat":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1697
    .local v3, "mTagAndLat":[Ljava/lang/String;
    aget-object v0, v3, v6

    .line 1698
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    .line 1699
    aget-object v2, v1, v6

    .line 1700
    .local v2, "mLong":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    .line 1701
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

    .line 1702
    return-void
.end method

.method private getNetworkClass(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2847
    const-string v2, "phone"

    .line 2848
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2849
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2850
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_0

    .line 2870
    const/4 v2, 0x3

    :goto_0
    return v2

    .line 2856
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2866
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2868
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 2850
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
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1853
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

    .line 1854
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 1855
    .local v1, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_5

    .line 1856
    :cond_0
    const-string v2, "isoutgoing true"

    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1857
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    .line 1862
    :goto_0
    const v2, 0x7f100232

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    .line 1863
    const v2, 0x7f100235

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    .line 1864
    const v2, 0x7f1003fd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->importanceLayout:Landroid/widget/RelativeLayout;

    .line 1865
    const v2, 0x7f100401

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapimageLayout:Landroid/widget/LinearLayout;

    .line 1866
    const v2, 0x7f1003fe

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    .line 1867
    const v2, 0x7f1003ff

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    .line 1868
    const v2, 0x7f10022e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    .line 1869
    const v2, 0x7f10022f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    .line 1870
    const v2, 0x7f100403

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    .line 1871
    const v2, 0x7f100404

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    .line 1872
    const v2, 0x7f100402

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    .line 1873
    const v2, 0x7f100400

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    .line 1874
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    new-instance v4, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    .line 1875
    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1896
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1897
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1907
    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    if-eqz v2, :cond_e

    .line 1908
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

    .line 1909
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusImportance(ZI)V

    .line 1910
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    .line 1911
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    .line 1912
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1913
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_1

    .line 1914
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->importanceLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1916
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_a

    .line 1917
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1920
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

    .line 1921
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1922
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 1923
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1924
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    .line 1925
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 1859
    :cond_5
    :try_start_1
    const-string v2, "isoutgoing false"

    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1860
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1853
    .end local v1    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1899
    .restart local v1    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1900
    .local v0, "hasActiveCall":Z
    :goto_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_9

    .line 1901
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_1

    .end local v0    # "hasActiveCall":Z
    :cond_8
    move v0, v3

    .line 1899
    goto :goto_4

    .line 1903
    .restart local v0    # "hasActiveCall":Z
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_1

    .line 1918
    .end local v0    # "hasActiveCall":Z
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1919
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1926
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 1927
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1928
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    .line 1929
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto :goto_3

    .line 1930
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 1931
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1932
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 1933
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_3

    .line 1935
    :cond_d
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1936
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 1937
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    .line 1940
    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1941
    :cond_f
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isOutgoingCall()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1942
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1946
    :cond_10
    :goto_5
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusImportance(ZI)V

    .line 1947
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1948
    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1949
    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1950
    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1951
    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1944
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
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 2181
    const v0, 0x7f100408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEmailButton:Landroid/widget/Button;

    .line 2182
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2183
    const v0, 0x7f10040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMessageButton:Landroid/widget/Button;

    .line 2184
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2185
    const v0, 0x7f10040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    .line 2186
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2187
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "secOnscreenInternetText"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2188
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInternetButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "secOnscreenInternetText"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2189
    const v0, 0x7f10040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mContactButton:Landroid/widget/Button;

    .line 2190
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2191
    const v0, 0x7f10040e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPlannerButton:Landroid/widget/Button;

    .line 2192
    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPlannerButton:Landroid/widget/Button;

    const v1, 0x7f090249

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPlannerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2195
    const v0, 0x7f10040f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMemoButton:Landroid/widget/Button;

    .line 2196
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2198
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-ne v0, v1, :cond_1

    .line 2199
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    if-ne v0, v1, :cond_1

    .line 2200
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 2201
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageExtraToInCall()V

    .line 2204
    :cond_1
    return-void
.end method

.method private declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 12
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1956
    monitor-enter p0

    const v8, 0x7f1003f0

    :try_start_0
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    .line 1957
    const v8, 0x7f1003f1

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    .line 1958
    const v8, 0x7f1003fc

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    .line 1960
    const v8, 0x7f100389

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    .line 1961
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 1962
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1963
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1965
    :cond_0
    const v8, 0x7f1003f6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    .line 1966
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_1

    .line 1967
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1968
    const v8, 0x7f10019d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    .line 1969
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_14

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_14

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v8, :cond_14

    .line 1970
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    .line 1971
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1972
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1982
    :cond_1
    :goto_0
    const v8, 0x7f1003f5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    .line 1983
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_2

    .line 1984
    sget-object v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1985
    :try_start_1
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    .line 1986
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1987
    :try_start_2
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1988
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 1991
    :cond_2
    const v8, 0x7f1003f8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 1992
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_3

    .line 1993
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1994
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 1996
    :cond_3
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1997
    const v8, 0x7f1003f4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    .line 1998
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_5

    .line 1999
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2000
    const v8, 0x7f100347

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButton:Landroid/widget/ToggleButton;

    .line 2001
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2002
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2003
    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2005
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v7

    .line 2006
    .local v7, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v7, :cond_6

    .line 2007
    invoke-virtual {v7}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 2011
    .end local v7    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_6
    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2012
    const v8, 0x7f1003f2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    .line 2013
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2014
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2015
    const v8, 0x7f1003f9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    .line 2016
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2017
    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2019
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_9

    .line 2020
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2021
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2022
    const v8, 0x7f1002fa

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    .line 2023
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2024
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2027
    :cond_9
    const-string v8, "ims_rcs"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2028
    const-string v8, "RCS present"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2029
    const v8, 0x7f1003f3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    .line 2030
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_a

    .line 2031
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2032
    const v8, 0x7f1001ab

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    .line 2033
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v8, :cond_a

    .line 2034
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2035
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2045
    :cond_a
    const v8, 0x7f1003f7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    .line 2046
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_b

    .line 2047
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2048
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2049
    const v8, 0x7f1001aa

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    .line 2050
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v8, :cond_b

    .line 2051
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$8;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2061
    :cond_b
    const-string v8, "ims_rcs"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2062
    const-string v8, "onUiResume called"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2063
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    .line 2064
    .local v1, "buttonPresenter":Lcom/android/incallui/CallButtonPresenter;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    .line 2066
    .end local v1    # "buttonPresenter":Lcom/android/incallui/CallButtonPresenter;
    :cond_c
    const v8, 0x7f10037d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 2067
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2068
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 2069
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 2070
    const v8, 0x7f100097

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    .line 2071
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2072
    const v8, 0x7f100096

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    .line 2073
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2074
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->returnButtonsForDialpad(Z)V

    .line 2075
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

    .line 2076
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v5

    .line 2077
    .local v5, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
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

    .line 2078
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

    .line 2079
    const/4 v2, 0x0

    .line 2080
    .local v2, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2081
    .local v6, "mHasRcsServices":Z
    const/4 v3, 0x0

    .line 2083
    .local v3, "enabled":I
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryInCallServiceProvider()Landroid/database/Cursor;

    move-result-object v2

    .line 2084
    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_d

    .line 2085
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2086
    const-string v8, "feature_tag"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2088
    .local v4, "feature_tag_idx":I
    const-string v8, "int_name"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2092
    .local v0, "action_idx":I
    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->CRANE_BTN_CONSTANT:I

    .line 2093
    const/4 v6, 0x1

    .line 2095
    .end local v0    # "action_idx":I
    .end local v4    # "feature_tag_idx":I
    :cond_d
    if-eqz v2, :cond_e

    .line 2096
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2099
    :cond_e
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_f

    .line 2100
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2101
    :cond_f
    sget-object v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2102
    :try_start_3
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    .line 2103
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setCallPlusAvailable(Z)V

    .line 2104
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2105
    :try_start_4
    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_16

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v8, :cond_16

    .line 2106
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2107
    :cond_10
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_11

    .line 2108
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2109
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_11

    .line 2110
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    .line 2111
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2160
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "enabled":I
    .end local v6    # "mHasRcsServices":Z
    :cond_11
    :goto_1
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v5, v8, :cond_21

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v8, :cond_21

    .line 2161
    const-string v8, "State Incall; show Page Incall"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2162
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 2163
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageCallPlusToInCall()V

    .line 2175
    :cond_12
    :goto_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_13

    .line 2176
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2178
    :cond_13
    monitor-exit p0

    return-void

    .line 1974
    .end local v5    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_14
    :try_start_5
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_1

    .line 1975
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_15

    .line 1976
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1977
    :cond_15
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1978
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1956
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1986
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

    .line 2104
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "enabled":I
    .restart local v5    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v6    # "mHasRcsServices":Z
    :catchall_2
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8

    .line 2115
    :cond_16
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2116
    :cond_17
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_11

    .line 2117
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_18

    .line 2118
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2119
    :cond_18
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2120
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    goto :goto_1

    .line 2123
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "enabled":I
    .end local v6    # "mHasRcsServices":Z
    :cond_19
    const-string v8, "ims_crane"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    iget-boolean v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    if-eqz v8, :cond_1d

    .line 2125
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_1d

    .line 2126
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v8, :cond_1d

    .line 2127
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

    .line 2128
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

    .line 2129
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1a

    .line 2130
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2135
    :cond_1a
    :goto_3
    sget-object v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflateInCallButtons:Ljava/lang/Object;

    monitor-enter v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2136
    :try_start_a
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    .line 2137
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/incallui/secrcs/RcsShareUI;->setCallPlusAvailable(Z)V

    .line 2138
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2139
    :try_start_b
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2140
    :cond_1b
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_11

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v8, :cond_11

    sget-boolean v8, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v8, :cond_11

    .line 2141
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2142
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_11

    .line 2143
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    .line 2144
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 2132
    :cond_1c
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1a

    .line 2133
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 2138
    :catchall_3
    move-exception v8

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v8

    .line 2148
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

    .line 2149
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1e

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2150
    :cond_1e
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    .line 2151
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/secrcs/RcsShareUI;->setCallPlusAvailable(Z)V

    .line 2152
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_20

    .line 2153
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v8, :cond_1f

    .line 2154
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2155
    :cond_1f
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2156
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    .line 2158
    :cond_20
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 2164
    :cond_21
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v8

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    if-ne v8, v9, :cond_12

    .line 2165
    const-string v8, "State dialing; show latest page"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2166
    iget v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-ne v8, v9, :cond_22

    .line 2167
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 2168
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageCallPlusToInCall()V

    goto/16 :goto_2

    .line 2169
    :cond_22
    iget v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    if-ne v8, v9, :cond_12

    .line 2170
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v9, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 2171
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageExtraToInCall()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2
.end method

.method private declared-synchronized inflatePagerContainer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 523
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 524
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

    .line 525
    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    .line 528
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateInCallButtons(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 535
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 536
    .local v0, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_a

    .line 537
    :cond_3
    const-string v1, "isoutgoing true"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 538
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    .line 543
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

    .line 544
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z

    .line 547
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

    .line 549
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

    .line 550
    :cond_5
    const-string v1, "inflatePagerContainer values null in DB"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 551
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-eqz v1, :cond_c

    .line 552
    const-string v1, "inflatePagerContainer null outgoing"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 553
    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 554
    const/4 v1, 0x0

    :try_start_3
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    .line 555
    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    .line 556
    const/4 v1, 0x2

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    .line 557
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 585
    :goto_3
    :try_start_4
    const-string v1, "reset adapter "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 586
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->notifyDataSetChanged()V

    .line 587
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->notifyDataSetChanged()V

    .line 589
    :cond_7
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_f

    .line 590
    :cond_8
    const-string v1, "outgoing is there"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 591
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    .line 592
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-nez v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    .line 594
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_9

    .line 595
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setVisibility(I)V

    .line 596
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 597
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    .line 598
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 599
    const-string v1, "inflatePagerContainer: outgoingButtonsPager Call Plus"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    :cond_9
    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    goto/16 :goto_0

    .line 540
    :cond_a
    const-string v1, "isoutgoing false"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 541
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    goto/16 :goto_1

    .line 546
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->ultraPowerMode:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 557
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 559
    :cond_c
    const-string v1, "inflatePagerContainer null not outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 560
    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    const/4 v1, -0x1

    :try_start_7
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    .line 562
    const/4 v1, 0x0

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    .line 563
    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    .line 564
    monitor-exit v2

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    .line 567
    :cond_d
    const-string v1, "inflatePagerContainer values NOT null in DB "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 568
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-eqz v1, :cond_e

    .line 569
    const-string v1, "inflatePagerContainer not null outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 570
    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 571
    const/4 v1, 0x0

    :try_start_9
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    .line 572
    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    .line 573
    const/4 v1, 0x2

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT_OUT:I

    .line 574
    monitor-exit v2

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v1

    .line 576
    :cond_e
    const-string v1, "inflatePagerContainer not null not outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 577
    sget-object v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->lockForInflatePagerContainer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 578
    const/4 v1, 0x0

    :try_start_b
    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    .line 579
    const/4 v1, 0x1

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    .line 580
    const/4 v1, 0x2

    sput v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I

    .line 581
    monitor-exit v2

    goto/16 :goto_3

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v1

    .line 604
    :cond_f
    const-string v1, "else part outgoing "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 609
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    .line 610
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-nez v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    .line 612
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_10

    .line 613
    const-string v1, "setting new pager"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 614
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setVisibility(I)V

    .line 615
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 616
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    .line 617
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerAdapter:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 618
    const-string v1, "inflatePagerContainer: inCallButtonsPagerCallPlus"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    :cond_10
    sget v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1309
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

    .prologue
    const/4 v3, 0x1

    .line 1705
    const/4 v1, 0x0

    .line 1706
    .local v1, "isOutgoingCall":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 1707
    .local v0, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_1

    .line 1708
    :cond_0
    const-string v2, "isoutgoing true"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1709
    const/4 v1, 0x1

    .line 1714
    :goto_0
    return v1

    .line 1711
    :cond_1
    const-string v2, "isoutgoing false"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1712
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private queryForCallPlusContent()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1336
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1337
    .local v2, "hasActiveCall":Z
    :goto_0
    const/4 v1, 0x0

    .line 1338
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1339
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1348
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1349
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 1350
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 1351
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

    .line 1353
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 1354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1355
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1357
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1360
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1364
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_3
    return-void

    .line 1336
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "hasActiveCall":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1340
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "hasActiveCall":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 1341
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    .line 1343
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1344
    if-nez v1, :cond_0

    .line 1345
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    .line 1359
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 1362
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_3
.end method

.method private queryForCallPlusEntrypoint()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 1367
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1368
    .local v2, "hasActiveCall":Z
    :goto_0
    const/4 v1, 0x0

    .line 1369
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1370
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1379
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1380
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 1381
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 1382
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

    .line 1384
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1386
    .local v0, "bundle_uiEntry":Landroid/os/Bundle;
    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_SHARING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1389
    const-string v4, "restartLoader UI_ENTRY_POINTS_LOADER : "

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1394
    .end local v0    # "bundle_uiEntry":Landroid/os/Bundle;
    :goto_2
    return-void

    .line 1367
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "hasActiveCall":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1371
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "hasActiveCall":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 1372
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    .line 1374
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1375
    if-nez v1, :cond_0

    .line 1376
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    goto :goto_1

    .line 1391
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1392
    const-string v4, "destroyLoader UI_ENTRY_POINTS_LOADER : "

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private queryInCallServiceProvider()Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 1455
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    .line 1456
    .local v8, "mCall":Lcom/android/incallui/Call;
    const/4 v9, 0x0

    .line 1457
    .local v9, "mHasRcsServices":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    .line 1458
    .local v10, "telNum":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1459
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1461
    .local v1, "uri":Landroid/net/Uri;
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

    .line 1463
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

    .line 1465
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1466
    const/4 v9, 0x1

    .line 1478
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v6

    .line 1468
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v0, "No go for RCS"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    const/4 v9, 0x0

    goto :goto_0

    .line 1471
    :catch_0
    move-exception v7

    .line 1472
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Bad RCS query, No go for RCS"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    const/4 v9, 0x0

    goto :goto_0

    .line 1476
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private recordClicked()V
    .locals 6

    .prologue
    .line 2463
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 2464
    .local v0, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_0

    .line 2465
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 2466
    const-string v1, "record Duration < 1000, toggleRecord Ignored."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2469
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    goto :goto_0
.end method

.method private removePagerInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 808
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 811
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 812
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    .line 814
    :cond_0
    return-void
.end method

.method private removePagerInstance_out()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 817
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    .line 818
    const-string v0, "removePagerInstance_out"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 820
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 821
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    .line 823
    :cond_0
    return-void
.end method

.method private setCallPlusAddress(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1746
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

    .line 1747
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1751
    :cond_0
    return-void

    .line 1749
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setCallPlusImportance(ZI)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "imp"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1718
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1719
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    if-ne p2, v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1721
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v4, 0x7f090085

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1722
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    if-ne p2, v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1723
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isOutgoingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1724
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-ne p2, v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1725
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1726
    monitor-enter p0

    .line 1727
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceToggleButton:Landroid/widget/Switch;

    if-ne p2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1728
    monitor-exit p0

    .line 1731
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1719
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1722
    goto :goto_1

    .line 1728
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCallPlusMap(ZLjava/lang/String;Z)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "map_uri"    # Ljava/lang/String;
    .param p3, "map_only"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1824
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

    .line 1825
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 1826
    if-eqz p1, :cond_0

    .line 1827
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1828
    :cond_0
    if-eqz p3, :cond_5

    .line 1829
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 1830
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1831
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1832
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1833
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1835
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 1836
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1846
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 1847
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1848
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1850
    :cond_4
    return-void

    .line 1838
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    .line 1839
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1840
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1841
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1843
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 1844
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    .line 1848
    goto :goto_1
.end method

.method private setCallPlusMapImage(ZLjava/lang/String;Z)V
    .locals 18
    .param p1, "show"    # Z
    .param p2, "img_uri"    # Ljava/lang/String;
    .param p3, "img_only"    # Z

    .prologue
    .line 1754
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

    .line 1755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    .line 1756
    if-eqz p1, :cond_0

    .line 1757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v15

    .line 1759
    .local v15, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v15, v1, :cond_1

    .line 1760
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    .line 1762
    :cond_1
    const/4 v12, 0x0

    .line 1764
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v1

    .line 1765
    .local v3, "filePathColumn":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1766
    .local v2, "selectedImage":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1767
    if-eqz v12, :cond_4

    .line 1768
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1769
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1770
    .local v11, "columnIndex":I
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1771
    .local v17, "selectedImagePath":Ljava/lang/String;
    new-instance v14, Landroid/media/ExifInterface;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1772
    .local v14, "exif":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v14, v1, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    .line 1773
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

    .line 1774
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

    .line 1775
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

    .line 1776
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

    .line 1777
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

    .line 1778
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1779
    .local v4, "myImg":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 1780
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_c

    .line 1781
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1786
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

    .line 1787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->rotated:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    .end local v4    # "myImg":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "columnIndex":I
    .end local v14    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "selectedImagePath":Ljava/lang/String;
    :cond_4
    if-eqz v12, :cond_5

    .line 1794
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1796
    .end local v2    # "selectedImage":Landroid/net/Uri;
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz p3, :cond_f

    .line 1797
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 1798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 1799
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1800
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1803
    .end local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    .line 1804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1814
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

    .line 1815
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

    .line 1816
    if-eqz p2, :cond_a

    .line 1817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1819
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1821
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_b
    return-void

    .line 1782
    .restart local v2    # "selectedImage":Landroid/net/Uri;
    .restart local v3    # "filePathColumn":[Ljava/lang/String;
    .restart local v4    # "myImg":Landroid/graphics/Bitmap;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "columnIndex":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "exif":Landroid/media/ExifInterface;
    .restart local v15    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v17    # "selectedImagePath":Ljava/lang/String;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_d

    .line 1783
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1790
    .end local v2    # "selectedImage":Landroid/net/Uri;
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    .end local v4    # "myImg":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "columnIndex":I
    .end local v14    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "selectedImagePath":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1791
    .local v13, "e":Ljava/lang/Exception;
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

    .line 1793
    if-eqz v12, :cond_5

    .line 1794
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1785
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "selectedImage":Landroid/net/Uri;
    .restart local v3    # "filePathColumn":[Ljava/lang/String;
    .restart local v4    # "myImg":Landroid/graphics/Bitmap;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "columnIndex":I
    .restart local v14    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "selectedImagePath":Ljava/lang/String;
    :cond_d
    const/high16 v1, 0x42b40000    # 90.0f

    :try_start_3
    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1793
    .end local v2    # "selectedImage":Landroid/net/Uri;
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    .end local v4    # "myImg":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "columnIndex":I
    .end local v14    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "selectedImagePath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_e

    .line 1794
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    .line 1806
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_10

    .line 1807
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 1808
    .restart local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->imageLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1811
    .end local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    .line 1812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mapLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 1819
    :cond_11
    const/16 v1, 0x8

    goto :goto_3
.end method

.method private setCallPlusSubject(ZLjava/lang/String;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1734
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1735
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

    .line 1736
    if-eqz p2, :cond_0

    .line 1737
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

    .line 1738
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1740
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

    .line 1741
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1743
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1740
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1741
    goto :goto_1
.end method

.method private showModifyErrorDialog()V
    .locals 4

    .prologue
    .line 2709
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v0

    .line 2710
    .local v0, "primaryName":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "Other party"

    .line 2711
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2712
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

    .line 2713
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2717
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    .line 2718
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2719
    return-void
.end method

.method private showVoLTESettingErrorDialog(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 2722
    const/4 v0, 0x0

    .line 2723
    .local v0, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2737
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2738
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$11;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$11;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    .line 2739
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2743
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    .line 2744
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2745
    return-void

    .line 2725
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2726
    goto :goto_0

    .line 2728
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2729
    goto :goto_0

    .line 2731
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2732
    goto :goto_0

    .line 2723
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
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1319
    if-nez p0, :cond_0

    .line 1320
    const/4 v4, 0x0

    .line 1332
    :goto_0
    return-object v4

    .line 1322
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1323
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1325
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1326
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1327
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1328
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1331
    .end local v0    # "c":C
    :cond_2
    const-string v4, "InCall"

    const-string v5, "VoiceCallButtonCallPlusFragment striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 5
    .param p1, "supportedModes"    # I

    .prologue
    .line 2441
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isAudio(I)Z

    move-result v0

    .line 2442
    .local v0, "bluetoothEnabled":Z
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isAudio(I)Z

    move-result v1

    .line 2444
    .local v1, "speakerEnabled":Z
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

    .line 2445
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

    .line 2447
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    .line 2448
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2449
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2450
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2451
    .local v2, "speakerIntent":Landroid/content/Intent;
    const-string v3, "is_speaker_on"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2452
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2455
    .end local v2    # "speakerIntent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_1

    .line 2456
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2459
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateMuteButton()V

    .line 2460
    return-void
.end method

.method private updateMuteButton()V
    .locals 4

    .prologue
    .line 2578
    const-string v2, "updateMuteButton()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2579
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 2580
    .local v0, "isMuted":Z
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

    .line 2582
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    .line 2583
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2584
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2585
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.intent.action.MUTE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2586
    .local v1, "muteIntent":Landroid/content/Intent;
    const-string v2, "is_mute_on"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2587
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2590
    .end local v1    # "muteIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updatePagerDescription(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 2359
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2360
    .local v0, "context":Landroid/content/Context;
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

    .line 2361
    .local v1, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2362
    :cond_0
    return-void
.end method

.method private updatePagerIndicator(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2285
    const v2, 0x7f0201d8

    .line 2286
    .local v2, "indicatorOn":I
    const v1, 0x7f0201d7

    .line 2287
    .local v1, "indicatorOff":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 2288
    .local v0, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v6, :cond_7

    :cond_0
    move v3, v5

    .line 2289
    .local v3, "isOutgoing":Z
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

    .line 2300
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

    .line 2301
    sget v6, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    if-ne p1, v6, :cond_8

    .line 2302
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

    .line 2303
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageCallPlusToInCall()V

    .line 2312
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 2313
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2314
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2315
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 2316
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2317
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 2318
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2319
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2320
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 2321
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2356
    :cond_6
    :goto_1
    return-void

    .end local v3    # "isOutgoing":Z
    :cond_7
    move v3, v4

    .line 2288
    goto/16 :goto_0

    .line 2322
    .restart local v3    # "isOutgoing":Z
    :cond_8
    sget v6, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-ne p1, v6, :cond_12

    .line 2323
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

    .line 2324
    sget v5, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    if-nez v5, :cond_c

    .line 2325
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 2326
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2327
    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 2328
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2329
    :cond_a
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 2330
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2331
    :cond_b
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 2332
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2334
    :cond_c
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v5, :cond_d

    .line 2335
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2336
    :cond_d
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_e

    .line 2337
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2338
    :cond_e
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v5, :cond_f

    .line 2339
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2340
    :cond_f
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v5, :cond_10

    .line 2341
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2342
    :cond_10
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v5, :cond_11

    .line 2343
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2344
    :cond_11
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 2345
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2347
    :cond_12
    sget v4, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I

    if-ne p1, v4, :cond_6

    .line 2348
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->changePageExtraToInCall()V

    .line 2351
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 2352
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private updatePagerState(Lcom/android/incallui/Call;)V
    .locals 11
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2207
    if-nez p1, :cond_1

    .line 2282
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 2210
    .local v4, "state":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 2211
    .local v1, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
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

    .line 2213
    .local v3, "needToUsePager":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2214
    const/4 v3, 0x0

    .line 2216
    :cond_3
    const-string v7, "support_safetycare"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2217
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2218
    const/4 v3, 0x0

    .line 2221
    :cond_4
    const-string v7, "emergency_find_lost_phone"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2222
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2223
    const/4 v3, 0x0

    .line 2226
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2227
    const/4 v3, 0x0

    .line 2230
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2231
    const/4 v3, 0x0

    .line 2234
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2235
    const/4 v3, 0x0

    .line 2238
    :cond_8
    const-string v7, "not_support_extra_view_page"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2239
    const/4 v3, 0x0

    .line 2243
    :cond_9
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2244
    :cond_a
    const/4 v3, 0x0

    .line 2247
    :cond_b
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v7, :cond_c

    .line 2248
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v3, :cond_13

    move v7, v5

    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2251
    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v7, :cond_f

    .line 2252
    if-eq v4, v9, :cond_d

    if-ne v4, v10, :cond_14

    :cond_d
    move v2, v6

    .line 2253
    .local v2, "isDisconnect":Z
    :goto_3
    if-eqz v2, :cond_15

    .line 2261
    :cond_e
    :goto_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v7, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    .line 2262
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    .line 2263
    .local v0, "currentPage":I
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerIndicator(I)V

    .line 2264
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerDescription(I)V

    .line 2267
    .end local v0    # "currentPage":I
    .end local v2    # "isDisconnect":Z
    :cond_f
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v7, :cond_0

    .line 2268
    if-eq v4, v9, :cond_10

    if-ne v4, v10, :cond_16

    :cond_10
    move v2, v6

    .line 2269
    .restart local v2    # "isDisconnect":Z
    :goto_5
    if-eqz v2, :cond_17

    .line 2277
    :cond_11
    :goto_6
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v5, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    .line 2278
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    .line 2279
    .restart local v0    # "currentPage":I
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerIndicator(I)V

    .line 2280
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerDescription(I)V

    goto/16 :goto_0

    .end local v0    # "currentPage":I
    .end local v2    # "isDisconnect":Z
    .end local v3    # "needToUsePager":Z
    :cond_12
    move v3, v5

    .line 2211
    goto/16 :goto_1

    .line 2248
    .restart local v3    # "needToUsePager":Z
    :cond_13
    const/4 v7, 0x4

    goto :goto_2

    :cond_14
    move v2, v5

    .line 2252
    goto :goto_3

    .line 2255
    .restart local v2    # "isDisconnect":Z
    :cond_15
    if-nez v3, :cond_e

    .line 2256
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    if-nez v7, :cond_e

    .line 2257
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v8, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    invoke-virtual {v7, v8, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 2258
    sget v7, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    goto :goto_4

    .end local v2    # "isDisconnect":Z
    :cond_16
    move v2, v5

    .line 2268
    goto :goto_5

    .line 2271
    .restart local v2    # "isDisconnect":Z
    :cond_17
    if-nez v3, :cond_11

    .line 2272
    iget-boolean v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    if-nez v6, :cond_11

    .line 2273
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v7, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    invoke-virtual {v6, v7, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 2274
    sget v5, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I

    iput v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    goto :goto_6
.end method

.method private updateVideoBtnImage(I)V
    .locals 3
    .param p1, "setting"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    .line 2519
    if-nez p1, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 2521
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 2526
    :goto_0
    return-void

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 2524
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateVoiceCallButtons()V
    .locals 4

    .prologue
    .line 1207
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1208
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    .line 1209
    return-void
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1212
    if-nez p1, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateAudioButtons(I)V

    .line 1216
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateExtraVolumeButton()V

    .line 1217
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateDiapadButton()V

    .line 1218
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    .line 1219
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVolteButton(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateVolteButton(Lcom/android/incallui/Call;)V
    .locals 9
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2475
    if-nez p1, :cond_1

    .line 2516
    :cond_0
    :goto_0
    return-void

    .line 2477
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    move v1, v5

    .line 2478
    .local v1, "isOnHold":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    .line 2479
    .local v2, "mIsConference":Z
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v4

    .line 2480
    .local v4, "swapProcessing":Z
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v3

    .line 2487
    .local v3, "setting":I
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

    .line 2488
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2489
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    if-nez v4, :cond_4

    .line 2491
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_4

    move v0, v5

    .line 2493
    .local v0, "enable":Z
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

    .line 2494
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

    .line 2495
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

    .line 2497
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v8

    if-nez v8, :cond_5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2493
    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2499
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 2501
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2502
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2504
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2505
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2506
    if-eqz v0, :cond_0

    .line 2507
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVideoBtnImage(I)V

    goto/16 :goto_0

    .end local v0    # "enable":Z
    .end local v1    # "isOnHold":Z
    .end local v2    # "mIsConference":Z
    .end local v3    # "setting":I
    .end local v4    # "swapProcessing":Z
    :cond_3
    move v1, v6

    .line 2477
    goto/16 :goto_1

    .restart local v1    # "isOnHold":Z
    .restart local v2    # "mIsConference":Z
    .restart local v3    # "setting":I
    .restart local v4    # "swapProcessing":Z
    :cond_4
    move v0, v6

    .line 2491
    goto/16 :goto_2

    .restart local v0    # "enable":Z
    :cond_5
    move v5, v6

    .line 2497
    goto :goto_3
.end method


# virtual methods
.method public animateForManager(ZZ)V
    .locals 16
    .param p1, "showManager"    # Z
    .param p2, "direct"    # Z

    .prologue
    .line 339
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

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 342
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

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 344
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 345
    const-string v11, "animateForManager...isRunning"

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    if-eqz p2, :cond_a

    const/4 v3, 0x0

    .line 351
    .local v3, "duration":I
    :goto_1
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    .line 352
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 353
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v11, :cond_4

    .line 354
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

    .line 355
    .local v5, "hideButtons":Landroid/animation/ObjectAnimator;
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

    .line 356
    .local v7, "hideEndButtons":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 368
    .end local v5    # "hideButtons":Landroid/animation/ObjectAnimator;
    .end local v7    # "hideEndButtons":Landroid/animation/ObjectAnimator;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    new-instance v12, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v12}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    int-to-long v12, v3

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 372
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_11

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 374
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

    .line 375
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

    .line 376
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

    .line 377
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

    .line 378
    :cond_8
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 379
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_16

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz p1, :cond_17

    const/4 v11, 0x0

    :goto_b
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 349
    .end local v3    # "duration":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0042

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto/16 :goto_1

    .line 354
    .restart local v3    # "duration":I
    :cond_b
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 355
    .restart local v5    # "hideButtons":Landroid/animation/ObjectAnimator;
    :cond_c
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 359
    .end local v5    # "hideButtons":Landroid/animation/ObjectAnimator;
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

    .line 360
    .local v4, "endY":F
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

    .line 361
    .local v10, "startY":F
    sub-float v2, v4, v10

    .line 363
    .local v2, "buttonDeltaY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    if-eqz p1, :cond_e

    .end local v2    # "buttonDeltaY":F
    :goto_c
    aput v2, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 364
    .local v9, "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
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

    .line 365
    .local v6, "hideDialpadButton":Landroid/animation/ObjectAnimator;
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

    .line 366
    .local v8, "hideUpperButtons":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    .line 363
    .end local v6    # "hideDialpadButton":Landroid/animation/ObjectAnimator;
    .end local v8    # "hideUpperButtons":Landroid/animation/ObjectAnimator;
    .end local v9    # "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
    .restart local v2    # "buttonDeltaY":F
    :cond_e
    const/4 v2, 0x0

    goto :goto_c

    .line 364
    .end local v2    # "buttonDeltaY":F
    .restart local v9    # "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
    :cond_f
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_d

    .line 365
    .restart local v6    # "hideDialpadButton":Landroid/animation/ObjectAnimator;
    :cond_10
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_e

    .line 373
    .end local v4    # "endY":F
    .end local v6    # "hideDialpadButton":Landroid/animation/ObjectAnimator;
    .end local v9    # "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
    .end local v10    # "startY":F
    :cond_11
    const/16 v11, 0xff

    goto/16 :goto_5

    .line 374
    :cond_12
    const/16 v11, 0xff

    goto/16 :goto_6

    .line 375
    :cond_13
    const/16 v11, 0xff

    goto/16 :goto_7

    .line 376
    :cond_14
    const/16 v11, 0xff

    goto/16 :goto_8

    .line 377
    :cond_15
    const/16 v11, 0xff

    goto/16 :goto_9

    .line 379
    :cond_16
    const/16 v11, 0xff

    goto/16 :goto_a

    .line 380
    :cond_17
    const/16 v11, 0xff

    goto/16 :goto_b
.end method

.method public animateForMoveDialpad(Z)V
    .locals 13
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 2619
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v6, :cond_1

    .line 2641
    :cond_0
    :goto_0
    return-void

    .line 2621
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 2622
    .local v3, "inCallButtonTransitionY":F
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 2624
    .local v2, "endButtonTransitionY":F
    if-eqz p1, :cond_3

    .line 2625
    cmpl-float v6, v3, v7

    if-gtz v6, :cond_0

    cmpl-float v6, v2, v7

    if-gtz v6, :cond_0

    .line 2630
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d0027

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2631
    .local v1, "duration":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a04f8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2633
    .local v0, "deltaY":F
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v12, [F

    if-eqz p1, :cond_4

    move v6, v0

    :goto_1
    aput v6, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2634
    .local v5, "moveInCallButton":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v12, [F

    if-eqz p1, :cond_5

    .end local v0    # "deltaY":F
    :goto_2
    aput v0, v9, v11

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2635
    .local v4, "moveEndButton":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2636
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2639
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2640
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 2627
    .end local v1    # "duration":I
    .end local v4    # "moveEndButton":Landroid/animation/ObjectAnimator;
    .end local v5    # "moveInCallButton":Landroid/animation/ObjectAnimator;
    :cond_3
    cmpl-float v6, v3, v7

    if-eqz v6, :cond_0

    cmpl-float v6, v2, v7

    if-nez v6, :cond_2

    goto :goto_0

    .restart local v0    # "deltaY":F
    .restart local v1    # "duration":I
    :cond_4
    move v6, v7

    .line 2633
    goto :goto_1

    .restart local v5    # "moveInCallButton":Landroid/animation/ObjectAnimator;
    :cond_5
    move v0, v7

    .line 2634
    goto :goto_2
.end method

.method public animateForRevealEndCallButton()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 2661
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_0

    .line 2683
    :goto_0
    return-void

    .line 2662
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2663
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2664
    .local v3, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2665
    .local v4, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2666
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2667
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2668
    .local v2, "duration":I
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2669
    new-instance v5, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;

    invoke-direct {v5, p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2682
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 7

    .prologue
    .line 2760
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2765
    :goto_0
    return-void

    .line 2761
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

    .line 2762
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2763
    .local v1, "duration":I
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2764
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public extraVolumeClicked()V
    .locals 0

    .prologue
    .line 2529
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->toggleExtraVolume()V

    .line 2530
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateExtraVolumeButton()V

    .line 2531
    return-void
.end method

.method public getAddCallButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getBluetoothButton()Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1090
    if-nez p2, :cond_0

    .line 1091
    const-wide/16 v0, 0x0

    .line 1095
    :goto_0
    return-wide v0

    .line 1094
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1095
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

    .line 1130
    if-nez p2, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return v1

    .line 1133
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 1134
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1133
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1135
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 1136
    iget v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    goto :goto_0
.end method

.method public getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 1079
    if-nez p2, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-object v1

    .line 1082
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 1083
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1082
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1084
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 1085
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 1067
    if-nez p2, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-object v1

    .line 1070
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 1071
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1070
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1072
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 1073
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPromotedButtonStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButtonStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method protected getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;
    .locals 1

    .prologue
    .line 289
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
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 314
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onBackPress()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 466
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 468
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 475
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    .line 480
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    .line 322
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryForCallPlusContent()V

    .line 323
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryForCallPlusEntrypoint()V

    .line 324
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "loaderID"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1398
    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 1399
    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1400
    .local v3, "columns":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 1417
    :goto_0
    return-object v0

    .line 1402
    :pswitch_0
    const-string v0, "onCreateLoader CALLCONTENT_LOADER :"

    invoke-static {p0, v0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1403
    const/4 v2, 0x0

    .line 1404
    .local v2, "uri":Landroid/net/Uri;
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    sget-object v0, Lcom/android/incallui/CallContentContractCrane;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1408
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

    .line 1409
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1407
    :cond_0
    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1412
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_1
    const-string v0, "onCreateLoader UI_ENTRY_POINTS_LOADER :"

    invoke-static {p0, v0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1413
    sget-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1414
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 485
    const v0, 0x7f04015f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    .line 487
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtonContainer:Landroid/view/View;

    .line 489
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    .line 490
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    .line 491
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    .line 493
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    .line 495
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 509
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeft:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    .line 511
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRight:Landroid/view/View;

    .line 515
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    .line 516
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/16 v4, 0x66

    const/16 v1, 0x65

    const-wide/16 v2, 0x0

    .line 389
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroy()V

    .line 390
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    :cond_3
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I

    .line 401
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance()V

    .line 402
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    .line 403
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->dismissUSAVoLTEDialogs()V

    .line 404
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;

    .line 406
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroyView()V

    .line 336
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 2656
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons()V

    .line 2657
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
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

    .prologue
    .line 1423
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 1424
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1436
    :goto_0
    return-void

    .line 1426
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

    .line 1427
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1431
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
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

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x0

    .line 1440
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 1441
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1452
    :goto_0
    return-void

    .line 1443
    :pswitch_0
    const-string v1, "onLoaderReset CALLCONTENT_LOADER :"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1444
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1448
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 437
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onPause()V

    .line 439
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
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

    .line 444
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    .line 447
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 410
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    .line 411
    const-string v1, "callplus onResume::"

    invoke-static {p0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 412
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    .line 413
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 417
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "QUERYCALLPLUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    .line 422
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    invoke-virtual {v1, v2, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    sget v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I

    invoke-virtual {v1, v2, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    .line 427
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

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    .line 430
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mIsSprWFCRegistered:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateEndCallButton(Z)V

    .line 433
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onStop()V

    .line 452
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLastestPagePosition:I

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance()V

    .line 460
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    .line 462
    :cond_2
    return-void
.end method

.method public queryForSwappedCall()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 626
    const-string v4, "queryForSwappedCall"

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 628
    const-string v4, "queryForSwappedCall - fragment is detached from activity, return"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 633
    .local v3, "mCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_1

    .line 634
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 635
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    .line 636
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

    .line 639
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 640
    .local v2, "context":Landroid/content/Context;
    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 641
    const-string v4, "send nuber to crane"

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 642
    invoke-static {v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 645
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 646
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v1, "bundle_uiEntry":Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v0, "bundle_callcontent":Landroid/os/Bundle;
    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_SHARING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 650
    const-string v4, "ARG_MSISDN"

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v7, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 652
    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 653
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 656
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    .line 655
    :cond_3
    const-string v4, "ARG_COLUMNS"

    sget-object v5, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 658
    .end local v0    # "bundle_callcontent":Landroid/os/Bundle;
    .end local v1    # "bundle_uiEntry":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 659
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2645
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2646
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2647
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 2649
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a04f8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2650
    .local v0, "deltaY":F
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2651
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    .end local v0    # "deltaY":F
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .restart local v0    # "deltaY":F
    :cond_3
    move v1, v2

    .line 2650
    goto :goto_1

    :cond_4
    move v0, v2

    .line 2651
    goto :goto_2
.end method

.method public setAudio(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2401
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-eq v2, p1, :cond_2

    .line 2402
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-eqz v2, :cond_0

    .line 2403
    const/4 v1, 0x0

    .line 2404
    .local v1, "stringId":I
    packed-switch p1, :pswitch_data_0

    .line 2415
    .end local v1    # "stringId":I
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateAudioButtons(I)V

    .line 2416
    const/4 v0, 0x0

    .line 2417
    .local v0, "skipUpdateExtraVolume":Z
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-ne v2, v3, :cond_3

    if-ne p1, v5, :cond_3

    move v2, v3

    :goto_0
    or-int/2addr v0, v2

    .line 2419
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    if-ne v2, v5, :cond_4

    if-ne p1, v3, :cond_4

    :goto_1
    or-int/2addr v0, v3

    .line 2421
    if-nez v0, :cond_1

    .line 2422
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateExtraVolumeButton()V

    .line 2424
    :cond_1
    iput p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPrevAudioMode:I

    .line 2426
    .end local v0    # "skipUpdateExtraVolume":Z
    :cond_2
    return-void

    .restart local v0    # "skipUpdateExtraVolume":Z
    :cond_3
    move v2, v4

    .line 2417
    goto :goto_0

    :cond_4
    move v3, v4

    .line 2419
    goto :goto_1

    .line 2404
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
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1183
    if-nez p1, :cond_a

    .line 1184
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1188
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1189
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1190
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1191
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1192
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1193
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1194
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPagerIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    :cond_a
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2
    .param p1, "showVoWiFi"    # Z

    .prologue
    .line 2804
    const v0, 0x7f02025b

    .line 2805
    .local v0, "resId":I
    if-eqz p1, :cond_0

    .line 2806
    const-string v1, "spr_vowifi_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2807
    const v0, 0x7f0202a2

    .line 2812
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2813
    return-void

    .line 2809
    :cond_1
    const v0, 0x7f020054

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2366
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateMuteButton()V

    .line 2367
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 2430
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateAudioButtons(I)V

    .line 2431
    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2769
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2770
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2771
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2772
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2774
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 2775
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2777
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2778
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2780
    :cond_2
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 7

    .prologue
    .line 664
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButtonStub:Landroid/view/ViewStub;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mShareButton:Landroid/widget/Button;

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/secrcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V

    .line 667
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1200
    const-string v0, "updateCallButtons() :"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1201
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    .line 1202
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateEndCallButton()V

    .line 1203
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    .line 1204
    return-void
.end method

.method public updateDiapadButton()V
    .locals 5

    .prologue
    .line 2594
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v1

    .line 2595
    .local v1, "visible":Z
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

    .line 2597
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 2602
    if-eqz v1, :cond_1

    .line 2603
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f090255

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 2605
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2615
    :cond_0
    :goto_0
    return-void

    .line 2607
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f090256

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 2609
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

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, "e":Ljava/lang/Exception;
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

    .prologue
    .line 2788
    const-string v2, "show_vowifi_endcall_button"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2789
    const/4 v1, 0x0

    .line 2790
    .local v1, "show":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2791
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 2792
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 2793
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v1

    .line 2798
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez v1, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2799
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setEndCallButtonIcon(Z)V

    .line 2801
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "show":Z
    :cond_3
    return-void

    .line 2795
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "show":Z
    :cond_4
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    goto :goto_0

    .line 2798
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateEndCallButton(Z)V
    .locals 2
    .param p1, "imson"    # Z

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2818
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setEndCallButtonIcon(Z)V

    .line 2819
    :cond_1
    return-void

    .line 2817
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 3

    .prologue
    .line 2568
    const-string v1, "updateExtraVolumeButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2569
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    .line 2570
    .local v0, "isExtraVolOn":Z
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

    .line 2572
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 2573
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2575
    :cond_0
    return-void
.end method

.method public updateUiEntryPoint(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1482
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

    .line 1483
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    if-nez v2, :cond_c

    .line 1486
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

    .line 1487
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->CRANE_BTN_CONSTANT:I

    .line 1488
    .local v0, "enabled":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 1489
    .local v1, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsSwtich:Z

    if-eqz v2, :cond_8

    .line 1490
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

    .line 1491
    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    .line 1492
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

    .line 1493
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 1494
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1499
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1500
    :try_start_0
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_5

    .line 1501
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    .line 1502
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    .line 1503
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1504
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 1505
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1506
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 1507
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    .line 1508
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1520
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    .end local v0    # "enabled":I
    .end local v1    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_3
    :goto_2
    return-void

    .line 1496
    .restart local v0    # "enabled":I
    .restart local v1    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 1497
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1512
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1513
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 1514
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 1515
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1516
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1517
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    goto :goto_1

    .line 1520
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1522
    :cond_8
    const-string v2, "updateUiEntryPoint mAction"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1523
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    .line 1524
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1526
    :cond_9
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    .line 1527
    monitor-enter p0

    .line 1528
    :try_start_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_a

    .line 1529
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1530
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_a

    .line 1531
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1532
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    .line 1535
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1536
    :cond_b
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1539
    .end local v0    # "enabled":I
    .end local v1    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_c
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v2, :cond_3

    .line 1540
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    .line 1541
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;

    .line 1542
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

    .line 1543
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 1544
    .restart local v1    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_15

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_15

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsSwtich:Z

    if-eqz v2, :cond_15

    .line 1545
    const-string v2, "updateUiEntryPoint mAction true"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1546
    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    .line 1547
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

    .line 1548
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_d

    .line 1549
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1554
    :cond_d
    :goto_3
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    .line 1555
    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    .line 1556
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1557
    :cond_e
    monitor-enter p0

    .line 1558
    :try_start_3
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_12

    .line 1559
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    .line 1560
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    .line 1561
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1562
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_10

    .line 1563
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1564
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_10

    .line 1565
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyCallPlus()V

    .line 1566
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1578
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

    .line 1551
    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_d

    .line 1552
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 1570
    :cond_12
    :try_start_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1571
    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_10

    .line 1572
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_14

    .line 1573
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1574
    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1575
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 1580
    :cond_15
    const-string v2, "updateUiEntryPoint mAction false"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1581
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isUiEntery:Z

    .line 1582
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1583
    :cond_16
    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    .line 1584
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    .line 1585
    monitor-enter p0

    .line 1586
    :try_start_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_17

    .line 1587
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1588
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_17

    .line 1589
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1590
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->applyNonCallPlus()V

    .line 1593
    :cond_17
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1594
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
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1601
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

    .line 1602
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 1603
    .local v1, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_8

    .line 1604
    :cond_0
    const-string v2, "isoutgoing true"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1605
    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    .line 1610
    :goto_0
    if-eqz p1, :cond_1

    .line 1611
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

    .line 1612
    :cond_1
    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1613
    iput-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    .line 1614
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1615
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    .line 1616
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    .line 1617
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

    .line 1618
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    .line 1619
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    .line 1620
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

    .line 1621
    const-string v2, "fetching lat. and long.:"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1622
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1623
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocationLatLong:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getLatLongfromLocation(Ljava/lang/String;)V

    .line 1625
    :cond_2
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    .line 1626
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    .line 1639
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

    .line 1640
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusImportance(ZI)V

    .line 1641
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    .line 1642
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    .line 1643
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 1644
    monitor-enter p0

    .line 1645
    :try_start_0
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_3

    .line 1646
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->importanceLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1647
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    if-nez v2, :cond_b

    .line 1650
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1653
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

    .line 1654
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1655
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 1656
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1657
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    .line 1658
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 1685
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1686
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance_out()V

    .line 1687
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->removePagerInstance()V

    .line 1688
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflatePagerContainer()V

    .line 1689
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    .line 1690
    return-void

    .line 1607
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_8
    const-string v2, "isoutgoing false"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1608
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z

    goto/16 :goto_0

    .line 1628
    :cond_9
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I

    .line 1629
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mSubject:Ljava/lang/String;

    .line 1630
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

    .line 1631
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    .line 1632
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

    .line 1633
    const-string v2, "fetching lat. and long.:"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1635
    :cond_a
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    .line 1636
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    goto/16 :goto_1

    .line 1647
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1652
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1659
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 1660
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1661
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    .line 1662
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v5, v2, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    .line 1663
    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 1664
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1665
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 1666
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    .line 1668
    :cond_e
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 1669
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 1670
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_3

    .line 1673
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1674
    :cond_10
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isOutgoingCall()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1675
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1679
    :cond_11
    :goto_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1680
    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1681
    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1682
    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1683
    :cond_15
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1677
    :cond_16
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
