.class public Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;
.super Lcom/android/incallui/fragment/AnswerImageFragment;
.source "AnswerThreeWidgetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnswerThreeWidgetFragment"


# instance fields
.field private mAnswerAsHideButton:Landroid/widget/Button;

.field private mAnswerAsShowButton:Landroid/widget/Button;

.field private mCanAddView:Z

.field private mContainer:Landroid/view/ViewGroup;

.field protected mHasNavigationBar:Z

.field private mIncomingCallImageWidgetBackground:Landroid/view/View;

.field private mIncomingCallImageWidgetContainer:Landroid/view/View;

.field private mIncomingHideShowContainer:Landroid/view/ViewGroup;

.field private mIncomingHideShowView:Landroid/view/View;

.field private mIncomingHideShowViewStub:Landroid/view/ViewStub;

.field private mIsAnsweringState:Z

.field private mIsDeviceLandScape:Z

.field private mIsEnoughSpace:Z

.field private mIsNormalWindow:Z

.field private mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

.field private mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

.field private mhideShowMeFloatingButtonView:Landroid/view/View;

.field private mtopAreaMinHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    .line 83
    return-void
.end method

.method private answerAsVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 350
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateButtonsToAnswerAsShowOrHide()V

    .line 359
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->incomingCall_answerVideo()V

    .line 360
    return-void

    .line 353
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0
.end method

.method private answerAsVoice()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 346
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->incomingCall_answerVoice()V

    .line 347
    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0
.end method

.method private disableButtonAnswerAsShowOrHide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 457
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->setAnsweringState(Z)V

    .line 458
    return-void
.end method

.method private getCallCardHeight()I
    .locals 5

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a033e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 541
    .local v1, "callStateHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 542
    .local v2, "callStateTopMargin":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0341

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 544
    .local v0, "callInfoHeight":I
    add-int v3, v1, v2

    add-int/2addr v3, v0

    return v3
.end method

