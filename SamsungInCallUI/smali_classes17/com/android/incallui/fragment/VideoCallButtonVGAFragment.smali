.class public Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonFragment;
.source "VideoCallButtonVGAFragment.java"

# interfaces
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAFragment"


# instance fields
.field protected mAcceptButton:Landroid/widget/Button;

.field protected mAcceptButtonContainer:Landroid/view/View;

.field protected mButtonWrapper:Landroid/view/View;

.field private mContainer:Landroid/view/ViewGroup;

.field protected mCurrentSecondaryCallName:Ljava/lang/String;

.field protected mDeclineButton:Landroid/widget/Button;

.field protected mDeclineButtonContainer:Landroid/view/View;

.field protected mHasNavigationBar:Z

.field protected mHideShowMeButton:Landroid/widget/ToggleButton;

.field protected mHideShowMeButtonViewStub:Landroid/view/ViewStub;

.field private mHoldCallBanner:Landroid/view/View;

.field private mHoldCallBannerStub:Landroid/view/ViewStub;

.field private mHoldCallBannerText:Landroid/widget/TextView;

.field private mHoldCallBannerView:Landroid/view/View;

.field protected mIsFullScreenMode:Z

.field protected mIsPlayingCaptureAnimation:Z

.field protected mIsReadyToShowView:Z

.field protected mIsVoWifiEndButton:Z

.field protected mModifyCallButtonView:Landroid/view/View;

.field protected mModifyCallButtonViewStub:Landroid/view/ViewStub;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsVoWifiEndButton:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    return-void
.end method

.method private inflateHoldCallBanner()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10038e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    const v1, 0x7f1003c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    const v1, 0x7f1003c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private setButtonLayout(Z)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v5, "VideoCallButtonVGAFragment"

    const-string v7, "setButtonLayout : Activity is null."

    invoke-static {v5, v7, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    check-cast v5, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_2

    iget v1, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v1, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height_with_offset:I

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v5

    if-eqz v5, :cond_7

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    iget-object v8, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v8, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v0, v6}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateVideoCallButtonBackground(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonAreaVisibility(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v8, 0x7f0d0000

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v5, v1

    div-int/lit16 v1, v5, 0x3e8

    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    if-ge v1, v5, :cond_1

    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v1, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v5

    if-eqz v5, :cond_8

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_8
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    :cond_9
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    :cond_a
    iget-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    if-nez v5, :cond_b

    move v5, v6

    :goto_4
    invoke-static {v0, v5}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    goto :goto_3

    :cond_b
    move v5, v7

    goto :goto_4
.end method

.method private updateHoldCallBanner()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v7, v4, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const-string v7, "VideoCallButtonVGAFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateHoldCallBanner secondary "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getCurrentSecondaryCallName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "Other party"

    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-static {v4, v3}, Lcom/android/incallui/util/VideoAnimator;->setSecondaryBannerFullScreen(Landroid/view/View;Z)V

    :cond_3
    return-void

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateVideoCallButtonBackground(Z)V
    .locals 9

    const v8, 0x7f0f019e

    const v6, 0x106000d

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    if-ne v3, v0, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallUtils;->isVGA(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200d2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected addButtonFragmentView()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->inflateButtonFragmentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView : ButtonFragment view is null."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonUi;)V

    goto :goto_0

    :cond_1
    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView : Top view is null."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    return-void
.end method

.method protected arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V
    .locals 8

    const-string v5, "VideoCallButtonVGAFragment"

    const-string v6, "arrangeModifyButtonLayoutForNavigator"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "VideoCallButtonVGAFragment"

    const-string v6, "arrangeModifyButtonLayoutForNavigator : Activity is null."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    add-int/2addr v5, v4

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v3}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected checkAndHandleCancelButton(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected clickedHideMe()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_hideMe()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    return-void
.end method

.method protected clickedShowMe()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_showMe()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900c4

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_0
.end method

.method protected enableModifyCallButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected enableSwitchCamera(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "VideoCallButtonVGAFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableSwitchCamera enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsPlayingCaptureAnimation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    move p1, v3

    :goto_0
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v3, "VideoCallButtonVGAFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableSwitchCamera isHold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected inflateButtonFragmentView()Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "inflateButtonFragmentView : Activity is null."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    const-string v3, "inflateButtonFragmentView : View container is null."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f04011b

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f04011c

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v3, 0x7f04011a

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected inflateHideShowMeButtonStub(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f100386

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f1003c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    return-void
.end method

.method protected needToEnableHideShowMeButton()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method protected needToEnableSpeakerButton()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected needToMultiWindowLayout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v2, "Accept MocifyCall TwoWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_accept(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "Stay on Voice Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_decline(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedHideMe()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedShowMe()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1003c4 -> :sswitch_2
        0x7f1003d1 -> :sswitch_0
        0x7f1003d3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0400bc

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getCallCounts()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v1, "EndCall Clicked on last call"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonIndicatorArea()V

    const v0, 0x7f100377

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const v0, 0x7f100378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const v0, 0x7f100385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateFullscreenMode(Z)V

    const v0, 0x7f10037b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f10009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f100097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f10037c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f100096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateMuteButton()V

    :cond_4
    const v0, 0x7f10037d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateSpeakerButton()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f100380

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x7f100384

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->inflateHoldCallBanner()V

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onMultiWindowModeChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->addButtonFragmentView()V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 3

    const-string v0, "VideoCallButtonVGAFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiVisibilityChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :sswitch_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->addButtonFragmentView()V

    return-void
.end method

.method protected removeButtonFragmentView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsVoWifiEndButton:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    const-string v1, "VideoCallButtonVGAFragment"

    const-string v2, "removeButtonFragmentView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonUi;)V

    return-void

    :cond_7
    const-string v1, "VideoCallButtonVGAFragment"

    const-string v2, "removeAnswerFragmentView : Top view is null."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToEnableSpeakerButton()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateSpeakerButton()V

    return-void
.end method

.method protected updateButtonAreaVisibility(Z)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isHeightSmallerThanWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateButtonsAsVideoState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonsAsVideoState(IZ)V

    return-void
.end method

.method public updateButtonsAsVideoState(IZ)V
    .locals 3

    const-string v0, "VideoCallButtonVGAFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtonsAsVideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoState:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateGeneralButtons(I)V

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoState:I

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateModifyReceiveVoiceToVideo()V

    goto :goto_1
.end method

.method public updateButtonsAsVideoState(Lcom/android/incallui/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonsAsVideoState(I)V

    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFullscreenMode(Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "VideoCallButtonVGAFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFullscreenMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "VideoCallButtonVGAFragment"

    const-string v5, "updateFullscreenMode : Activity is null."

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    iget-object v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v8, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iget-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    if-eq v3, p1, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v8, p1, v3}, Lcom/android/incallui/util/VideoAnimator;->setButtonFullScreen(Landroid/view/View;Landroid/view/View;IZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v4

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, v4}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHoldCallBanner()V

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    :goto_4
    invoke-static {v0, v4}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4
.end method

.method protected updateGeneralButtons(I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateHideShowMeButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToEnableHideShowMeButton()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateModifyReceiveVoiceToVideo()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VideoCallButtonVGAFragment"

    const-string v1, "updateModifyReceiveVoiceToVideo"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableModifyCallButtons(Z)V

    return-void
.end method
