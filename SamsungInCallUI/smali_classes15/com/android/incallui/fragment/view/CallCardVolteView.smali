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
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowConferenceBanner:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOldCallState:I

    .line 100
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardVolteView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardVolteView;)Lcom/android/incallui/fragment/CallCardFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/fragment/view/CallCardVolteView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    return p1
.end method

.method private animateEpdgNotifyInfoForAnswer()V
    .locals 7

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 558
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 559
    .local v1, "duration":I
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 560
    new-instance v2, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    new-instance v2, Lcom/android/incallui/fragment/view/CallCardVolteView$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView$3;-><init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 571
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "duration":I
    :cond_0
    return-void
.end method

.method private isPossibleToShowHoldText()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 456
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v1

    .line 457
    :cond_1
    const-string v2, "us_show_on_hold"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 461
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 462
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onResume(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 574
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 575
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showVZWVoLTEMenu()V

    .line 581
    :cond_0
    return-void
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 185
    const v0, 0x7f100202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    .line 187
    const-string v0, "spr_display_hd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const v0, 0x7f100201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    .line 191
    :cond_0
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    .line 193
    const v0, 0x7f10034e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 197
    const v0, 0x7f10028b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    .line 201
    :cond_2
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    .line 203
    const v0, 0x7f1002da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 207
    const v0, 0x7f100419

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_4
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-nez v0, :cond_5

    .line 214
    const v0, 0x7f1002f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    .line 217
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 218
    const v0, 0x7f1002d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    .line 222
    :cond_6
    const-string v0, "us_show_on_hold"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v0, :cond_7

    .line 224
    const v0, 0x7f1002fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    .line 227
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 228
    const v0, 0x7f1002fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f1002fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    .line 233
    :cond_8
    const-string v0, "enable_conference_info_banner"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v0, :cond_9

    .line 235
    const v0, 0x7f1002f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_a

    .line 238
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 239
    const v0, 0x7f10025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    .line 243
    :cond_a
    const-string v0, "show_switch_icon_on_callcard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 244
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_b

    .line 245
    const v0, 0x7f10030d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    .line 247
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 249
    const v0, 0x7f10032b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    .line 250
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_c
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 4
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "state"    # I

    .prologue
    .line 256
    iget v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOldCallState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0x9

    if-eq p2, v1, :cond_1

    .line 257
    :cond_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    if-ne p2, v1, :cond_7

    .line 258
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    const-string v1, "CallCardVolteView"

    const-string v2, "setCallState: skip update HD Icon"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    :cond_1
    :goto_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showEpdgNotifyBanner(Lcom/android/incallui/fragment/CallCardFragment;I)V

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showVZWVoLTEMenu()V

    .line 270
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 272
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 273
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V

    .line 275
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showOnholdLayout()V

    .line 278
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_4
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 279
    const-string v1, "CallCardVolteView"

    const-string v2, "onStateChange - showConferenceStateInfoBanner"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showConferenceStateInfoBanner()V

    .line 283
    :cond_5
    const-string v1, "show_switch_icon_on_callcard"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 284
    const-string v1, "CallCardVolteView"

    const-string v2, "onStateChange - updateSwitchToVideoButton"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateSwitchToVideoButton()V

    .line 287
    :cond_6
    return-void

    .line 261
    :cond_7
    const-string v1, "CallCardVolteView"

    const-string v2, "setCallState updateIcon"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon(Lcom/android/incallui/fragment/CallCardFragment;)V

    goto :goto_0
.end method

.method private showConferenceStateInfoBanner()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 505
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    if-nez v5, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const-string v5, "CallCardVolteView"

    const-string v6, "showConferenceStateInfoBanner"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 508
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 509
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 510
    .local v1, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_6

    .line 511
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 512
    .local v2, "isVolteConference":Z
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

    .line 514
    if-eqz v2, :cond_0

    .line 515
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 517
    .local v3, "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0285

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 518
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v5, v3}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    .end local v3    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    .line 521
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 523
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 524
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 526
    :cond_5
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 527
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

    .line 528
    .local v4, "strBanner":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->bringToFront()V

    goto/16 :goto_0

    .line 534
    .end local v2    # "isVolteConference":Z
    .end local v4    # "strBanner":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showEpdgNotifyBanner(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 12
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "state"    # I

    .prologue
    .line 389
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 390
    .local v7, "oldCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 392
    .local v4, "incomingCall":Lcom/android/incallui/Call;
    if-nez v7, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    if-nez v4, :cond_2

    .line 394
    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v5

    .line 399
    .local v5, "isIncomingEpdeCall":Z
    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    .line 400
    .local v2, "hasDowngradedEPDGCall":Z
    :goto_1
    if-eqz v2, :cond_a

    const/4 v9, 0x4

    if-ne p2, v9, :cond_a

    if-nez v5, :cond_a

    const/4 v8, 0x1

    .line 402
    .local v8, "show":Z
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

    .line 404
    sget v9, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v9}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 405
    const/4 v8, 0x0

    .line 406
    const-string v9, "CallCardVolteView"

    const-string v10, "showEpdgNotifyBanner epdg "

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_3
    const/4 v3, 0x0

    .line 410
    .local v3, "hasVTEpdgCall":Z
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 411
    .local v1, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 412
    .local v6, "isWifiCallStatus":Z
    if-eqz v1, :cond_4

    .line 413
    const-string v9, "wifi_call_enable"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Lcom/android/incallui/operator/usa/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const/4 v6, 0x1

    .line 416
    :cond_4
    :goto_3
    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v9

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v10

    and-int v3, v9, v10

    .line 417
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

    .line 418
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

    .line 417
    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v9, "support_vowifi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v4, :cond_6

    if-nez v6, :cond_6

    .line 425
    const/4 v8, 0x1

    .line 428
    :cond_6
    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-eqz v9, :cond_0

    .line 429
    if-eqz v8, :cond_c

    .line 430
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallerInfoCardView()Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-result-object v0

    .line 431
    .local v0, "callerInfoCardView":Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCallerInfoCardMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 432
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    .line 433
    :cond_7
    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :cond_8
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    goto/16 :goto_0

    .line 399
    .end local v0    # "callerInfoCardView":Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "hasDowngradedEPDGCall":Z
    .end local v3    # "hasVTEpdgCall":Z
    .end local v6    # "isWifiCallStatus":Z
    .end local v8    # "show":Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 400
    .restart local v2    # "hasDowngradedEPDGCall":Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 413
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "hasVTEpdgCall":Z
    .restart local v6    # "isWifiCallStatus":Z
    .restart local v8    # "show":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    .line 436
    :cond_c
    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    goto/16 :goto_0
