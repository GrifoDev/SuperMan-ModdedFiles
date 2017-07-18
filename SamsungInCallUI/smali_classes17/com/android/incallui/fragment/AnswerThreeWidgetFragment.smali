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

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    return-void
.end method

.method private answerAsVideo()V
    .locals 3

    const/4 v2, 0x3

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateButtonsToAnswerAsShowOrHide()V

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->incomingCall_answerVideo()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0
.end method

.method private answerAsVoice()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->incomingCall_answerVoice()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0
.end method

.method private disableButtonAnswerAsShowOrHide()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->setAnsweringState(Z)V

    return-void
.end method

.method private getCallCardHeight()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a033a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a033d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    add-int v3, v1, v2

    add-int/2addr v3, v0

    return v3
.end method

.method private inflateHideShowMeFloatingButton(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowHideShowMeFloatingButton()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f1001f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    const v1, 0x7f10045b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButtonLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0
.end method

.method private inflateIncomingHideShowLayout(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f1001f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v0, 0x7f1003a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f1003a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f1003a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private isEnoughSpace()Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    iget-object v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v0, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private needToReInflateLayout()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    iget-boolean v2, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    if-ne v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eq v3, v1, :cond_4

    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-eq v3, v0, :cond_1

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

    :cond_1
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    if-eq v3, v2, :cond_2

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

    :cond_2
    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eq v3, v1, :cond_3

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

    :cond_3
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private needToShowBackground()Z
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

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

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private needToShowHideShowMeFloatingButton()Z
    .locals 1

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

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

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

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0900c6

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->hideMe(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->showMe(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateButtonsToAnswerAsShowOrHide()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->setAnsweringState(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showIncomingHideShowLayout(Z)V

    return-void
.end method


# virtual methods
.method protected addAnswerFragmentView()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    if-nez v3, :cond_0

    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : AnswerFragment view can not be added."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->removeAnswerFragmentView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateAnswerFragmentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : AnswerFragment view is null."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, p0}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerUi;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    goto :goto_0

    :cond_2
    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "addAnswerFragmentView : Top view is null."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public enableButtonAnswerAsShowOrHide()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "enableButtonAnswerAsShowOrHide "

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected inflateAnswerFragmentView()Landroid/view/View;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "inflateAnswerFragmentView : Activity is null."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    const-string v3, "AnswerThreeWidgetFragment"

    const-string v4, "inflateAnswerFragmentView : View container is null."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsNormalWindow:Z

    if-eqz v3, :cond_2

    const v3, 0x7f04009c

    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v3, 0x7f04009d

    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isAnsweringState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    return v0
.end method

.method protected isNormalWindow()Z
    .locals 1

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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

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

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

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

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "answer as hide!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    :sswitch_1
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "answer as show!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->toggleHideShowMeFloatingButton()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1003a2 -> :sswitch_1
        0x7f1003a3 -> :sswitch_0
        0x7f10045b -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsDeviceLandScape:Z

    if-eq v3, v1, :cond_0

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "onCreateView..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsThreeWidget:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    iput-object p2, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0400bc

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->removeAnswerFragmentView()V

    invoke-super {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v2}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_0
    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f00dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v8, 0x7f020314

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v7, 0x14

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0494

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0495

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    iget-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f1001f1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    const v7, 0x7f1001ee

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    sget-boolean v7, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v7, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateIncomingHideShowLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isAnsweringState()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateButtonsToAnswerAsShowOrHide()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->inflateHideShowMeFloatingButton(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    return-void

    :cond_2
    const/4 v7, -0x1

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

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

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowThreeWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_HANDLE: answer as voice!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVoice()V

    goto :goto_0

    :cond_0
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_HANDLE: answer as video!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVideo()V

    goto :goto_0

    :pswitch_1
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "LEFT_TOP_HANDLE: answer as video!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->answerAsVideo()V

    goto :goto_0

    :pswitch_2
    const-string v0, "AnswerThreeWidgetFragment"

    const-string v1, "RIGHT_HANDLE: reject!"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_decline()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsEnoughSpaceForAnswer(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateIncomingCallWidgetLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButtonLayout()V

    goto :goto_0
.end method

.method public onVideoCallUiEvent(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateHideShowMeFloatingButton()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/AnswerImageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mCanAddView:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->addAnswerFragmentView()V

    return-void
.end method

.method protected removeAnswerFragmentView()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v5, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->unregisterDetector()V

    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v1, :cond_3

    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iput-object v4, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnswerAnimationRunning:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "removeAnswerFragmentView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, p0}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerUi;)V

    :goto_0
    return-void

    :cond_7
    const-string v1, "AnswerThreeWidgetFragment"

    const-string v2, "removeAnswerFragmentView : Top view is null."

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setAnsweringState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsAnsweringState:Z

    return-void
.end method

.method public updateHideShowMeFloatingButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateHideShowMeFloatingButtonLayout()V
    .locals 15

    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v12, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowHideShowMeFloatingButton()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isNormalWindow()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    :goto_0
    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v12}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v11, -0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0029

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v1, v12

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->isEnoughSpace()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowBackground()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-eqz v4, :cond_6

    const/4 v11, -0x2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0508

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v9, v12

    iget-object v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v12}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    iget v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v13, v9

    sub-int v2, v12, v13

    if-lez v2, :cond_3

    iget-boolean v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v12

    if-eqz v12, :cond_2

    add-int/2addr v2, v7

    :cond_2
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getCallCardHeight()I

    move-result v12

    add-int v10, v12, v9

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v12, v5}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButtonStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_9

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v13, v12}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_4

    iget-object v13, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mhideShowMeFloatingButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_a

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v12, v12, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    add-int/2addr v1, v12

    const/4 v3, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00c7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v3, v12

    :cond_7
    if-eqz v6, :cond_8

    iget v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    add-int v13, v1, v3

    iget v14, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    add-int/2addr v13, v14

    if-gt v12, v13, :cond_8

    const/4 v8, 0x0

    :cond_8
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_9
    const/16 v12, 0x8

    goto :goto_2

    :cond_a
    const/16 v12, 0x8

    goto :goto_3
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "AnswerThreeWidgetFragment"

    const-string v7, "updateIncomingCallWidgetLayout : Activity is null."

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    iget-object v6, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v1, v6, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    iget-boolean v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIsEnoughSpace:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    iget v6, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v7, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mtopAreaMinHeight:I

    sub-int v1, v6, v7

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mHasNavigationBar:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v6

    if-eqz v6, :cond_4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetContainer:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->needToShowBackground()Z

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v5, :cond_7

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200dc

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v6

    if-eqz v6, :cond_5

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_5
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_6
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

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
