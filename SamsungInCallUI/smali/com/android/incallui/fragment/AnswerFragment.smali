.class public Lcom/android/incallui/fragment/AnswerFragment;
.super Lcom/android/incallui/BaseFragment;

# interfaces
.implements Lcom/android/incallui/AnswerUi;
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;
.implements Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerUi;",
        ">;",
        "Lcom/android/incallui/AnswerUi;",
        "Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;",
        "Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;",
        "Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;",
        "Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;"
    }
.end annotation


# static fields
.field protected static final EVENT_RESET_ANIM_DELAY:I = 0x1388

.field protected static final EVENT_RESET_ANSWER_ANIM:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String; = "AnswerFragment"

.field protected static final SET_TOP_OFFSET:I = 0x64

.field protected static final SET_TOP_OFFSET_DELAY:I = 0x3e8

.field public static final TARGET_SET_FOR_AUDIO_WITHOUT_SMS:I = 0x0

.field public static final TARGET_SET_FOR_AUDIO_WITH_SMS:I = 0x1

.field public static final TARGET_SET_FOR_VIDEO_ACCEPT_REJECT_REQUEST:I = 0x4

.field public static final TARGET_SET_FOR_VIDEO_WITHOUT_SMS:I = 0x2

.field public static final TARGET_SET_FOR_VIDEO_WITH_SMS:I = 0x3


# instance fields
.field private mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

.field protected mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mHandler:Landroid/os/Handler;

.field protected mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field protected mIsAlreadyAnimationProcessing:Z

.field protected mIsAnswerAnimationRunning:Z

.field protected mIsThreeWidget:Z

.field protected mMaskPanelForSlidingDrawer:Landroid/view/View;

.field public mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

.field protected mRejectCallWithMsgContentWidth:I

.field public mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/view/View;

.field protected mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