.end method

.method private showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    .line 495
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getMessageVoiceFromVideo()I

    move-result v0

    .line 496
    .local v0, "message":I
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 497
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    .line 498
    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 500
    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    goto :goto_0
.end method

.method private showOnholdLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->isPossibleToShowHoldText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showVZWVoLTEMenu()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 468
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 469
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 470
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_5

    .line 471
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

    .line 472
    .local v3, "isDialing":Z
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move v4, v5

    .line 473
    .local v4, "isIncoming":Z
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

    .line 474
    .local v1, "canAdd":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_8

    .line 475
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasOtherCallTTYvalue()Z

    move-result v7

    if-nez v7, :cond_8

    move v2, v5

    .line 476
    .local v2, "enableAdd":Z
    :goto_3
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 477
    const/4 v2, 0x0

    .line 479
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isWiFiCallEnable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 481
    const/4 v1, 0x0

    .line 483
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 484
    const/4 v1, 0x0

    .line 486
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 487
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

    .line 488
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 492
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "canAdd":Z
    .end local v2    # "enableAdd":Z
    .end local v3    # "isDialing":Z
    .end local v4    # "isIncoming":Z
    :cond_4
    return-void

    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    move v3, v6

    .line 471
    goto/16 :goto_0

    .restart local v3    # "isDialing":Z
    :cond_6
    move v4, v6

    .line 472
    goto/16 :goto_1

    .restart local v4    # "isIncoming":Z
    :cond_7
    move v1, v6

    .line 473
    goto :goto_2

    .restart local v1    # "canAdd":Z
    :cond_8
    move v2, v6

    .line 475
    goto :goto_3

    .line 488
    .restart local v2    # "enableAdd":Z
    :cond_9
    const/16 v6, 0x8

    goto :goto_4
.end method

