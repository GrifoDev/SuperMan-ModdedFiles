.class public Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
.super Lcom/android/incallui/fragment/VoiceCallButtonFragment;
.source "VoiceCallButtonVCCFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;,
        Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallPagerAdapter;,
        Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;
    }
.end annotation


# static fields
.field private static final CHANGE_PAGE_EXTRA_TO_INCALL:I = 0x65

.field private static final CHANGE_PAGE_EXTRA_TO_INCALL_DELAY:I = 0x1388

.field private static final CHANGE_PAGE_INCALL_TO_IVR:I = 0x3e9

.field private static final CHANGE_PAGE_INCALL_TO_IVR_DELAY:I = 0x3e8

.field private static final IVR_PAGE_DIALPAD:I = 0x10

.field private static final PAGE_COUNT:I = 0x1

.field private static final PAGE_COUNT_IVR:I = 0x2

.field private static final PAGE_INCALL:I = 0x0

.field private static final PAGE_INCALL_CHN:I = 0x1

.field private static final PAGE_IVR_CHN:I = 0x0

.field public static final SEND_COMPLETED:I = 0x1

.field public static final SEND_DTMF:I = 0x0

.field private static final SHOW_USER_AGREEMENT:Ljava/lang/String; = "show_user_agreement"

.field private static final SHOW_USER_AGREEMENT_SHARED:Ljava/lang/String; = "show_user_agreement_shared"

.field public static SMART_IVR_first:Z = false

.field private static final VISUAL_CALL_STATUS_SETTING:Ljava/lang/String; = "visual_call_status"

.field private static mCurrentPageScrollState:I

.field private static mVCCCurrentPageScrollState:I

.field public static publicCallPath:Ljava/lang/String;

.field public static wasIvrCall:Z


# instance fields
.field private VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

.field private adapter:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

.field private bFirstDisplayIvr:Z

.field private bReadytoMoveIvrPage:Z

.field private callPath:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private lastChar:C

.field private mDialpadShow:Z

.field mDtmfHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mInCallButtonLayout:Landroid/view/ViewGroup;

.field private mIsEnabled:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastestPagePosition:I

.field private mLastestPagePositionIVR:I

.field private mLegalAgreementDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mModifyErrorDialog:Landroid/app/AlertDialog;

.field private mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOutgoingButtonLayout:Landroid/view/ViewGroup;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

.field private mPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallPagerAdapter;

.field private mPagerIndicator:Landroid/view/View;

.field private mPagerIndicatorLeft:Landroid/view/View;

.field private mPagerIndicatorRight:Landroid/view/View;

.field private mPowerByBreeze:Landroid/widget/TextView;

.field private mPrevAudioMode:I

.field private mPromotedButtonStub:Landroid/view/ViewStub;

.field private mRunning:Z

.field private mSendNumber:I

.field private mShareButtonStub:Landroid/view/ViewStub;

.field private mVCCInCallButtonLayout:Landroid/view/ViewGroup;

.field private mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

.field private mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

.field private mVoLTESettingErrorDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    sput-boolean v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;-><init>()V

    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPrevAudioMode:I

    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    iput v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    const-string v0, "xml"

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->format:Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDialpadShow:Z

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$1;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$3;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$5;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)C
    .locals 1

    iget-char v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C

    return v0
.end method

