.class public Lcom/android/incallui/fragment/VideoCallCardExtendFragment;
.super Lcom/android/incallui/fragment/VideoCallCardBaseFragment;
.source "VideoCallCardExtendFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardExtendFragment"


# instance fields
.field protected mDowngradeButton:Landroid/widget/ImageButton;

.field protected mDowngradeStub:Landroid/view/ViewStub;

.field private mEriCallInfoStub:Landroid/view/ViewStub;

.field private mEriCallInfoText:Landroid/widget/TextView;

.field public mHeightPixels:I

.field private mIncomingDivider:Landroid/view/View;

.field mIsFullScreenMode:Z

.field mIsLandscape:Z

.field private mJanskyIcon:Landroid/widget/ImageView;

.field private mOnholdLayoutForwardSlash:Landroid/widget/TextView;

.field private mOnholdLayoutText:Landroid/widget/TextView;

.field private mOnholdStub:Landroid/view/ViewStub;

.field private mSecondaryDiver:Landroid/view/View;

.field private mSecondaryElapsedTime:Landroid/widget/TextView;

.field private mSecondaryElapsedTimeLayout:Landroid/view/View;

.field private mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

.field private mSecondaryElapsedTimeView:Landroid/view/View;

.field private mSecondaryForwardSlash:Landroid/widget/TextView;

.field private mVideoBannerText:Landroid/widget/TextView;

.field public mWidthPixels:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mWidthPixels:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHeightPixels:I

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    return-void
.end method

