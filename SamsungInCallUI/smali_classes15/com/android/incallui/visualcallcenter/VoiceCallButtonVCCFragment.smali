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

.field private static final CHANGE_PAGE_INCALL_TO_IVR_DELAY:I = 0x320

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

    .prologue
    const/4 v1, 0x0

    .line 147
    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    .line 153
    sput-boolean v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    .line 199
    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;-><init>()V

    .line 120
    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPrevAudioMode:I

    .line 121
    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    .line 123
    iput v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    .line 127
    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    .line 128
    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    .line 132
    const-string v0, "xml"

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->format:Ljava/lang/String;

    .line 133
    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    .line 134
    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDialpadShow:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z

    .line 136
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    .line 142
    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    .line 145
    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    .line 146
    iput-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    .line 162
    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$1;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    .line 518
    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$3;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 769
    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 877
    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$5;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)C
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget-char v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C

    return v0
.end method

.method static synthetic access$1102(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # C

    .prologue
    .line 89
    iput-char p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C

    return p1
.end method

.method static synthetic access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateIVRList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->saveAgreementFlag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->refreshViewPager()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->process(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 89
    sput p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 89
    sput p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showPowerByBreeze(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # Lcom/android/incallui/Call;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    return p1
.end method

.method static synthetic access$908(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I

    return v0
.end method

.method private changePageIncallToIVR()V
    .locals 4

    .prologue
    const/16 v1, 0x3e9

    .line 508
    const-string v0, "changePageIncallToIVR"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 514
    return-void
.end method

.method private create_visual_call_pager_container()V
    .locals 5

    .prologue
    const v4, 0x7f1003ed

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 718
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    const-string v1, "create_visual_call_pager_container: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    .line 724
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 726
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    goto :goto_0

    .line 732
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 734
    .local v0, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_5

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_4

    .line 736
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    .line 738
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    .line 739
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 740
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 741
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    .line 742
    const-string v1, "create_visual_call_pager_container: mOutgoingButtonLayout"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    :cond_4
    iput v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_0

    .line 748
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 749
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 750
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    .line 752
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 753
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 755
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_0

    .line 756
    const-string v1, "mViewPager == null: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    .line 758
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v1, :cond_0

    .line 759
    new-instance v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    .line 760
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 761
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 762
    const-string v1, "create_visual_call_pager_container: inCallButtonsPager"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAgreementFlag()I
    .locals 4

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "show_user_agreement_shared"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1220
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "show_user_agreement"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private declared-synchronized inflateIVRList(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const v0, 0x7f10012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    .line 606
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getAdapter(Landroid/content/Context;)Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->adapter:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    .line 607
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getIvrList()V

    .line 608
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->adapter:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 604
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

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private process(Z)V
    .locals 1
    .param p1, "agree"    # Z

    .prologue
    .line 1224
    if-eqz p1, :cond_0

    .line 1225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    .line 1229
    :goto_0
    return-void

    .line 1227
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    goto :goto_0
.end method

.method private refreshViewPager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 947
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 948
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    .line 949
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->removePagerInstance()V

    .line 950
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    const-string v1, "refreshViewPager isDisplayIVRPager true"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 955
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 956
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    .line 958
    :cond_2
    const-string v1, "refreshViewPager isDisplayIVRPager false"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    const-string v1, "refreshViewPager: show Dialpad"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isNoMenuIVR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 962
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private removePagerInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 493
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 494
    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_1

    .line 498
    const-string v0, "removePagerInstance mViewPager"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 500
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 501
    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    .line 504
    :cond_1
    return-void
.end method

.method private saveAgreementFlag(I)V
    .locals 5
    .param p1, "val"    # I

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "show_user_agreement_shared"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1212
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1213
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "show_user_agreement"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1215
    return-void
.end method

.method private showFirstTimePageIVR(Z)V
    .locals 4
    .param p1, "fromAgreementDialog"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1067
    iget-boolean v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v1, :cond_2

    .line 1068
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1070
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    .line 1071
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1072
    .local v0, "pm":Landroid/os/PowerManager;
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

    .line 1073
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 1074
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->changePageIncallToIVR()V

    .line 1075
    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    .line 1076
    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    .line 1083
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    :goto_0
    return-void

    .line 1079
    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    .line 1080
    iput-boolean v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    goto :goto_0
.end method

.method private showLatestPageIVR()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1086
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    .line 1087
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    .line 1088
    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    if-ne v0, v1, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    .line 1093
    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iget v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    if-ne v0, v1, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method private showPowerByBreeze(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1234
    if-eqz p1, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showUserAgreementDialog()V
    .locals 15

    .prologue
    .line 1103
    const-string v12, "support_safetycare"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1104
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0b0103

    invoke-direct {v1, v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1108
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1109
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f040185

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 1111
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f100435

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1113
    .local v10, "tv":Landroid/widget/TextView;
    const-string v12, "smart_ivr_callerid_info"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1114
    const v12, 0x7f0904ff

    invoke-virtual {p0, v12}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1118
    .local v9, "text":Ljava/lang/String;
    :goto_1
    const-string v12, "%1$s"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%2$s"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1119
    const v12, 0x7f0901cb

    invoke-virtual {p0, v12}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1121
    .local v8, "terms":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1122
    .local v6, "pos1":I
    if-gez v6, :cond_0

    const/4 v6, 0x0

    .line 1124
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1125
    .local v7, "sp":Landroid/text/SpannableString;
    const-string v12, "smart_ivr_callerid_info"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1126
    new-instance v12, Landroid/text/style/URLSpan;

    const-string v13, "http://www.breezeivr.com/"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    const/16 v14, 0x21

    invoke-virtual {v7, v12, v6, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1132
    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1135
    const v12, 0x7f100437

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1136
    .local v3, "checkboxupdate":Landroid/widget/CheckBox;
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1138
    const v12, 0x7f100436

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1139
    .local v0, "autoupdatedatabaseviawlan":Landroid/view/View;
    new-instance v12, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$7;

    invoke-direct {v12, p0, v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$7;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    const v12, 0x7f10004f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1147
    .local v2, "checkbox":Landroid/widget/CheckBox;
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1149
    const v12, 0x7f100439

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1150
    .local v4, "doNotShowAgainView":Landroid/view/View;
    new-instance v12, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;

    invoke-direct {v12, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1158
    const v12, 0x7f0901cc

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1159
    const v12, 0x7f09008d

    new-instance v13, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;

    invoke-direct {v13, p0, v3, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1173
    const v12, 0x7f090101

    new-instance v13, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$10;

    invoke-direct {v13, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$10;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1187
    new-instance v12, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;

    invoke-direct {v12, p0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1204
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    .line 1205
    iget-object v12, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 1206
    return-void

    .line 1106
    .end local v0    # "autoupdatedatabaseviawlan":Landroid/view/View;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "checkbox":Landroid/widget/CheckBox;
    .end local v3    # "checkboxupdate":Landroid/widget/CheckBox;
    .end local v4    # "doNotShowAgainView":Landroid/view/View;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "pos1":I
    .end local v7    # "sp":Landroid/text/SpannableString;
    .end local v8    # "terms":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "tv":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_0

    .line 1116
    .restart local v5    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "tv":Landroid/widget/TextView;
    .restart local v11    # "view":Landroid/view/View;
    :cond_2
    const v12, 0x7f0901ca

    invoke-virtual {p0, v12}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_1

    .line 1128
    .restart local v6    # "pos1":I
    .restart local v7    # "sp":Landroid/text/SpannableString;
    .restart local v8    # "terms":Ljava/lang/String;
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
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x2

    .line 707
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 709
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    .line 710
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 708
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 713
    :cond_0
    return-void
.end method

.method private updatePagerIndicatorIVR(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 691
    const v1, 0x7f0201d7

    .line 692
    .local v1, "indicatorOn":I
    const v0, 0x7f0201d6

    .line 693
    .local v0, "indicatorOff":I
    if-nez p1, :cond_2

    .line 694
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 696
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 697
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 699
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 700
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 701
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 702
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updatePagerState(Lcom/android/incallui/Call;)V
    .locals 10
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 614
    if-nez p1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    .line 617
    .local v3, "state":I
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

    .line 619
    .local v2, "needToUsePager":Z
    :goto_1
    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 620
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 621
    const/4 v2, 0x0

    .line 624
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 625
    const/4 v2, 0x0

    .line 628
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 629
    const/4 v2, 0x0

    .line 632
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 633
    const/4 v2, 0x0

    .line 636
    :cond_6
    const-string v6, "not_support_extra_view_page"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 637
    const/4 v2, 0x0

    .line 641
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 642
    :cond_8
    const/4 v2, 0x0

    .line 646
    :cond_9
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v6, :cond_a

    .line 647
    iget-object v7, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_12

    move v6, v5

    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :cond_a
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v6, :cond_d

    .line 651
    if-eq v3, v8, :cond_b

    if-ne v3, v9, :cond_13

    :cond_b
    move v1, v4

    .line 652
    .local v1, "isDisconnect":Z
    :goto_3
    if-eqz v1, :cond_14

    .line 658
    :cond_c
    :goto_4
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setScrollable(Z)V

    .line 661
    .end local v1    # "isDisconnect":Z
    :cond_d
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v6, :cond_0

    .line 662
    if-eq v3, v8, :cond_e

    if-ne v3, v9, :cond_15

    :cond_e
    move v1, v4

    .line 664
    .restart local v1    # "isDisconnect":Z
    :goto_5
    if-eqz v1, :cond_16

    .line 676
    :cond_f
    :goto_6
    if-eqz v2, :cond_10

    .line 677
    invoke-direct {p0, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    .line 679
    :cond_10
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setScrollable(Z)V

    .line 680
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    .line 681
    .local v0, "currentPage":I
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerIndicatorIVR(I)V

    .line 683
    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updatePagerDescriptionIVR(I)V

    goto/16 :goto_0

    .end local v0    # "currentPage":I
    .end local v1    # "isDisconnect":Z
    .end local v2    # "needToUsePager":Z
    :cond_11
    move v2, v5

    .line 617
    goto/16 :goto_1

    .line 647
    .restart local v2    # "needToUsePager":Z
    :cond_12
    const/4 v6, 0x4

    goto :goto_2

    :cond_13
    move v1, v5

    .line 651
    goto :goto_3

    .line 654
    .restart local v1    # "isDisconnect":Z
    :cond_14
    if-nez v2, :cond_c

    .line 655
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v5, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 656
    iput v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    goto :goto_4

    .end local v1    # "isDisconnect":Z
    :cond_15
    move v1, v5

    .line 662
    goto :goto_5

    .line 666
    .restart local v1    # "isDisconnect":Z
    :cond_16
    if-nez v2, :cond_f

    .line 667
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 668
    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v4, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 669
    iput v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_6

    .line 671
    :cond_17
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4, v5, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 672
    iput v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_6
.end method


# virtual methods
.method protected enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 573
    if-nez p1, :cond_0

    .line 574
    sput-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    .line 581
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 578
    :cond_1
    sput-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    .line 580
    :cond_2
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method protected getIvrList()V
    .locals 3

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 914
    :cond_0
    const-string v1, "getIvrList()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 916
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 917
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 919
    :cond_1
    if-nez v0, :cond_3

    .line 944
    :cond_2
    :goto_0
    return-void

    .line 922
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 923
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$6;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 941
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 900
    const-string v2, "[^0-9]"

    .line 901
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 902
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 903
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    .line 587
    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    .line 591
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    .line 592
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showLatestPageIVR()V

    .line 594
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_1
    monitor-exit p0

    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 311
    const v5, 0x7f040163

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    .line 313
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f100378

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonContainer:Landroid/view/View;

    .line 315
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f100280

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    .line 316
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f10037d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    .line 317
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    .line 322
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v7}, Lcom/android/incallui/util/VisualCallCenter;->setIVRMode(Z)V

    .line 323
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isNoMenuIVR()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 324
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v8}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    .line 325
    const-string v5, "VCC_isNoMenuIVR: true"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "visual_call_update_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 333
    .local v4, "vCallNetSelect":I
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

    .line 334
    if-nez v4, :cond_5

    .line 335
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    .line 342
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getUpdateIVRLimit()I

    move-result v1

    .line 343
    .local v1, "limit":I
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

    .line 346
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003e7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    .line 347
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003ea

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    .line 348
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003ec

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    .line 351
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;

    invoke-direct {v6, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/incallui/util/VisualCallCenter;->setOnIVRScreenRemovedListener(Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;)V

    .line 362
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 363
    .local v0, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getAgreementFlag()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showUserAgreementDialog()V

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.incallui"

    const-string v7, "VCCS"

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v5, "smart_ivr_callerid_info"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 372
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    .line 373
    const v5, 0x7f09054e

    invoke-virtual {p0, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "text":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 375
    .local v2, "sp":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/URLSpan;

    const-string v6, "market://details?id=co.breezeapp.breeze"

    invoke-direct {v5, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 376
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 378
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPowerByBreeze:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    .end local v2    # "sp":Landroid/text/SpannableString;
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v5, :cond_3

    .line 381
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v6, 0x7f1003ed

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    .line 382
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 383
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 384
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    .line 387
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateEndCallButtonColor()V

    .line 388
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    return-object v5

    .line 327
    .end local v0    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    .end local v1    # "limit":I
    .end local v4    # "vCallNetSelect":I
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v7}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    .line 328
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    .line 329
    const-string v5, "VCC_isNoMenuIVR:false"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .restart local v4    # "vCallNetSelect":I
    :cond_5
    if-ne v4, v7, :cond_6

    .line 337
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    goto/16 :goto_1

    .line 339
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3e9

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 215
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    :cond_1
    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    .line 225
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->removePagerInstance()V

    .line 227
    sput v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    .line 228
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->releaseDisplayIVRPager()V

    .line 229
    iput-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    .line 230
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 232
    iput-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    .line 235
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onPause()V

    .line 280
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

    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    .line 285
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onResume()V

    .line 241
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    .line 245
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 246
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    const-string v2, "onResume:"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v1

    .line 249
    .local v1, "visible":Z
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

    .line 250
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    .line 252
    const-string v2, "smart_ivr_callerid_info"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->SmartIVR_speakerOnConfirm()V

    .line 254
    sput-boolean v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 258
    .end local v1    # "visible":Z
    :cond_1
    const-string v2, "onResume: show Dialpad"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v1

    .line 260
    .restart local v1    # "visible":Z
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

    .line 261
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isNoMenuIVR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getDisplayDailpad()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onStop()V

    .line 290
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

    .line 291
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    .line 303
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->removePagerInstance()V

    .line 305
    :cond_2
    return-void

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePosition:I

    goto :goto_0
.end method

.method public queryForSwappedCall()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 549
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 551
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    const-string v1, "updateCallButtons:"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    .line 568
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    .line 569
    return-void

    .line 555
    :cond_1
    const-string v1, "updateCallButtons: show Dialpad"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v0

    .line 557
    .local v0, "visible":Z
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

    .line 558
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isNoMenuIVR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getDisplayDailpad()Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