.field protected mRejectCallWithMsgTextView:Landroid/widget/TextView;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsThreeWidget:Z

    new-instance v0, Lcom/android/incallui/fragment/AnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/AnswerFragment$1;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/AnswerFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/AnswerFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/AnswerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/AnswerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/AnswerFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method private animateHideForMaskPanel()V
    .locals 5

    const-string v0, "AnswerFragment"

    const-string v1, "animateHideForMaskPanel"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$16;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$16;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 5

    const-string v0, "AnswerFragment"

    const-string v1, "animateShowForMaskPanel"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$15;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$15;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private isCheckAddReminder()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    move v0, v1

    :cond_2
    const-string v2, "support_spam_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    const-string v1, "AnswerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCheckAddReminder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isWaitingCallPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDescriptionToHandle(Landroid/view/View;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const v2, 0x7f090321

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const v2, 0x7f0902a9

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const v2, 0x7f0902a8

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addAgifPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->addAgifPage()V

    :cond_0
    return-void
.end method

.method public animateForAnswerCall(I)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsAlreadyAnimationProcessing:Z

    if-eqz v0, :cond_1

    const-string v0, "AnswerFragment"

    const-string v1, "animateForAnswerCall...already processing"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AnswerFragment"

    const-string v1, "Autoanswered so returning not showing animation..."

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AnswerFragment"

    const-string v1, "animateForAnswerCall...already running"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const-string v0, "AnswerFragment"

    const-string v1, "animateForAnswerCall..."

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/AnswerFragment;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$14;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$14;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v4, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsAnswerAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->animateForShrinkBackground(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->animateForAnswerCall()V

    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->animateForAnswerCall()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    goto/16 :goto_0
.end method

.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose()V

    :cond_0
    return-void
.end method

.method public configureMessageDialog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectMsgContent;->configureRejectMsgList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPendingDialogues()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    :cond_0
    return-void
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup(Z)V

    return-void
.end method

.method public dismissWaitingCallPopup(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903bb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    const-string v0, "AnswerFragment"

    const-string v1, "dismissWaitingCallPopup and make toast"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableButtonAnswerAsShowOrHide()V
    .locals 0

    return-void
.end method

.method protected getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCallforWithHardkey()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    div-int/lit8 v2, v0, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    div-int/lit8 v0, v0, 0x2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayWidth:I

    return v0
.end method

.method public getUi()Lcom/android/incallui/AnswerUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public isAlreadyAnimationProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsAlreadyAnimationProcessing:Z

    return v0
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsAnswerAnimationRunning:Z

    return v0
.end method

.method public isRejectCallWithMsgDrawerOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowIncomingHideShowLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    return-void
.end method

.method public onCancelWaitingCallPopup()V
    .locals 0

    return-void
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addContentViewChangeListener(Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "AnswerFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeContentViewChangeListener(Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "AnswerFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 5

    const v2, 0x7f090334

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "AnswerFragment"

    const-string v1, "onFinishInflate ..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f100268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v0, 0x7f10022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    const v0, 0x7f10007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v0, 0x7f10007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setLinearLayout(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTextView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/fragment/AnswerFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$2;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$3;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$4;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    const v0, 0x7f100269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    :cond_1
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const v0, 0x7f100078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const v0, 0x7f10022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RejectMsgContent;

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContent;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContent;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$5;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_4
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/AnswerFragment;->showAnswerUi(Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/AnswerFragment;->showRejectCallWithMessage(Z)V

    :cond_5
    return-void

    :cond_6
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090191

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f090193

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 5

    const/16 v4, 0x64

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onMultiWindowModeChanged(Z)V

    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->isAvailableAgifCallService(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContent;->showAgifList(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    const-string v4, "bike_mode"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    :cond_1
    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->isAvailableAgifCallService(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContent;->showAgifList(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onSelectAgifContents(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectMsgContent;->onSelectAgifContents(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public refreshAgifPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->refreshAgifPage()V

    :cond_0
    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->isCheckAddReminder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rejected_compose_message"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rejected_fullscreen"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rejectWithAnswerMemo()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AnswerFragment"

    const-string v1, "rejectWithAnswerMemo!"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->answeringMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowAgifImageView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/UiAdapter;->updateAgifContainer(Z)V

    :cond_2
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "AnswerFragment"

    const-string v1, "resetAnswerCallAnimator..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIsAnswerAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->resetAnswerCallAnimator()V

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->resetAnswerCallAnimator()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    return-void
.end method

.method public selectAgifPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectMsgContent;->selectAgifPage(I)V

    :cond_0
    return-void
.end method

.method public setDisplaySize()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayWidth:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayHeight:I

    const-string v0, "AnswerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplaySize getContentViewSize - mDisplayWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDisplayHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayHeight:I

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayWidth:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayHeight:I

    const-string v0, "AnswerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplaySize getDefaultDisplay - mDisplayWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDisplayHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment;->mDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDrawerTopOffset()V
    .locals 0

    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 3

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "AnswerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show answer UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->updateIncomingCallWidgetLayout()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    goto :goto_2
.end method

.method public showMessageDialog()V
    .locals 0

    return-void
.end method

.method public showQuoteMark(Z)V
    .locals 0

    return-void
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showTargets(I)V
    .locals 0

    return-void
.end method

.method public showTargets(II)V
    .locals 0

    return-void
.end method

.method public showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_0
    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "wating_calloption_invisible"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AnswerFragment"

    const-string v1, "showWaitingCallDialog : call answered without poup"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wating_calloption_hold"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p4}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "wating_calloption_end"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v2, p4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$12;

    invoke-direct {v2, p0, p4}, Lcom/android/incallui/fragment/AnswerFragment$12;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$13;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$13;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerFragment$6;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$7;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$8;

    invoke-direct {v2, p0, p5}, Lcom/android/incallui/fragment/AnswerFragment$8;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$9;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$10;

    invoke-direct {v2, p0, p5}, Lcom/android/incallui/fragment/AnswerFragment$10;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/fragment/AnswerFragment$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/AnswerFragment$11;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    return-void
.end method

.method protected updateNavigationBar()V
    .locals 0

    return-void
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 4

    const v2, 0x7f090334

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, v3}, Lcom/android/incallui/RejectMsgContent;->showAgifList(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->setDrawerTopOffset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090321

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/fragment/AnswerFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public updateSpamCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090191

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f090193

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, v3}, Lcom/android/incallui/RejectMsgContent;->showAgifList(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->setDrawerTopOffset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090321

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/fragment/AnswerFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    goto :goto_0
.end method