.method private hasJanskyInfo()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private inflateEriCallInfoLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateSecondaryElapsedTime()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    const v1, 0x7f10042e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    const v1, 0x7f10042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateVideoBanner()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f10037f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f100380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f100381

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateVolteOnholdLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100309

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10030a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10030b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private isPossibleToShowHoldText(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "us_show_on_hold"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private remindDummyBanner(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showVideoStateMessageUi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showCallInfoContainer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "VideoCallCardExtendFragment"

    const-string v1, "showCallInfoContainer container is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDowngradeButton(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    :cond_0
    const-string v1, "VideoCallCardExtendFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDowngradeButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEriCallInfoText(Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v1, 0x8

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    if-ne v0, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEriCallInfoText visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIncomingDividerForCallState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMultiWindowLayout()V
    .locals 8

    const v7, 0x7f0a0587

    const-string v4, "updateMultiWindowLayout"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateOnholdStub()V
    .locals 3

    const/16 v2, 0x11

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f100199

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f100193

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private updatePrimaryBanner(Lcom/android/incallui/Call;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryContainerForCall(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateLayoutForCallState(I)V

    sget-boolean v5, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVideoTypeIcon(Lcom/android/incallui/Call;)V

    :cond_0
    sget-boolean v5, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_NOTIFY_VIDEO_QUALITY:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallManager;->isLowQuality()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateLowQualityInfo(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/VideoBanner;->isModifyVideoBannerType()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "VideoCallCardExtendFragment"

    const-string v6, "setCallState does not set modify message "

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecModifyCallProcessor;->checkAndUpdateModifyDummyState()V

    :cond_3
    const-string v5, "us_show_on_hold"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateOnholdStub()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateEriCallInfoText(Lcom/android/incallui/Call;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eq v4, v7, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_7
    iget-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_0
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateJanskyInfo()V

    :cond_9
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateDowngradeButton(Lcom/android/incallui/Call;)V

    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateFullscreenMode(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v3, 0x1

    :cond_b
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    return-void

    :cond_c
    if-eq v4, v7, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePrimaryContainerForCall(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string v1, "us_show_on_hold"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isPossibleToShowHoldText(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eq v4, v0, :cond_5

    if-ne v2, v0, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v2, v0, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorOnHold:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorDefault:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eq v4, v0, :cond_9

    if-ne v2, v0, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v2, v0, :cond_a

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorOnHold:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorDefault:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateSecondaryIcon()V
    .locals 9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const-string v6, "VideoCallCardExtendFragment"

    const-string v7, "setSecondaryIcon secondaryCall is null"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v6, "VideoCallCardExtendFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSecondaryIcon secondaryCall:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v2

    invoke-virtual {v5}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    const-string v6, "VideoCallCardExtendFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSecondaryIcon hasVideoState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isHDVoice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEPDG:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    if-eqz v1, :cond_4

    const v4, 0x7f020076

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const v4, 0x7f020078

    :cond_3
    :goto_1
    if-nez v4, :cond_9

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v6

    if-eqz v6, :cond_5

    const v4, 0x7f0202f8

    goto :goto_1

    :cond_5
    const v4, 0x7f0202f6

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_8

    const v4, 0x7f0203db

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_7
    const v4, 0x7f0203de

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_3

    const v4, 0x7f02007e

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateVideoBanner()V
    .locals 4

    const-string v2, "updateVideoBanner"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x3

    const v3, 0x7f100300

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateVisiblityForFullscreen(Z)V
    .locals 12

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    if-nez p1, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-wide v8, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mUserType:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-nez p1, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    :cond_2
    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v3, v5

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVisiblityForFullscreen manage button - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    move v4, v6

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    move v3, v6

    goto :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected inflateCdnipLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100344

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10024c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10039c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumberLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100343

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10039e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10039d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapNameLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateDowngradeButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100286

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected inflateManageLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected isCdnipExist()Z
    .locals 1

    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCnapExist()Z
    .locals 1

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInExceptionArea(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 0

    return-void
.end method

.method public manageMultiTouchStub(Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "VideoCallCardExtendFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VideoCallCardExtendFragment"

    const-string v2, "onClick: call super onClick"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallCardExtendFragment - onConfigurationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateLayoutForCallState(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mWidthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHeightPixels:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f040120

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const v1, 0x7f04011f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setFullScreenWindow(Z)V

    return-void
.end method

.method public onDialpadVisiblityChange()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v1, 0x7f100254

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v1, 0x7f100198

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f1000e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryName:Landroid/widget/TextView;

    const v1, 0x7f10033e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    const v1, 0x7f10010e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mNumberLabel:Landroid/widget/TextView;

    const v1, 0x7f1001da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhotoContainer:Landroid/view/View;

    const v1, 0x7f1000a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f100191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v1, 0x7f100193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f100197

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v1, 0x7f100199

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    const v1, 0x7f1000a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v1, 0x7f10018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v1, 0x7f1001d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    const v1, 0x7f100341

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    const v1, 0x7f100256

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const v1, 0x7f100342

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mNameContainer:Landroid/view/View;

    const v1, 0x7f10034e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    const v1, 0x7f10034c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    const v1, 0x7f1002fc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const v1, 0x7f100300

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f1002f7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const v1, 0x7f1002fb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const v1, 0x7f10009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100099

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setFullScreenWindow(Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateMultiWindowLayout()V

    :cond_1
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f10032a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCityId:Landroid/widget/TextView;

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVideoTypeIconLayout()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateSecondaryElapsedTime()V

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateEriCallInfoLayout()V

    :cond_7
    const-string v1, "us_show_on_hold"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVolteOnholdLayout()V

    :cond_8
    const-string v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100348

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateManageLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateDowngradeButtonLayout()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVideoBanner()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->remindVideoBanner()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->remindDummyBanner(I)V

    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    :cond_b
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    :cond_c
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected resetMergeAnimation()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "resetMergeAnimation"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setMergeProgressing(Z)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setAlpha(F)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setAlpha(F)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 3

    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->canUpdateUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "setCallState : cannot update ui - none videostate"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryBanner(Lcom/android/incallui/Call;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryBanner(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateUpperNameLayout()V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateIncomingDividerForCallState(I)V

    goto :goto_0
.end method

.method public setFullScreenWindow(Z)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x400

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public setMergeProgressing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "VideoCallCardExtendFragment"

    const-string v2, "setPrimaryVisible : banner is null"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_1
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setTTS(JLandroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public setViewStatePostSplit()V
    .locals 0

    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0

    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_5

    const/4 v0, 0x1

    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    if-eq v0, p1, :cond_0

    const-string v0, "VideoCallCardExtendFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFullscreenMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVisiblityForFullscreen(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryContainerForCall(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setFullScreenWindow(Z)V

    :cond_0
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 5

    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->hasJanskyInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateLayoutForCallState(I)V
    .locals 10

    const v9, 0x7f0a0586

    const v8, 0x7f0a005a

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mNameContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v5

    iget-object v6, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v6, v6, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a033a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCnapExist()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCdnipExist()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a05b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCnapExist()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCdnipExist()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a05b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a033d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :pswitch_2
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0x11

    const v7, 0x7f100199

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryVisibleForCallState(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p1, v4, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    const/16 v0, 0xa

    if-ne v0, p1, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    :cond_4
    if-eq p1, v1, :cond_5

    if-ne p1, v5, :cond_1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    :cond_6
    if-ne p1, v4, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    :cond_7
    if-eq p1, v1, :cond_8

    if-ne p1, v5, :cond_1

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    goto :goto_0
.end method

.method protected updateSecondaryBanner(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryIcon()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVideoBanner()V

    return-void
.end method

.method protected updateSecondaryButton()V
    .locals 13

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v7, v11, v8}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    const-string v7, "support_merge_call"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x0

    :cond_2
    const-string v7, "VideoCallCardExtendFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMultipartyCallButtons - canSwap="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - canMerge="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - canManageConference="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - isConference="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v9, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->hideConferenceCallManager()V

    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v11, 0x9

    if-eq v7, v11, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v11, 0xa

    if-ne v7, v11, :cond_c

    :cond_7
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v7, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v7, :cond_9

    iget-object v11, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_a

    move v7, v8

    :goto_2
    invoke-virtual {v11, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v7, :cond_5

    iget-object v11, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v2, :cond_b

    move v7, v8

    :goto_3
    invoke-virtual {v11, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_a
    move v7, v9

    goto :goto_2

    :cond_b
    move v7, v9

    goto :goto_3

    :cond_c
    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    move v6, v10

    :goto_4
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    if-nez v7, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v9, :cond_e

    move v4, v10

    :goto_5
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_f

    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez v4, :cond_10

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f014b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    :cond_d
    move v6, v8

    goto :goto_4

    :cond_e
    move v4, v8

    goto :goto_5

    :cond_f
    move v8, v9

    goto :goto_6

    :cond_10
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f018a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method protected updateUpperNameLayout()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0539

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method