.method static synthetic access$1102(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C
    .locals 0

    iput-char p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C

    return p1
.end method

.method static synthetic access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateIVRList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->saveAgreementFlag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->refreshViewPager()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->process(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showPowerByBreeze(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    return p1
.end method

.method static synthetic access$908(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    return v0
.end method

.method private changePageIncallToIVR()V
    .locals 4

    const/16 v1, 0x3e9

    const-string v0, "changePageIncallToIVR"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private create_visual_call_pager_container()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f1003f7

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "create_visual_call_pager_container: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    const-string v1, "create_visual_call_pager_container: mOutgoingButtonLayout"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iput v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_0

    const-string v1, "mViewPager == null: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const-string v1, "create_visual_call_pager_container: inCallButtonsPager"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAgreementFlag()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "show_user_agreement_shared"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_user_agreement"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private declared-synchronized inflateIVRList(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getAdapter(Landroid/content/Context;)Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->adapter:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getIvrList()V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->adapter:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const v0, 0x7f10012c

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private inflateInCallButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1003f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private process(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    goto :goto_0
.end method

.method private refreshViewPager()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->removePagerInstance()V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtonLayout()V

    goto :goto_0
.end method

.method private removePagerInstance()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_1

    const-string v0, "removePagerInstance mViewPager"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    :cond_1
    return-void
.end method

.method private saveAgreementFlag(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "show_user_agreement_shared"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show_user_agreement"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showFirstTimePageIVR(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->changePageIncallToIVR()V

    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    goto :goto_0
.end method

.method private showLatestPageIVR()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method private showPowerByBreeze(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showUserAgreementDialog()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const-string v12, "support_safetycare"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0b0103

    invoke-direct {v1, v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v12, 0x7f040186

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    :goto_0
    const v12, 0x7f10043f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v12, "smart_ivr_callerid_info"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const v12, 0x7f090506

    invoke-virtual {p0, v12}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const-string v12, "%1$s"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%2$s"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f0901cc

    invoke-virtual {p0, v12}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v12, "smart_ivr_callerid_info"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Landroid/text/style/URLSpan;

    const-string v13, "http://www.breezeivr.com/"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    const/16 v14, 0x21

    invoke-virtual {v7, v12, v6, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v12, 0x7f100441

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f100440

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v12, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$7;

    invoke-direct {v12, p0, v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$7;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f10004f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f100443

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v12, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;

    invoke-direct {v12, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0901cd

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f09008d

    new-instance v13, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;

    invoke-direct {v13, p0, v3, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f090101

    new-instance v13, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$10;

    invoke-direct {v13, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$10;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;

    invoke-direct {v12, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f040185

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_0

    :cond_2
    const v12, 0x7f0901cb

    invoke-virtual {p0, v12}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_3
    new-instance v12, Landroid/text/style/URLSpan;

    const-string v13, "http://m.dianhua.cn/ivr_termofservice"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    const/16 v14, 0x21

    invoke-virtual {v7, v12, v6, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2
.end method

.method private updatePagerDescriptionIVR(I)V
    .locals 7

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePagerIndicatorIVR(I)V
    .locals 3

    const v1, 0x7f0201e1

    const v0, 0x7f0201e0

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updatePagerState(Lcom/android/incallui/Call;)V
    .locals 10

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/16 v6, 0x8

    if-ne v3, v6, :cond_11

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v6

    if-eqz v6, :cond_11

    move v2, v4

    :goto_1
    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x0

    :cond_6
    const-string v6, "not_support_extra_view_page"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const/4 v2, 0x0

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-object v7, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_12

    move v6, v5

    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v6, :cond_d

    if-eq v3, v8, :cond_b

    if-ne v3, v9, :cond_13

    :cond_b
    move v1, v4

    :goto_3
    if-eqz v1, :cond_14

    :cond_c
    :goto_4
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setScrollable(Z)V

    :cond_d
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v6, :cond_0

    if-eq v3, v8, :cond_e

    if-ne v3, v9, :cond_15

    :cond_e
    move v1, v4

    :goto_5
    if-eqz v1, :cond_16

    :cond_f
    :goto_6
    if-eqz v2, :cond_10

    invoke-direct {p0, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    :cond_10
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerIndicatorIVR(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerDescriptionIVR(I)V

    goto/16 :goto_0

    :cond_11
    move v2, v5

    goto/16 :goto_1

    :cond_12
    const/4 v6, 0x4

    goto :goto_2

    :cond_13
    move v1, v5

    goto :goto_3

    :cond_14
    if-nez v2, :cond_c

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v5, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    goto :goto_4

    :cond_15
    move v1, v5

    goto :goto_5

    :cond_16
    if-nez v2, :cond_f

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v4, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_6

    :cond_17
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4, v5, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_6
.end method


# virtual methods
.method protected enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    sput-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_1
    sput-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    :cond_2
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method protected getIvrList()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v1, "getIvrList()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$6;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v2, "[^0-9]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showLatestPageIVR()V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v5, 0x7f040163

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f100382

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f10028e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003d8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v7}, Lcom/android/incallui/util/VisualCallCenter;->setIVRMode(Z)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isNoMenuIVR()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v8}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    const-string v5, "VCC_isNoMenuIVR: true"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "visual_call_update_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vCallNetSelect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getUpdateIVRLimit()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUpdateIVRlimit()1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003f1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003f6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;

    invoke-direct {v6, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/incallui/util/VisualCallCenter;->setOnIVRScreenRemovedListener(Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v5, :cond_1

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getAgreementFlag()I

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showUserAgreementDialog()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.incallui"

    const-string v7, "VCCS"

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "smart_ivr_callerid_info"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f100406

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    const v5, 0x7f090555

    invoke-virtual {p0, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/URLSpan;

    const-string v6, "market://details?id=co.breezeapp.breeze"

    invoke-direct {v5, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtonLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateEndCallButtonColor()V

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    return-object v5

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v7}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    const-string v5, "VCC_isNoMenuIVR:false"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-ne v4, v7, :cond_6

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x3e9

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->removePagerInstance()V

    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->releaseDisplayIVRPager()V

    iput-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onPause()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onResume:"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDialpadVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    const-string v2, "smart_ivr_callerid_info"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->SmartIVR_speakerOnConfirm()V

    sput-boolean v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "onResume: show Dialpad"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDialpadVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isNoMenuIVR()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getDisplayDailpad()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->removePagerInstance()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    goto :goto_0
.end method

.method public queryForSwappedCall()V
    .locals 0

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x3

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "updateCallButtons:"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->getLineCtrlEvent(Lcom/android/incallui/Call;)B

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    goto :goto_0

    :cond_2
    const-string v1, "updateCallButtons: show Dialpad"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialpadVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isNoMenuIVR()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getDisplayDailpad()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
