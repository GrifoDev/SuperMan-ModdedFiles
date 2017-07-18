.class public Lcom/android/incallui/fragment/AnswerImageFragment;
.super Lcom/android/incallui/fragment/AnswerFragment;
.source "AnswerImageFragment.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;


# static fields
.field private static final DISPLAY_WIDTH:I = 0x2bc

.field private static final LOG_TAG:Ljava/lang/String; = "AnswerImageFragment"


# instance fields
.field private mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

.field protected mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIncomingCallImageWidgetBackground:Landroid/view/View;

.field protected mIsAlreadyAnimationProcessing:Z

.field protected mIsAnswerAnimationRunning:Z

.field protected mIsThreeWidget:Z

.field private mMaskPanelForSlidingDrawer:Landroid/view/View;

.field protected mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

.field protected mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/view/View;

.field protected mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

.field protected mRejectCallWithMsgTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsThreeWidget:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/AnswerImageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/AnswerImageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/AnswerImageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/AnswerImageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method private animateHideForMaskPanel()V
    .locals 6

    const-string v1, "AnswerImageFragment"

    const-string v2, "animateHideForMaskPanel"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/AnswerImageFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$5;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 6

    const-string v1, "AnswerImageFragment"

    const-string v2, "animateShowForMaskPanel"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/AnswerImageFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$4;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private isCheckAddReminder()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v1, "AnswerImageFragment"

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

.method private setDescriptionToHandle(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0902af

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f09023e

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f09023d

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setDrawerTopOffset()V
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-nez v4, :cond_0

    const-string v4, "AnswerImageFragment"

    const-string v5, "setDrawerTopOffset : mRejectCallWithMsgDrawer is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0492

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v4, 0x3

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTopOffset(I)V

    goto :goto_0
.end method

.method private updateMultiwindowChanged()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2bc

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setMultiwindowChanged(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setMultiwindowChanged(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setMultiwindowChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall(I)V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    if-eqz v2, :cond_1

    const-string v2, "AnswerImageFragment"

    const-string v3, "animateForAnswerCall...already processing"

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AnswerImageFragment"

    const-string v3, "Autoanswered so returning not showing animation..."

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AnswerImageFragment"

    const-string v3, "animateForAnswerCall...already running"

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsThreeWidget:Z

    if-eqz v2, :cond_0

    :cond_5
    const-string v2, "AnswerImageFragment"

    const-string v3, "animateForAnswerCall..."

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$6;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v6, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v6, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAnswerAnimationRunning:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->animateForShrinkBackground(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->animateForAnswerCall()V

    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallButtonUi;->animateForAnswerCall()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    goto/16 :goto_0
.end method

.method public arrangeIncomingHandle(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a010e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int v3, p1, v2

    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    :goto_0
    const-string v3, "AnswerImageFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrangeIncomingHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose()V

    :cond_0
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

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectMsgContent;->configureRejectMsgList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 7

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v3, "support_folder_single_lcd"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCallforWithHardkey()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    div-int/lit8 v4, v0, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0320

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    div-int/lit8 v3, v0, 0x2

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public isAlreadyAnimationProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    return v0
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAnswerAnimationRunning:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "AnswerImageFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateMultiwindowChanged()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDrawerTopOffset()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "AnswerImageFragment"

    const-string v2, "onCreateView..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f04009a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "AnswerImageFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->unregisterDetector()V

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    :cond_3
    invoke-super {p0}, Lcom/android/incallui/fragment/AnswerFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 7

    const/16 v4, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f1001ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateInComingCallLayout()V

    :cond_0
    const v2, 0x7f1001ee

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v2, 0x7f1001b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    const v2, 0x7f100070

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    const v2, 0x7f100071

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setLinearLayout(Landroid/widget/LinearLayout;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTextView(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$1;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$2;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$3;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    const v2, 0x7f1001f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v2, 0x7f10006e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const v2, 0x7f1001b3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/RejectMsgContent;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2, p0}, Lcom/android/incallui/RejectMsgContent;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2, p0}, Lcom/android/incallui/RejectMsgContent;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_6
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v6}, Lcom/android/incallui/fragment/AnswerImageFragment;->showAnswerUi(Z)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/AnswerImageFragment;->showRejectCallWithMessage(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateMultiwindowChanged()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDrawerTopOffset()V

    return-void

    :cond_8
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "AnswerImageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialTrigger(whichHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "AnswerImageFragment"

    const-string v2, "LEFT_HANDLE: answer!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleUserEvent(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->onTrigger(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAnswerAppLogging(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_answer()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :pswitch_1
    const-string v1, "AnswerImageFragment"

    const-string v2, "RIGHT_HANDLE: reject!"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleUserEvent(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->onTrigger(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;I)V

    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_decline()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartRejectAppLogging(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->isCheckAddReminder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rejected"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public rejectWithAnswerMemo()V
    .locals 3

    const-string v0, "AnswerImageFragment"

    const-string v1, "rejectWithAnswerMemo!"

    const/4 v2, 0x1

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
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_1
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "AnswerImageFragment"

    const-string v2, "resetAnswerCallAnimator..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    iput-boolean v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAnswerAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

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

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->resetAnswerCallAnimator()V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerFragment;->showAnswerUi(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateIncomingCallWidgetLayout()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    goto :goto_0
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

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

.method protected updateInComingCallLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    return-void
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
