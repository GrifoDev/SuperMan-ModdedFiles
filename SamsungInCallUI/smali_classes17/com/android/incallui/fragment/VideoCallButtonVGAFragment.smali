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

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    .line 83
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    .line 84
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    .line 85
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    .line 91
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsVoWifiEndButton:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    return-void
.end method

.method private inflateHoldCallBanner()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10038e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    .line 667
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    const v1, 0x7f1003c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    .line 673
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    const v1, 0x7f1003c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    .line 675
    :cond_1
    return-void
.end method

.method private setButtonLayout(Z)V
    .locals 9
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 522
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 523
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 524
    const-string v5, "VideoCallButtonVGAFragment"

    const-string v7, "setButtonLayout : Activity is null."

    invoke-static {v5, v7, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 586
    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    .line 527
    check-cast v5, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    .line 528
    .local v3, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    if-eqz v3, :cond_4

    .line 529
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 530
    iget v1, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    .line 531
    .local v1, "blendEffectHeight":I
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 532
    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v1, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height_with_offset:I

    .line 539
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 540
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 542
    iget-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    if-eqz v5, :cond_9

    .line 543
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v4

    .line 544
    .local v4, "navigationBarWidth":I
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 545
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 546
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 558
    .end local v4    # "navigationBarWidth":I
    :goto_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    .end local v1    # "blendEffectHeight":I
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 562
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 563
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 564
    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 565
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 569
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 570
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    iget-object v8, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v8, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 571
    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 572
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v5

    if-nez v5, :cond_5

    .line 577
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 578
    invoke-static {v0, v6}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    .line 584
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateVideoCallButtonBackground(Z)V

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonAreaVisibility(Z)V

    goto/16 :goto_0

    .line 534
    .restart local v1    # "blendEffectHeight":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v8, 0x7f0d0000

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v5, v1

    div-int/lit16 v1, v5, 0x3e8

    .line 535
    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    if-ge v1, v5, :cond_1

    .line 536
    iget-object v5, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v1, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    goto/16 :goto_1

    .line 547
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "navigationBarWidth":I
    :cond_7
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 548
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 549
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 551
    :cond_8
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 552
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 555
    .end local v4    # "navigationBarWidth":I
    :cond_9
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 556
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 580
    .end local v1    # "blendEffectHeight":I
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
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

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 678
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 679
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    .line 680
    .local v0, "isFullScreen":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v7, v4, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 681
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
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

    .line 682
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    move v3, v5

    .line 683
    .local v3, "showHoldCallBanner":Z
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 684
    const/4 v3, 0x0

    .line 686
    :cond_0
    if-eqz v3, :cond_6

    .line 687
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getCurrentSecondaryCallName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 688
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 689
    const-string v4, "Other party"

    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 691
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 692
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-static {v4, v3}, Lcom/android/incallui/util/VideoAnimator;->setSecondaryBannerFullScreen(Landroid/view/View;Z)V

    .line 701
    .end local v0    # "isFullScreen":Z
    .end local v2    # "secondaryCall":Lcom/android/incallui/Call;
    .end local v3    # "showHoldCallBanner":Z
    :cond_3
    return-void

    .restart local v0    # "isFullScreen":Z
    .restart local v2    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_4
    move v4, v6

    .line 681
    goto :goto_0

    :cond_5
    move v3, v6

    .line 682
    goto :goto_1

    .line 697
    .restart local v3    # "showHoldCallBanner":Z
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateVideoCallButtonBackground(Z)V
    .locals 9
    .param p1, "showDialpad"    # Z

    .prologue
    const v8, 0x7f0f019e

    const v6, 0x106000d

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 589
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 590
    .local v3, "orientaion":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v2

    .line 591
    .local v2, "needToMultiWindowLayout":Z
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 592
    if-eqz p1, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_2

    .line 593
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 598
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 599
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    .line 600
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 611
    :cond_1
    :goto_1
    return-void

    .line 595
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 602
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 603
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    .line 604
    .local v1, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    if-ne v3, v0, :cond_4

    if-nez v2, :cond_4

    .line 605
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallUtils;->isVGA(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 606
    .local v0, "isVGANormalPortrait":Z
    :goto_2
    if-nez v0, :cond_1

    .line 607
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200d2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 605
    .end local v0    # "isVGANormalPortrait":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected addButtonFragmentView()V
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 142
    .local v1, "topView":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->inflateButtonFragmentView()Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "parent":Landroid/view/View;
    if-nez v0, :cond_0

    .line 146
    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView : ButtonFragment view is null."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v0    # "parent":Landroid/view/View;
    :goto_0
    return-void

    .line 149
    .restart local v0    # "parent":Landroid/view/View;
    :cond_0
    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonUi;)V

    goto :goto_0

    .line 154
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView : Top view is null."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    .line 514
    return-void
.end method

.method protected arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V
    .locals 8
    .param p1, "view"    # Landroid/view/ViewStub;

    .prologue
    .line 704
    const-string v5, "VideoCallButtonVGAFragment"

    const-string v6, "arrangeModifyButtonLayoutForNavigator"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 706
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 707
    const-string v5, "VideoCallButtonVGAFragment"

    const-string v6, "arrangeModifyButtonLayoutForNavigator : Activity is null."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 721
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 710
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 711
    .local v1, "context":Landroid/content/Context;
    check-cast v0, Lcom/android/incallui/InCallActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    .line 712
    .local v2, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    .line 714
    .local v4, "softKeyHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 715
    iget-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v5

    if-nez v5, :cond_0

    .line 716
    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 717
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    add-int/2addr v5, v4

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 718
    invoke-virtual {p1, v3}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected checkAndHandleCancelButton(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 366
    if-eqz p1, :cond_3

    .line 367
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    .line 368
    .local v0, "videoState":I
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 376
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 379
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .end local v0    # "videoState":I
    :cond_3
    return-void
.end method

.method protected clickedHideMe()V
    .locals 0

    .prologue
    .line 324
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_hideMe()V

    .line 325
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 326
    return-void
.end method

.method protected clickedShowMe()V
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_showMe()V

    .line 330
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const v0, 0x7f0900c4

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_0
.end method

.method protected enableModifyCallButtons(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    :cond_1
    return-void
.end method

.method protected enableSwitchCamera(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 466
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

    .line 467
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    move p1, v3

    .line 469
    :goto_0
    if-eqz p1, :cond_6

    .line 470
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 471
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 482
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, v2

    .line 467
    goto :goto_0

    .line 472
    .restart local v0    # "call":Lcom/android/incallui/Call;
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

    .line 473
    .local v1, "isHold":Z
    :goto_2
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v4

    if-nez v4, :cond_5

    .line 474
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

    .line 475
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .end local v1    # "isHold":Z
    :cond_4
    move v1, v2

    .line 472
    goto :goto_2

    .line 477
    .restart local v1    # "isHold":Z
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 480
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "isHold":Z
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected inflateButtonFragmentView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 118
    const-string v3, "inflateButtonFragmentView : Activity is null."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 137
    :goto_0
    return-object v1

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 123
    const-string v3, "inflateButtonFragmentView : View container is null."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 128
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 129
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const v3, 0x7f04011b

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    const v3, 0x7f04011c

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_3
    const v3, 0x7f04011a

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected inflateHideShowMeButtonStub(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 206
    const v0, 0x7f100386

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    .line 207
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 208
    :cond_0
    const v0, 0x7f1003c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    .line 209
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    .line 214
    return-void
.end method

.method protected needToEnableHideShowMeButton()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, "isEnabled":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 340
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 342
    .local v1, "callState":I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 345
    .end local v1    # "callState":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "callState":I
    :cond_2
    move v2, v3

    .line 342
    goto :goto_0
.end method

.method protected needToEnableSpeakerButton()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "isEnabled":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 358
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 362
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 359
    goto :goto_0
.end method

.method protected needToMultiWindowLayout()Z
    .locals 1

    .prologue
    .line 624
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
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 292
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onClick(Landroid/view/View;)V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 295
    .local v1, "id":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 297
    .local v0, "call":Lcom/android/incallui/Call;
    sparse-switch v1, :sswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 299
    :sswitch_0
    const-string v2, "Accept MocifyCall TwoWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 300
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 303
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 304
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_accept(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 308
    :sswitch_1
    const-string v2, "Stay on Voice Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    .line 310
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_decline(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 313
    :sswitch_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedHideMe()V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedShowMe()V

    goto :goto_0

    .line 297
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
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    .line 274
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 103
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    .line 104
    const v0, 0x7f0400bc

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onDestroyView()V

    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    .line 267
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 3

    .prologue
    .line 657
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getCallCounts()I

    move-result v0

    .line 658
    .local v0, "callCounts":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 659
    const-string v1, "EndCall Clicked on last call"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 662
    :cond_0
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 160
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonIndicatorArea()V

    .line 162
    const v0, 0x7f100377

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    .line 163
    const v0, 0x7f100378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    .line 164
    const v0, 0x7f100385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    .line 165
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateFullscreenMode(Z)V

    .line 167
    const v0, 0x7f10037b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_0
    const v0, 0x7f10009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_1
    const v0, 0x7f100097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_2
    const v0, 0x7f10037c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    .line 175
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_3
    const v0, 0x7f100096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    .line 177
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateMuteButton()V

    .line 181
    :cond_4
    const v0, 0x7f10037d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 182
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateSpeakerButton()V

    .line 188
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    const v0, 0x7f100380

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_6
    const v0, 0x7f100384

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->inflateHoldCallBanner()V

    .line 197
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    .line 199
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    .line 201
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 202
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 203
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onMultiWindowModeChanged(Z)V

    .line 280
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

    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->addButtonFragmentView()V

    .line 282
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 286
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

    .line 287
    return-void
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 1
    .param p1, "metrics"    # Lcom/android/incallui/service/vt/VideoCallMetrics;

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    .line 653
    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    const/4 v1, 0x0

    .line 629
    sparse-switch p1, :sswitch_data_0

    .line 648
    :goto_0
    return-void

    .line 631
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    .line 632
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    .line 636
    :sswitch_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    .line 637
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    .line 642
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    goto :goto_0

    .line 629
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
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->addButtonFragmentView()V

    .line 113
    return-void
.end method

.method protected removeButtonFragmentView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 218
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 233
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4

    .line 237
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_5

    .line 241
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    .line 245
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_6
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    .line 249
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    .line 250
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsVoWifiEndButton:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 253
    .local v0, "topView":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_7

    .line 254
    const-string v1, "VideoCallButtonVGAFragment"

    const-string v2, "removeButtonFragmentView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonUi;)V

    .line 260
    return-void

    .line 257
    :cond_7
    const-string v1, "VideoCallButtonVGAFragment"

    const-string v2, "removeAnswerFragmentView : Top view is null."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    .line 519
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->setEnabled(Z)V

    .line 460
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

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    .line 462
    return-void

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateSpeakerButton()V

    .line 487
    return-void
.end method

.method protected updateButtonAreaVisibility(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 614
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    .line 616
    .local v0, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isHeightSmallerThanWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateButtonsAsVideoState(I)V
    .locals 1
    .param p1, "videoState"    # I

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonsAsVideoState(IZ)V

    .line 407
    return-void
.end method

.method public updateButtonsAsVideoState(IZ)V
    .locals 3
    .param p1, "videoState"    # I
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 410
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

    .line 411
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoState:I

    if-ne p1, v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateGeneralButtons(I)V

    .line 419
    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoState:I

    goto :goto_0

    .line 416
    :cond_4
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateModifyReceiveVoiceToVideo()V

    goto :goto_1
.end method

.method public updateButtonsAsVideoState(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonsAsVideoState(I)V

    .line 403
    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 386
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 396
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    .line 397
    return-void

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFullscreenMode(Z)V
    .locals 9
    .param p1, "isFullScreen"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 491
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

    .line 492
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 493
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 494
    const-string v3, "VideoCallButtonVGAFragment"

    const-string v5, "updateFullscreenMode : Activity is null."

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 509
    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    .line 497
    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    .line 498
    .local v2, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    iget-object v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v8, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iget-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    if-eq v3, p1, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v8, p1, v3}, Lcom/android/incallui/util/VideoAnimator;->setButtonFullScreen(Landroid/view/View;Landroid/view/View;IZZ)V

    .line 499
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v4

    .line 500
    .local v1, "isNormalWindow":Z
    :goto_2
    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 502
    invoke-static {v0, v4}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    .line 507
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHoldCallBanner()V

    .line 508
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    goto :goto_0

    .end local v1    # "isNormalWindow":Z
    :cond_2
    move v3, v5

    .line 498
    goto :goto_1

    :cond_3
    move v1, v5

    .line 499
    goto :goto_2

    .line 504
    .restart local v1    # "isNormalWindow":Z
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
    .param p1, "videoState"    # I

    .prologue
    const/16 v1, 0x8

    .line 423
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateHideShowMeButton()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 351
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

    .line 353
    :cond_0
    return-void

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateModifyReceiveVoiceToVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    const-string v0, "VideoCallButtonVGAFragment"

    const-string v1, "updateModifyReceiveVoiceToVideo"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 448
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableModifyCallButtons(Z)V

    .line 449
    return-void
.end method