.method private inflateHideShowMeFloatingButton(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowHideShowMeFloatingButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 551
    :cond_0
    const v0, 0x7f1001f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    .line 552
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    const v1, 0x7f100449

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    .line 558
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButtonLayout()V

    .line 564
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0
.end method

.method private inflateIncomingHideShowLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 472
    const v0, 0x7f1001f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    .line 473
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 478
    const v0, 0x7f100395

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    .line 479
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f100398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    .line 480
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f100397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    .line 483
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 487
    :cond_1
    return-void
.end method

.method private isEnoughSpace()Z
    .locals 5

    .prologue
    .line 510
    const/4 v1, 0x1

    .line 511
    .local v1, "isEnough":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    .line 512
    .local v2, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    iget-object v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v0, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    .line 513
    .local v0, "bgHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_0

    .line 514
    const/4 v1, 0x0

    .line 516
    :cond_0
    return v1
.end method

.method private needToReInflateLayout()Z
    .locals 6

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    .line 656
    .local v0, "oldIsEnoughSpace":Z
    iget-boolean v2, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    .line 657
    .local v2, "oldIsThreeWidget":Z
    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    .line 658
    .local v1, "oldIsNormalWindow":Z
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    .line 659
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    .line 660
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    .line 661
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    if-ne v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eq v3, v1, :cond_4

    .line 662
    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-eq v3, v0, :cond_1

    .line 663
    const-string v3, "AnswerThreeWidgetFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToReInflateLayout isEnoughSpace "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_1
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    if-eq v3, v2, :cond_2

    .line 665
    const-string v3, "AnswerThreeWidgetFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToReInflateLayout isThreeWidget "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_2
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eq v3, v1, :cond_3

    .line 667
    const-string v3, "AnswerThreeWidgetFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToReInflateLayout isNormalWindow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_3
    const/4 v3, 0x1

    .line 671
    :goto_0
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private needToShowBackground()Z
    .locals 6

    .prologue
    .line 524
    const/4 v2, 0x1

    .line 525
    .local v2, "needToShow":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    .line 526
    .local v1, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 527
    iget-object v3, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 528
    .local v0, "big":Lcom/android/incallui/util/VideoTemplate;
    iget v3, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v4

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 529
    const/4 v2, 0x0

    .line 536
    .end local v0    # "big":Lcom/android/incallui/util/VideoTemplate;
    :cond_0
    :goto_0
    return v2

    .line 532
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private needToShowHideShowMeFloatingButton()Z
    .locals 1

    .prologue
    .line 647
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowThreeWidget()Z
    .locals 1

    .prologue
    .line 520
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showIncomingHideShowLayout(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private toggleHideShowMeFloatingButton()V
    .locals 2

    .prologue
    .line 627
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    const v1, 0x7f0900c4

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 629
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const/4 v0, 0x4

    .line 634
    .local v0, "callState":I
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 635
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->hideMe(I)V

    .line 637
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 642
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0

    .line 639
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->showMe(I)V

    .line 640
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateButtonsToAnswerAsShowOrHide()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 437
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->setAnsweringState(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 439
    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .line 443
    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    .line 447
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showIncomingHideShowLayout(Z)V

    .line 448
    return-void
.end method


# virtual methods
.method protected addAnswerFragmentView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 133
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    if-nez v3, :cond_0

    .line 134
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : AnswerFragment view can not be added."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 139
    .local v2, "topView":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->removeAnswerFragmentView()V

    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateAnswerFragmentView()Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    .line 143
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : AnswerFragment view is null."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 146
    :cond_1
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->onFinishInflate(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, p0}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerUi;)V

    .line 150
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showAnswerUi(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    .line 152
    .local v0, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    goto :goto_0

    .line 154
    .end local v0    # "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    .end local v1    # "parent":Landroid/view/View;
    :cond_2
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : Top view is null."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public enableButtonAnswerAsShowOrHide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 462
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "enableButtonAnswerAsShowOrHide "

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    :cond_1
    return-void
.end method

.method protected inflateAnswerFragmentView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 110
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "inflateAnswerFragmentView : Activity is null."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    :goto_0
    return-object v1

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 115
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "inflateAnswerFragmentView : View container is null."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 122
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    .line 123
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eqz v3, :cond_2

    .line 124
    const v3, 0x7f04009c

    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    goto :goto_0

    .line 126
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    const v3, 0x7f04009d

    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method public isAnsweringState()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    return v0
.end method

.method protected isNormalWindow()Z
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowIncomingHideShowLayout()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 496
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 365
    .local v0, "id":I
    const-string v1, "AnswerThreeWidgetFragment"

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

    .line 366
    sparse-switch v0, :sswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 368
    :sswitch_0
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "answer as hide!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    .line 373
    :sswitch_1
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "answer as show!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 374
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    .line 375
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    .line 378
    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->toggleHideShowMeFloatingButton()V

    goto :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100397 -> :sswitch_1
        0x7f100398 -> :sswitch_0
        0x7f100449 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    move-object v3, v0

    .line 263
    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    .line 264
    .local v2, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    .line 265
    .local v1, "isDeviceLandScape":Z
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    if-eq v3, v1, :cond_0

    .line 266
    const-string v3, "AnswerThreeWidgetFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    invoke-static {v0, v1}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    .line 272
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "onCreateView..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    .line 91
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    .line 92
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    .line 93
    iput-object p2, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    .line 94
    const v0, 0x7f0400bc

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->removeAnswerFragmentView()V

    .line 255
    invoke-super {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->onDestroyView()V

    .line 256
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    move-object v7, v0

    .line 212
    check-cast v7, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v6

    .line 213
    .local v6, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v2

    .line 214
    .local v2, "isDeviceLandScape":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    .line 216
    .local v3, "isNormalWindow":Z
    if-eqz v3, :cond_0

    .line 217
    invoke-static {v0, v2}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    .line 220
    :cond_0
    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f00dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v8, 0x7f020301

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 223
    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 224
    .local v1, "alpha":Landroid/graphics/drawable/Drawable;
    const/16 v7, 0x14

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 225
    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a048e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 227
    .local v5, "margin":I
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 228
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 229
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a048f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 234
    :goto_0
    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    const v7, 0x7f1001f1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    .line 237
    const v7, 0x7f1001ee

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    .line 239
    sget-boolean v7, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v7, :cond_1

    .line 240
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateIncomingHideShowLayout(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isAnsweringState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateButtonsToAnswerAsShowOrHide()V

    .line 245
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateHideShowMeFloatingButton(Landroid/view/View;)V

    .line 247
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 248
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 249
    return-void

    .line 232
    :cond_2
    const/4 v7, -0x1

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onMultiWindowModeChanged(Z)V

    .line 278
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    .line 282
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    const/4 v3, 0x1

    .line 311
    const-string v0, "AnswerThreeWidgetFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger(whichHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    packed-switch p2, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 315
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_HANDLE: answer as voice!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 317
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVoice()V

    goto :goto_0

    .line 319
    :cond_0
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_HANDLE: answer as video!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVideo()V

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_TOP_HANDLE: answer as video!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVideo()V

    goto :goto_0

    .line 330
    :pswitch_2
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "RIGHT_HANDLE: reject!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    .line 332
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_decline()V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2
    .param p1, "metrics"    # Lcom/android/incallui/service/vt/VideoCallMetrics;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0501

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    .line 288
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateIncomingCallWidgetLayout()V

    .line 293
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButtonLayout()V

    goto :goto_0
.end method

.method public onVideoCallUiEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 299
    packed-switch p1, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 302
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/AnswerImageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0501

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    .line 104
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    .line 105
    return-void
.end method

.method protected removeAnswerFragmentView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 159
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 160
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 163
    .local v0, "topView":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_7

    .line 164
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    .line 168
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 169
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v5, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 170
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 171
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    .line 172
    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->unregisterDetector()V

    .line 177
    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v1, :cond_3

    .line 180
    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 187
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    .line 190
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_6
    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    .line 195
    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAlreadyAnimationProcessing:Z

    .line 196
    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnswerAnimationRunning:Z

    .line 197
    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    .line 199
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "removeAnswerFragmentView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showAnswerUi(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, p0}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerUi;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_7
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "removeAnswerFragmentView : Top view is null."

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setAnsweringState(Z)V
    .locals 0
    .param p1, "isAnsweringState"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    .line 503
    return-void
.end method

.method public updateHideShowMeFloatingButton()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 571
    :cond_0
    return-void

    .line 569
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateHideShowMeFloatingButtonLayout()V
    .locals 15

    .prologue
    .line 574
    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v12, :cond_4

    .line 575
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowHideShowMeFloatingButton()Z

    move-result v8

    .line 576
    .local v8, "needToShow":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v6

    .line 577
    .local v6, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    .line 579
    .local v4, "isNormalLandscape":Z
    :goto_0
    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v12}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 580
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v11, -0x1

    .line 581
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0029

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v1, v12

    .line 582
    .local v1, "bottomMargin":I
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowBackground()Z

    move-result v12

    if-nez v12, :cond_1

    .line 583
    :cond_0
    const/4 v1, 0x0

    .line 586
    :cond_1
    if-eqz v4, :cond_6

    .line 587
    const/4 v11, -0x2

    .line 588
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a04fd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v9, v12

    .line 589
    .local v9, "offset":I
    iget-object v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v12}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 590
    .local v0, "big":Lcom/android/incallui/util/VideoTemplate;
    iget v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v13, v9

    sub-int v2, v12, v13

    .line 591
    .local v2, "endMargin":I
    if-lez v2, :cond_3

    .line 592
    iget-boolean v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    if-eqz v12, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v7

    .line 594
    .local v7, "navigationBarWidth":I
    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 595
    add-int/2addr v2, v7

    .line 598
    .end local v7    # "navigationBarWidth":I
    :cond_2
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 600
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getCallCardHeight()I

    move-result v12

    add-int v10, v12, v9

    .line 601
    .local v10, "topMargin":I
    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 617
    .end local v0    # "big":Lcom/android/incallui/util/VideoTemplate;
    .end local v2    # "endMargin":I
    .end local v9    # "offset":I
    .end local v10    # "topMargin":I
    :goto_1
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 618
    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v12, v5}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    iget-object v13, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_9

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v13, v12}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 620
    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_4

    .line 621
    iget-object v13, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_a

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 624
    .end local v1    # "bottomMargin":I
    .end local v4    # "isNormalLandscape":Z
    .end local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    .end local v8    # "needToShow":Z
    .end local v11    # "width":I
    :cond_4
    return-void

    .line 577
    .restart local v6    # "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    .restart local v8    # "needToShow":Z
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 603
    .restart local v1    # "bottomMargin":I
    .restart local v4    # "isNormalLandscape":Z
    .restart local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v11    # "width":I
    :cond_6
    iget-object v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v12, v12, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    add-int/2addr v1, v12

    .line 604
    const/4 v3, 0x0

    .line 605
    .local v3, "floatingButtonHeight":I
    if-eqz v8, :cond_7

    .line 606
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v3, v12

    .line 609
    :cond_7
    if-eqz v6, :cond_8

    iget v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    add-int v13, v1, v3

    iget v14, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    add-int/2addr v13, v14

    if-gt v12, v13, :cond_8

    .line 610
    const/4 v8, 0x0

    .line 613
    :cond_8
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 614
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 619
    .end local v3    # "floatingButtonHeight":I
    :cond_9
    const/16 v12, 0x8

    goto :goto_2

    .line 621
    :cond_a
    const/16 v12, 0x8

    goto :goto_3
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 388
    const-string v6, "AnswerThreeWidgetFragment"

    const-string v7, "updateIncomingCallWidgetLayout : Activity is null."

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    .line 394
    .local v3, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    iget-object v6, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v1, v6, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    .line 395
    .local v1, "height":I
    iget-boolean v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-nez v6, :cond_2

    .line 396
    if-eqz v3, :cond_2

    .line 397
    iget v6, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    sub-int v1, v6, v7

    .line 401
    :cond_2
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 402
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 403
    .local v0, "containerLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    if-eqz v6, :cond_6

    .line 404
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v4

    .line 405
    .local v4, "navigationBarWidth":I
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 406
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 407
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 419
    .end local v4    # "navigationBarWidth":I
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    .end local v0    # "containerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowBackground()Z

    move-result v5

    .line 424
    .local v5, "needToShowBackground":Z
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    .local v2, "incomingWidgetBgLP":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 426
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    if-nez v5, :cond_7

    .line 428
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 429
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200d2

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 408
    .end local v2    # "incomingWidgetBgLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "needToShowBackground":Z
    .restart local v0    # "containerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "navigationBarWidth":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 409
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 410
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 412
    :cond_5
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 413
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 416
    .end local v4    # "navigationBarWidth":I
    :cond_6
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 417
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 431
    .end local v0    # "containerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "incomingWidgetBgLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "needToShowBackground":Z
    :cond_7
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0092

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method
