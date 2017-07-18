.class public Lcom/android/incallui/fragment/view/CallCardVolteView;
.super Ljava/lang/Object;
.source "CallCardVolteView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_MENU_CHANGE:Ljava/lang/String; = "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

.field private static final LOG_TAG:Ljava/lang/String; = "CallCardVolteView"


# instance fields
.field private mAddCallMenuStub:Landroid/view/ViewStub;

.field private mAddCallMenuText:Landroid/widget/TextView;

.field private mAttemptingTextSPR:Landroid/widget/TextView;

.field private mConferenceInfoBanner:Landroid/view/ViewStub;

.field private mConferenceInfoText:Landroid/widget/TextView;

.field private mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

.field private mEpdgNotifyInfoText:Landroid/widget/TextView;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mHdWifiIcon:Landroid/widget/ImageView;

.field private mModifyStateInfoBanner:Landroid/view/ViewStub;

.field private mModifyStateInfoText:Landroid/widget/TextView;

.field protected mOldCallState:I

.field private mOnholdLayoutForwardSlash:Landroid/widget/TextView;

.field private mOnholdLayoutText:Landroid/widget/TextView;

.field private mOnholdStub:Landroid/view/ViewStub;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowConferenceBanner:Z

.field private mShowEpdgNotifyBanner:Z

.field private mSwitchToVideoButton:Landroid/widget/ImageButton;

.field private mSwitchToVideoButtonStub:Landroid/view/ViewStub;

.field private mUHDIconImageSecondary:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowConferenceBanner:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOldCallState:I

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardVolteView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardVolteView;)Lcom/android/incallui/fragment/CallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/fragment/view/CallCardVolteView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    return p1
.end method