.method private updateIcon(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 297
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcons(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)V

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 302
    .local v1, "secondaryCall":Lcom/android/incallui/Call;
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    .line 304
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateSecondaryUHDIcon(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)V

    .line 306
    :cond_1
    return-void
.end method

.method private updateIconColor(Lcom/android/incallui/fragment/CallCardFragment;IZ)V
    .locals 11
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "state"    # I
    .param p3, "animated"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 350
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0121

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 351
    .local v4, "endCallColor":I
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0120

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 352
    .local v2, "defaultColor":I
    const-string v8, "support_chn_cu_hd_voice_call"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isChnCuSIM()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 353
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0138

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 356
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v6

    .line 357
    .local v5, "isBackgroundShowing":Z
    :goto_1
    if-eqz v5, :cond_6

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x9

    if-ne p2, v8, :cond_6

    .line 358
    :cond_2
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 359
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .end local v5    # "isBackgroundShowing":Z
    :cond_5
    move v5, v7

    .line 356
    goto :goto_1

    .line 362
    .restart local v5    # "isBackgroundShowing":Z
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v8

    if-nez v8, :cond_0

    .line 365
    if-eqz p3, :cond_7

    .line 366
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 367
    .local v3, "duration":I
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

    .line 368
    .local v1, "colorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    new-instance v6, Lcom/android/incallui/fragment/view/CallCardVolteView$2;

    invoke-direct {v6, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView$2;-><init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 379
    .end local v1    # "colorAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "duration":I
    :cond_7
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 380
    :cond_8
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    :cond_9
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_0
.end method

.method private updateIcons(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "primaryCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 309
    const/4 v0, -0x1

    .line 310
    .local v0, "iconName":I
    invoke-static {p2}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v1

    .line 312
    .local v1, "iconType":I
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 313
    const-string v2, ""

    invoke-static {v2, v1}, Lcom/android/incallui/util/InCallUtils;->getIconName(Ljava/lang/String;I)I

    move-result v0

    .line 314
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    :cond_0
    :goto_0
    const-string v2, "spr_display_hd_icon"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 321
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

    .line 323
    :cond_1
    return-void

    .line 317
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
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "secondaryCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 326
    invoke-static {p2}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v1

    .line 327
    .local v1, "iconType":I
    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const/4 v1, 0x3

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 332
    if-eqz v1, :cond_2

    .line 333
    const-string v2, ""

    invoke-static {v2, v1, p2}, Lcom/android/incallui/util/InCallUtils;->getSecondIconName(Ljava/lang/String;ILcom/android/incallui/Call;)I

    move-result v0

    .line 334
    .local v0, "iconName":I
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 341
    .end local v0    # "iconName":I
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSwitchToVideoButton()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 616
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 617
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    .line 620
    .local v1, "mEmergencyMode":Z
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 621
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    if-nez v1, :cond_4

    const/4 v2, 0x1

    .line 624
    .local v2, "showSwitch":Z
    :goto_1
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    const-string v4, "CallCardVolteView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSwitchToVideoButton : isAutoAnswered - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    const/4 v2, 0x0

    .line 631
    :cond_2
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 632
    const/4 v2, 0x0

    .line 635
    :cond_3
    const-string v4, "CallCardVolteView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSwitchToVideoButton - showSwitch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    if-eqz v2, :cond_5

    .line 637
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "showSwitch":Z
    :cond_4
    move v2, v3

    .line 621
    goto :goto_1

    .line 639
    .restart local v2    # "showSwitch":Z
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mSwitchToVideoButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->animateEpdgNotifyInfoForAnswer()V

    .line 155
    return-void
.end method

.method public animateForSwap()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public isShowEpdgNotifyBanner()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z

    return v0
.end method

.method public needToShowConferenceBanner()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 600
    const-string v3, "enable_conference_info_banner"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 602
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 603
    .local v1, "isVolteConference":Z
    iget-boolean v3, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowConferenceBanner:Z

    if-eq v1, v3, :cond_0

    .line 604
    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowConferenceBanner:Z

    .line 605
    const/4 v2, 0x1

    .line 608
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "isVolteConference":Z
    :cond_0
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 169
    .local v1, "id":I
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

    .line 170
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 171
    .local v0, "call":Lcom/android/incallui/Call;
    packed-switch v1, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    const-string v2, "CallCardVolteView"

    const-string v3, "onClick add call menu"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    .line 175
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x7f100419
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 592
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    .line 597
    :cond_0
    return-void
.end method

.method public onPause(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 584
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 585
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onResume(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V

    .line 132
    :cond_0
    iput p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mOldCallState:I

    .line 133
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 138
    return-void
.end method

.method public showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "show"    # Z

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showVZWVoLTEMenu()V

    .line 589
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 539
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

    .line 541
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 542
    if-eqz p1, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mModifyStateInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIcon()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 293
    :cond_0
    return-void
.end method

.method public updateIconColor(IZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIconColor(Lcom/android/incallui/fragment/CallCardFragment;IZ)V

    .line 347
    :cond_0
    return-void
.end method
