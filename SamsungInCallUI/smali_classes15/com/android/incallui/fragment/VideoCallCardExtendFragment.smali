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

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    .line 85
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    .line 90
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mWidthPixels:I

    .line 91
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHeightPixels:I

    .line 92
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    .line 95
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    .line 97
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    .line 98
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    return-void
.end method

.method private hasJanskyInfo()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v1

    .line 646
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

    .line 647
    .local v0, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 648
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private inflateEriCallInfoLayout()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 280
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    .line 282
    :cond_1
    return-void
.end method

.method private inflateSecondaryElapsedTime()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    .line 302
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    .line 304
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    const v1, 0x7f100424

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    const v1, 0x7f100425

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    .line 312
    :cond_1
    return-void
.end method

.method private inflateVideoBanner()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    .line 288
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f100375

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f100376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f100377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    .line 298
    :cond_1
    return-void
.end method

.method private inflateVolteOnholdLayout()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 267
    .local v0, "holdTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    .line 268
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    .line 270
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    .end local v0    # "holdTextColor":I
    :cond_1
    return-void
.end method

.method private isPossibleToShowHoldText()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 968
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 969
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 977
    :cond_0
    :goto_0
    return v2

    .line 970
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    .line 971
    .local v1, "secCall":Lcom/android/incallui/SecCall;
    const-string v3, "us_show_on_hold"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 972
    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->isHoldedByTheOtherParty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 974
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 975
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private remindDummyBanner(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 624
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    .line 625
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showVideoStateMessageUi(Ljava/lang/String;)V

    .line 628
    :cond_0
    return-void
.end method

.method private showCallInfoContainer(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 613
    const-string v0, "VideoCallCardExtendFragment"

    const-string v1, "showCallInfoContainer container is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_0
    return-void

    .line 616
    :cond_0
    if-eqz p1, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDowngradeButton()V
    .locals 5

    .prologue
    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, "modifiable":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 657
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 658
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 660
    :cond_0
    const-string v2, "VideoCallCardExtendFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDowngradeButton - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 662
    if-eqz v1, :cond_2

    .line 663
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 667
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 669
    :cond_1
    return-void

    .line 665
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEriCallInfoText(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x4

    .line 911
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 912
    .local v0, "state":I
    if-eq v0, v3, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 913
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 914
    if-ne v0, v3, :cond_1

    .line 915
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 918
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

    .line 924
    :cond_3
    :goto_0
    return-void

    .line 921
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 922
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIncomingDividerForCallState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 982
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 983
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMultiWindowLayout()V
    .locals 8

    .prologue
    const v7, 0x7f0a057b

    .line 1030
    const-string v4, "updateMultiWindowLayout"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1031
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 1035
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1038
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1039
    .local v0, "callStateParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1040
    .local v3, "secondaryPanelParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1041
    .local v2, "secondaryCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1043
    .local v1, "indicatorAreaParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1044
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1045
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1047
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateOnholdStub()V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 991
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 993
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 994
    const v1, 0x7f100199

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 998
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 995
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 996
    const v1, 0x7f100193

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private updatePrimaryBanner(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "primaryCall"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 725
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    .line 727
    .local v3, "state":I
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateUpperNameForCallState(Lcom/android/incallui/Call;)V

    .line 728
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateLayoutForCallState(I)V

    .line 730
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v4, :cond_0

    .line 731
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVideoTypeIcon(Lcom/android/incallui/Call;)V

    .line 734
    :cond_0
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/VideoBanner;->isModifyVideoBannerType()Z

    move-result v1

    .line 735
    .local v1, "isShowingModifyBanner":Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 736
    const-string v4, "VideoCallCardExtendFragment"

    const-string v5, "setCallState does not set modify message "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 740
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 741
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/SecModifyCallProcessor;->checkAndUpdateModifyDummyState()V

    .line 744
    :cond_2
    const-string v4, "us_show_on_hold"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 745
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateOnholdStub()V

    .line 747
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 748
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateEriCallInfoText(Lcom/android/incallui/Call;)V

    .line 751
    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 752
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 753
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 754
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_7

    .line 755
    if-eq v3, v6, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_6
    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v4, :cond_b

    .line 756
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 764
    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_7
    :goto_0
    const-string v4, "jansky_info_for_tmo"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 765
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateJanskyInfo()V

    .line 767
    :cond_8
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v4

    if-nez v4, :cond_9

    .line 768
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v4

    if-nez v4, :cond_9

    .line 769
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateDowngradeButton()V

    .line 772
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateFullscreenMode(Z)V

    .line 774
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v4

    if-nez v4, :cond_a

    .line 775
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    .line 776
    .local v2, "showSecondary":Z
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    .line 778
    return-void

    .line 757
    .end local v2    # "showSecondary":Z
    .restart local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_b
    if-eq v3, v6, :cond_7

    .line 758
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSecondaryIcon()V
    .locals 9

    .prologue
    .line 787
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 788
    .local v5, "secondaryCall":Lcom/android/incallui/Call;
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 789
    :cond_0
    const-string v6, "VideoCallCardExtendFragment"

    const-string v7, "setSecondaryIcon secondaryCall is null"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :goto_0
    return-void

    .line 792
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

    .line 793
    const/4 v4, 0x0

    .line 795
    .local v4, "secondCallTypeIcon":I
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 796
    .local v2, "isHDVoice":Z
    invoke-virtual {v5}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    .line 797
    .local v0, "hasVideoState":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 798
    .local v3, "primaryCall":Lcom/android/incallui/Call;
    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 800
    .local v1, "isEPDG":Z
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

    .line 802
    if-eqz v0, :cond_6

    .line 803
    if-eqz v1, :cond_4

    .line 804
    const v4, 0x7f020076

    .line 806
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 807
    :cond_2
    const v4, 0x7f020078

    .line 829
    :cond_3
    :goto_1
    if-nez v4, :cond_9

    .line 830
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 810
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 811
    const v4, 0x7f0202e4

    goto :goto_1

    .line 813
    :cond_5
    const v4, 0x7f0202e2

    goto :goto_1

    .line 817
    :cond_6
    if-eqz v1, :cond_8

    .line 818
    const v4, 0x7f0203c5

    .line 819
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 820
    :cond_7
    const v4, 0x7f0203c8

    goto :goto_1

    .line 823
    :cond_8
    if-eqz v2, :cond_3

    .line 824
    const v4, 0x7f02007e

    goto :goto_1

    .line 832
    :cond_9
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 833
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 834
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateUpperNameForCallState(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 927
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 929
    .local v0, "state":I
    const-string v1, "us_show_on_hold"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 930
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isPossibleToShowHoldText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 932
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 934
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 937
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 938
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    if-eq v4, v0, :cond_3

    if-ne v2, v0, :cond_5

    .line 940
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    if-ne v2, v0, :cond_4

    .line 942
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorOnHold:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 944
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorDefault:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 947
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 952
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 953
    if-eq v4, v0, :cond_7

    if-ne v2, v0, :cond_9

    .line 954
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    if-ne v2, v0, :cond_8

    .line 956
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorOnHold:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 958
    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorDefault:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 961
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateVideoBanner()V
    .locals 4

    .prologue
    .line 886
    const-string v2, "updateVideoBanner"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 888
    .local v1, "secondary":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 889
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 890
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    const v3, 0x7f1002f2

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 891
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected inflateCdnipLayout()V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10033a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 253
    .local v0, "cdnipStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 255
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10023e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumber:Landroid/widget/TextView;

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100392

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumberLayout:Landroid/view/View;

    .line 258
    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100339

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 244
    .local v0, "cnapStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 246
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100394

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapName:Landroid/widget/TextView;

    .line 247
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100393

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapNameLayout:Landroid/view/View;

    .line 249
    :cond_0
    return-void
.end method

.method protected inflateDowngradeButtonLayout()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    .line 338
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    :cond_1
    return-void
.end method

.method protected inflateManageLayout()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 321
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    .line 323
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_1
    return-void
.end method

.method protected isCdnipExist()Z
    .locals 1

    .prologue
    .line 516
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumber:Landroid/widget/TextView;

    .line 517
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCnapExist()Z
    .locals 1

    .prologue
    .line 508
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapName:Landroid/widget/TextView;

    .line 509
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInExceptionArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 0
    .param p1, "isActiveCall"    # Z

    .prologue
    .line 526
    return-void
.end method

.method public manageMultiTouchStub(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 531
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 602
    .local v0, "id":I
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

    .line 605
    const-string v1, "VideoCallCardExtendFragment"

    const-string v2, "onClick: call super onClick"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onClick(Landroid/view/View;)V

    .line 609
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
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

    .line 228
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 229
    .local v0, "primary":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 231
    .local v1, "state":I
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateLayoutForCallState(I)V

    .line 233
    .end local v1    # "state":I
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 110
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mWidthPixels:I

    .line 111
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHeightPixels:I

    .line 113
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

    .line 115
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const v1, 0x7f040120

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    :goto_1
    return-object v1

    :cond_1
    move v1, v2

    .line 113
    goto :goto_0

    .line 118
    :cond_2
    const v1, 0x7f04011f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onDestroyView()V

    .line 218
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setFullScreenWindow(Z)V

    .line 222
    return-void
.end method

.method public onDialpadVisiblityChange()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    const v1, 0x7f100246

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 128
    const v1, 0x7f100198

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f1000e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 130
    const v1, 0x7f100334

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f10010e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f1001da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhotoContainer:Landroid/view/View;

    .line 133
    const v1, 0x7f1000a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhoto:Landroid/widget/ImageView;

    .line 134
    const v1, 0x7f100191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateIcon:Landroid/widget/ImageView;

    .line 135
    const v1, 0x7f100193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 136
    const v1, 0x7f100197

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 138
    const v1, 0x7f100199

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 139
    const v1, 0x7f1000a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 140
    const v1, 0x7f10018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 141
    const v1, 0x7f1001d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    .line 142
    const v1, 0x7f100337

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    .line 143
    const v1, 0x7f100248

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    .line 145
    const v1, 0x7f100338

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mNameContainer:Landroid/view/View;

    .line 146
    const v1, 0x7f100344

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIncomingDivider:Landroid/view/View;

    .line 148
    const v1, 0x7f100342

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    .line 150
    const v1, 0x7f1002ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    .line 152
    const v1, 0x7f1002f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    .line 153
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    const v1, 0x7f1002e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    .line 157
    const v1, 0x7f1002ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f10009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    .line 160
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v1, 0x7f100099

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setFullScreenWindow(Z)V

    .line 166
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateMultiWindowLayout()V

    .line 171
    :cond_1
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    const v1, 0x7f100320

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCityId:Landroid/widget/TextView;

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 180
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v1, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVideoTypeIconLayout()V

    .line 184
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateSecondaryElapsedTime()V

    .line 187
    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateEriCallInfoLayout()V

    .line 192
    :cond_7
    const-string v1, "us_show_on_hold"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVolteOnholdLayout()V

    .line 196
    :cond_8
    const-string v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 197
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10033e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    .line 199
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateManageLayout()V

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateDowngradeButtonLayout()V

    .line 201
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVideoBanner()V

    .line 202
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 203
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->remindVideoBanner()V

    .line 204
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->remindDummyBanner(I)V

    .line 207
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 208
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    .line 209
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    .line 210
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    .line 212
    :cond_c
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method protected resetMergeAnimation()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1061
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1062
    :cond_0
    const-string v1, "resetMergeAnimation"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setMergeProgressing(Z)V

    .line 1064
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

    .line 1065
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton()V

    .line 1070
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1071
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1072
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1073
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 1074
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 1075
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

    .line 1076
    .local v0, "showSecondary":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    goto :goto_0

    .end local v0    # "showSecondary":Z
    :cond_6
    move v1, v3

    .line 1064
    goto :goto_1

    :cond_7
    move v0, v3

    .line 1075
    goto :goto_2
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "connectionLabel"    # Ljava/lang/String;
    .param p6, "connectionIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "gatewayNumber"    # Ljava/lang/String;
    .param p8, "isWifi"    # Z
    .param p9, "isConference"    # Z
    .param p10, "isWorkCall"    # Z

    .prologue
    .line 361
    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    .line 363
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 364
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 366
    .local v1, "secondaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->canUpdateUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    const-string v2, "setCallState : cannot update ui - none videostate"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 371
    :cond_0
    if-eqz v0, :cond_1

    .line 372
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryBanner(Lcom/android/incallui/Call;)V

    .line 375
    :cond_1
    if-eqz v1, :cond_2

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryBanner(Lcom/android/incallui/Call;)V

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton()V

    .line 380
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateUpperNameLayout()V

    .line 381
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateIncomingDividerForCallState(I)V

    goto :goto_0
.end method

.method public setFullScreenWindow(Z)V
    .locals 3
    .param p1, "fullscreen"    # Z

    .prologue
    .line 539
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    :goto_0
    return-void

    .line 540
    :cond_0
    const/16 v0, 0x400

    .line 541
    .local v0, "flags":I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v1

    .line 542
    .local v1, "landCallUI":Z
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 546
    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 547
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 549
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
    .param p1, "isProgressing"    # Z

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    if-eq p1, v0, :cond_0

    .line 1054
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    .line 1055
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 1057
    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 346
    invoke-super/range {p0 .. p7}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 347
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 473
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 389
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 390
    const-string v1, "VideoCallCardExtendFragment"

    const-string v2, "setPrimaryVisible : banner is null"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 403
    :goto_0
    return-void

    .line 393
    :cond_0
    if-eqz p1, :cond_3

    .line 394
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 395
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    .line 402
    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout(Z)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_1

    .line 400
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_1
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 449
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 454
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "providerLabel"    # Ljava/lang/String;
    .param p5, "providerIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "canManageConference"    # Z
    .param p8, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 407
    invoke-super/range {p0 .. p8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 408
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 478
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 482
    if-eqz p1, :cond_2

    .line 483
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setTTS(JLandroid/view/View;)V

    .line 486
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "timeText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "onHoldText":Ljava/lang/String;
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

    .line 489
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    .end local v0    # "onHoldText":Ljava/lang/String;
    .end local v1    # "timeText":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 491
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    .line 899
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 900
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 901
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 902
    .local v1, "canManageConference":Z
    if-eqz v0, :cond_0

    .line 903
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 905
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 908
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "canManageConference":Z
    :cond_1
    return-void

    .line 905
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "canManageConference":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public setViewStatePostSplit()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 466
    :cond_0
    return-void

    .line 464
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 435
    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 412
    if-eqz p1, :cond_4

    move v1, v2

    .line 413
    .local v1, "visibility":I
    :goto_0
    const/4 v0, 0x0

    .line 414
    .local v0, "changeVisibility":Z
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_5

    const/4 v0, 0x1

    .line 418
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 419
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 423
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 426
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_3
    return-void

    .line 412
    .end local v0    # "changeVisibility":Z
    .end local v1    # "visibility":I
    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    .restart local v0    # "changeVisibility":Z
    .restart local v1    # "visibility":I
    :cond_5
    move v0, v2

    .line 415
    goto :goto_1
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 572
    if-eqz p1, :cond_4

    .line 573
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 581
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :cond_2
    :goto_0
    return-void

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 536
    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 8
    .param p1, "isFullScreen"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 556
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    if-eq v0, p1, :cond_3

    .line 557
    const-string v0, "VideoCallCardExtendFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFullscreenMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    .line 559
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    if-nez p1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isPossibleToShowHoldText()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mUserType:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-nez p1, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setFullScreenWindow(Z)V

    .line 568
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 560
    goto :goto_0

    :cond_5
    move v0, v2

    .line 561
    goto :goto_1

    :cond_6
    move v1, v2

    .line 564
    goto :goto_2
.end method

.method public updateJanskyInfo()V
    .locals 5

    .prologue
    .line 631
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->hasJanskyInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 633
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

    .line 634
    .local v0, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-nez v0, :cond_1

    .line 642
    .end local v0    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_0
    :goto_0
    return-void

    .line 635
    .restart local v0    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 636
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 637
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateLayoutForCallState(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const v9, 0x7f0a057a

    const v8, 0x7f0a005a

    const/4 v7, 0x0

    .line 672
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

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 677
    .local v1, "callInfoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 678
    .local v2, "callStateParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 679
    .local v0, "callCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 681
    .local v3, "indicatorAreaParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v5

    .line 682
    .local v5, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    iget-object v6, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v6, v6, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 684
    packed-switch p1, :pswitch_data_0

    .line 711
    :pswitch_0
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 712
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 713
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 714
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 718
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 686
    :pswitch_1
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 687
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a033a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 688
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 689
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCnapExist()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCdnipExist()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a05a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCnapExist()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isCdnipExist()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 692
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a05a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    .line 694
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a033d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    .line 698
    :pswitch_2
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 699
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 700
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 701
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 705
    :pswitch_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 706
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x11

    const v7, 0x7f100199

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 707
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 708
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 684
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
    .param p1, "state"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1004
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryVisibleForCallState(I)V

    .line 1006
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1007
    if-ne p1, v4, :cond_2

    .line 1008
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1011
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    .line 1027
    :cond_1
    :goto_0
    return-void

    .line 1015
    :cond_2
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    const/16 v0, 0xa

    if-ne v0, p1, :cond_4

    .line 1016
    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    .line 1017
    :cond_4
    if-eq p1, v1, :cond_5

    if-ne p1, v5, :cond_1

    .line 1018
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    .line 1021
    :cond_6
    if-ne p1, v4, :cond_7

    .line 1022
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    .line 1023
    :cond_7
    if-eq p1, v1, :cond_8

    if-ne p1, v5, :cond_1

    .line 1024
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryVisible(Z)V

    goto :goto_0
.end method

.method protected updateSecondaryBanner(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton()V

    .line 782
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryIcon()V

    .line 783
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVideoBanner()V

    .line 784
    return-void
.end method

.method protected updateSecondaryButton()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 839
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v7, v11, v8}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 840
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 842
    .local v3, "canSwap":Z
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 843
    .local v2, "canMerge":Z
    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 844
    .local v1, "canManageConference":Z
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    .line 846
    .local v5, "isConference":Z
    const-string v7, "support_merge_call"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 847
    const/4 v2, 0x0

    .line 849
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

    .line 852
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 853
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 854
    :cond_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 855
    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 865
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 866
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 867
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->hideConferenceCallManager()V

    .line 869
    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v11, 0x9

    if-eq v7, v11, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v11, 0xa

    if-ne v7, v11, :cond_c

    .line 870
    :cond_7
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v7, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 857
    :cond_8
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v7, :cond_9

    .line 858
    iget-object v11, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_a

    move v7, v8

    :goto_2
    invoke-virtual {v11, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 860
    :cond_9
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v7, :cond_5

    .line 861
    iget-object v11, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v2, :cond_b

    move v7, v8

    :goto_3
    invoke-virtual {v11, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_a
    move v7, v9

    .line 858
    goto :goto_2

    :cond_b
    move v7, v9

    .line 861
    goto :goto_3

    .line 872
    :cond_c
    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    move v6, v10

    .line 873
    .local v6, "showManageButton":Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    if-nez v7, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v9, :cond_e

    move v4, v10

    .line 874
    .local v4, "enableManageButton":Z
    :goto_5
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_f

    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 875
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 876
    if-nez v4, :cond_10

    .line 877
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f014b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .end local v4    # "enableManageButton":Z
    .end local v6    # "showManageButton":Z
    :cond_d
    move v6, v8

    .line 872
    goto :goto_4

    .restart local v6    # "showManageButton":Z
    :cond_e
    move v4, v8

    .line 873
    goto :goto_5

    .restart local v4    # "enableManageButton":Z
    :cond_f
    move v8, v9

    .line 874
    goto :goto_6

    .line 879
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

    .prologue
    .line 236
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a052f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method