.method private animateEpdgNotifyInfoForAnswer()V
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/incallui/fragment/view/CallCardVolteView$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView$3;-><init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private isPossibleToShowHoldText()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "us_show_on_hold"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onResume(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showVZWVoLTEMenu()V

    :cond_0
    return-void
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f10020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    const-string v0, "spr_display_hd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    :cond_0
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    const v0, 0x7f100358

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100299

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    :cond_2
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    const v0, 0x7f1002e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100423

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-nez v0, :cond_5

    const v0, 0x7f100303

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1002e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    :cond_6
    const-string v0, "us_show_on_hold"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v0, :cond_7

    const v0, 0x7f100309

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f10030a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    const v0, 0x7f10030b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    :cond_8
    const-string v0, "enable_conference_info_banner"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v0, :cond_9

    const v0, 0x7f100302

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100268

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    :cond_a
    const-string v0, "show_switch_icon_on_callcard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_b

    const v0, 0x7f100317

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100335

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 4

    iget v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOldCallState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0x9

    if-eq p2, v1, :cond_1

    :cond_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    if-ne p2, v1, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CallCardVolteView"

    const-string v2, "setCallState: skip update HD Icon"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showEpdgNotifyBanner(Lcom/android/incallui/fragment/CallCardFragment;I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showVZWVoLTEMenu()V

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showOnholdLayout()V

    :cond_4
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "CallCardVolteView"

    const-string v2, "onStateChange - showConferenceStateInfoBanner"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showConferenceStateInfoBanner()V

    :cond_5
    const-string v1, "show_switch_icon_on_callcard"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "CallCardVolteView"

    const-string v2, "onStateChange - updateSwitchToVideoButton"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateSwitchToVideoButton()V

    :cond_6
    return-void

    :cond_7
    const-string v1, "CallCardVolteView"

    const-string v2, "setCallState updateIcon"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon(Lcom/android/incallui/fragment/CallCardFragment;)V

    goto :goto_0
.end method

.method private showConferenceStateInfoBanner()V
    .locals 9

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "CallCardVolteView"

    const-string v6, "showConferenceStateInfoBanner"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v2

    const-string v5, "CallCardVolteView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secCallExtra.isVolteConference() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0285

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v5, v3}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090097

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->bringToFront()V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showEpdgNotifyBanner(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v4, :cond_2

    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v5

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_a

    const/4 v9, 0x4

    if-ne p2, v9, :cond_a

    if-nez v5, :cond_a

    const/4 v8, 0x1

    :goto_2
    const-string v9, "CallCardVolteView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showEpdgNotifyBanner - hasDowngradedEPDGCall : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v9, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v9}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v8, 0x0

    const-string v9, "CallCardVolteView"

    const-string v10, "showEpdgNotifyBanner epdg "

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    const-string v9, "wifi_call_enable"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Lcom/android/incallui/operator/usa/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const/4 v6, 0x1

    :cond_4
    :goto_3
    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v9

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v10

    and-int v3, v9, v10

    const-string v9, "CallCardVolteView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showEpdgNotifyBanner hasVTEpdgCall:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isVoWiFiFeature: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "support_vowifi"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isWifiCallStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "support_vowifi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v4, :cond_6

    if-nez v6, :cond_6

    const/4 v8, 0x1

    :cond_6
    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-eqz v9, :cond_0

    if-eqz v8, :cond_c

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallerInfoCardView()Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCallerInfoCardMode()Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_7
    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    :cond_c
    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    goto/16 :goto_0
.end method

.method private showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getMessageVoiceFromVideo()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    goto :goto_0
.end method

.method private showOnholdLayout()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->isPossibleToShowHoldText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showVZWVoLTEMenu()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move v4, v5

    :goto_1
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    move v1, v5

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasOtherCallTTYvalue()Z

    move-result v7

    if-nez v7, :cond_8

    move v2, v5

    :goto_3
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isWiFiCallEnable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    const-string v5, "CallCardVolteView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showVZWVoLTEMenu, canAdd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enableAdd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasbeenVideoCall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v3, v6

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto/16 :goto_1

    :cond_7
    move v1, v6

    goto :goto_2

    :cond_8
    move v2, v6

    goto :goto_3

    :cond_9
    const/16 v6, 0x8

    goto :goto_4
.end method

.method private updateIcon(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcons(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002fc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateSecondaryUHDIcon(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)V

    :cond_1
    return-void
.end method

.method private updateIconColor(Lcom/android/incallui/fragment/CallCardFragment;IZ)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0121

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0120

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const-string v8, "support_chn_cu_hd_voice_call"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isChnCuSIM()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0138

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v6

    :goto_1
    if-eqz v5, :cond_6

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x9

    if-ne p2, v8, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p3, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/incallui/fragment/view/CallCardVolteView$2;

    invoke-direct {v6, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView$2;-><init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_8
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method private updateIcons(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v0, -0x1

    invoke-static {p2}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/android/incallui/util/InCallUtils;->getIconName(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string v2, "spr_display_hd_icon"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->updateHDVoiceCallText(Landroid/content/Context;Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSecondaryUHDIcon(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)V
    .locals 4

    invoke-static {p2}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-static {v2, v1, p2}, Lcom/android/incallui/util/InCallUtils;->getSecondIconName(Ljava/lang/String;ILcom/android/incallui/Call;)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSwitchToVideoButton()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CallCardVolteView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSwitchToVideoButton : isAutoAnswered - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    const-string v3, "support_nsri_secure"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    const-string v3, "CallCardVolteView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSwitchToVideoButton - showSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->animateEpdgNotifyInfoForAnswer()V

    return-void
.end method

.method public animateForSwap()V
    .locals 2

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    return-void
.end method

.method public isShowEpdgNotifyBanner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    return v0
.end method

.method public needToShowConferenceBanner()Z
    .locals 5

    const/4 v2, 0x0

    const-string v3, "enable_conference_info_banner"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowConferenceBanner:Z

    if-eq v1, v3, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowConferenceBanner:Z

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "CallCardVolteView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "CallCardVolteView"

    const-string v3, "onClick add call menu"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100423
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    :cond_0
    return-void
.end method

.method public onPause(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onResume(Lcom/android/incallui/fragment/CallCardFragment;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V

    :cond_0
    iput p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOldCallState:I

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showVZWVoLTEMenu()V

    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "CallCardVolteView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showModifyStateInfoBanner message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIcon()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon(Lcom/android/incallui/fragment/CallCardFragment;)V

    :cond_0
    return-void
.end method

.method public updateIconColor(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIconColor(Lcom/android/incallui/fragment/CallCardFragment;IZ)V

    :cond_0
    return-void
.end method
