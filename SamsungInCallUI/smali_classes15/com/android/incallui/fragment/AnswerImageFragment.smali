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

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsThreeWidget:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/AnswerImageFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/AnswerImageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/AnswerImageFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/AnswerImageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/AnswerImageFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/AnswerImageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/AnswerImageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/AnswerImageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/AnswerImageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method private animateHideForMaskPanel()V
    .locals 6

    .prologue
    .line 312
    const-string v1, "AnswerImageFragment"

    const-string v2, "animateHideForMaskPanel"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 320
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

    .line 321
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 322
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/AnswerImageFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$5;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 6

    .prologue
    .line 284
    const-string v1, "AnswerImageFragment"

    const-string v2, "animateShowForMaskPanel"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    .line 295
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

    .line 297
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 298
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/AnswerImageFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$4;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private isCheckAddReminder()Z
    .locals 4

    .prologue
    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "isCheck":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 254
    :cond_0
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 256
    const/4 v0, 0x0

    .line 259
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

    .line 260
    return v0
.end method

.method private setDescriptionToHandle(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "open"    # Z

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "contentDescription":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0902ae

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 342
    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    if-eqz p2, :cond_0

    .line 344
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f09023d

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 348
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 350
    return-void

    .line 346
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f09023c

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setDrawerTopOffset()V
    .locals 6

    .prologue
    .line 232
    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-nez v4, :cond_0

    .line 233
    const-string v4, "AnswerImageFragment"

    const-string v5, "setDrawerTopOffset : mRejectCallWithMsgDrawer is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a048e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 237
    .local v3, "topOffset":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 238
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 240
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 241
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 242
    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v4, 0x3

    .line 244
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTopOffset(I)V

    goto :goto_0
.end method

.method private updateInComingVideoCallLayout()V
    .locals 4

    .prologue
    .line 628
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-nez v1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 630
    .local v0, "Params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setBackgroundColor(I)V

    .line 631
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 636
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1
.end method

.method private updateMultiwindowChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 266
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 268
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 269
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 270
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v3, :cond_0

    .line 271
    iget v3, v2, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2bc

    if-ge v3, v4, :cond_1

    .line 272
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setMultiwindowChanged(Z)V

    .line 281
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    .line 274
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "size":Landroid/graphics/Point;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setMultiwindowChanged(Z)V

    goto :goto_0

    .line 279
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setMultiwindowChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall(I)V
    .locals 7
    .param p1, "videoState"    # I

    .prologue
    const/4 v6, 0x1

    .line 523
    iget-boolean v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    if-eqz v2, :cond_1

    .line 524
    const-string v2, "AnswerImageFragment"

    const-string v3, "animateForAnswerCall...already processing"

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    const-string v2, "AnswerImageFragment"

    const-string v3, "Autoanswered so returning not showing animation..."

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 534
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 535
    const-string v2, "AnswerImageFragment"

    const-string v3, "animateForAnswerCall...already running"

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 538
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 539
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 540
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 546
    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsThreeWidget:Z

    if-eqz v2, :cond_0

    .line 550
    :cond_5
    const-string v2, "AnswerImageFragment"

    const-string v3, "animateForAnswerCall..."

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 552
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$6;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 572
    iput-boolean v6, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    .line 573
    iput-boolean v6, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAnswerAnimationRunning:Z

    .line 574
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 575
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 576
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 577
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->animateForShrinkBackground(Z)V

    .line 579
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 580
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->animateForAnswerCall()V

    .line 582
    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 583
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallButtonUi;->animateForAnswerCall()V

    goto/16 :goto_0

    .line 542
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_7
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 543
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    goto/16 :goto_0
.end method

.method public arrangeIncomingHandle(I)V
    .locals 6
    .param p1, "margin"    # I

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a010e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 729
    .local v2, "radius":I
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 730
    .local v1, "minMarginBottom":I
    if-ge p1, v1, :cond_0

    .line 731
    move p1, v1

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 734
    .local v0, "marginLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    add-int v3, p1, v2

    iget-object v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 742
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

    .line 743
    return-void

    .line 737
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 738
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

    .line 739
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

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose()V

    .line 382
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

    .prologue
    .line 688
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectMsgContent;->configureRejectMsgList(Ljava/util/List;)V

    .line 690
    :cond_0
    return-void
.end method

.method protected getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 7
    .param p1, "videoState"    # I

    .prologue
    .line 600
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v3, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 602
    .local v0, "duration":I
    const-string v3, "support_folder_single_lcd"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCallforWithHardkey()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 604
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    div-int/lit8 v4, v0, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 610
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0320

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 612
    .local v2, "translationY":F
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 613
    .local v1, "moveAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 614
    div-int/lit8 v3, v0, 0x2

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 615
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 618
    .end local v0    # "duration":I
    .end local v1    # "moveAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "translationY":F
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v3

    .line 606
    .restart local v0    # "duration":I
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 607
    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public isAlreadyAnimationProcessing()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    return v0
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAnswerAnimationRunning:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 225
    const-string v0, "AnswerImageFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateMultiwindowChanged()V

    .line 228
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDrawerTopOffset()V

    .line 229
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f04009a

    const/4 v3, 0x0

    .line 96
    const-string v1, "AnswerImageFragment"

    const-string v2, "onCreateView..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "parent":Landroid/view/View;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const v1, 0x7f04009b

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    .line 108
    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 354
    const-string v0, "AnswerImageFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    .line 359
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 360
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 361
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    .line 362
    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->unregisterDetector()V

    .line 367
    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_3

    .line 370
    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    .line 373
    :cond_3
    invoke-super {p0}, Lcom/android/incallui/fragment/AnswerFragment;->onDestroyView()V

    .line 374
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    const v2, 0x7f1001ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 113
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    .line 115
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 116
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateInComingVideoCallLayout()V

    .line 122
    :cond_0
    :goto_0
    const v2, 0x7f1001ee

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    .line 124
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_1
    const v2, 0x7f1001b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .line 130
    const v2, 0x7f100070

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    .line 131
    const v2, 0x7f100071

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setLinearLayout(Landroid/widget/LinearLayout;)V

    .line 134
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTextView(Landroid/widget/TextView;)V

    .line 135
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    .line 136
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V

    .line 137
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$1;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    .line 145
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$2;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    .line 154
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v3, Lcom/android/incallui/fragment/AnswerImageFragment$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerImageFragment$3;-><init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    .line 165
    const v2, 0x7f1001f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    .line 166
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 168
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    .local v0, "alpha":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 175
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 176
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 184
    :goto_1
    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 186
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_3
    const v2, 0x7f10006e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    .line 193
    const v2, 0x7f1001b3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/RejectMsgContent;

    iput-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    .line 194
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v2, :cond_4

    .line 195
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2, p0}, Lcom/android/incallui/RejectMsgContent;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    .line 197
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2, p0}, Lcom/android/incallui/RejectMsgContent;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;)V

    .line 199
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v2, :cond_5

    .line 200
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    .line 203
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 204
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 205
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 206
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    .local v1, "marginLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 213
    .end local v1    # "marginLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 214
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    invoke-virtual {p0, v6}, Lcom/android/incallui/fragment/AnswerImageFragment;->showAnswerUi(Z)V

    .line 216
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/AnswerImageFragment;->showRejectCallWithMessage(Z)V

    .line 219
    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateMultiwindowChanged()V

    .line 220
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->setDrawerTopOffset()V

    .line 221
    return-void

    .line 117
    .end local v0    # "alpha":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateInComingCallLayout()V

    goto/16 :goto_0

    .line 178
    .restart local v0    # "alpha":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 181
    :cond_a
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 684
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 408
    const-string v3, "AnswerImageFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDialTrigger(whichHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 409
    packed-switch p2, :pswitch_data_0

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 411
    :pswitch_0
    const-string v3, "AnswerImageFragment"

    const-string v4, "LEFT_HANDLE: answer!"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 413
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 414
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 415
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 416
    invoke-static {v7}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 417
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 418
    .local v0, "buttonUi":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_1

    .line 419
    invoke-interface {v0, v6}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    .line 421
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    .line 422
    .local v1, "callButtonUi":Lcom/android/incallui/CallButtonUi;
    if-eqz v1, :cond_2

    .line 423
    invoke-interface {v1, v6}, Lcom/android/incallui/CallButtonUi;->setCallButtonContainerVisibility(Z)V

    .line 425
    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    .line 426
    .local v2, "callCardUi":Lcom/android/incallui/CallCardUi;
    if-eqz v2, :cond_3

    .line 427
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardUi;->changeCallCardForAM(I)V

    .line 428
    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->clearAMView()V

    .line 429
    invoke-interface {v2, v6}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    .line 430
    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->showModifySwitchButtonAM()V

    .line 432
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/AnswerImageFragment;->showAnswerUi(Z)V

    .line 433
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 434
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    .line 435
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 437
    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 438
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto/16 :goto_0

    .line 443
    .end local v0    # "buttonUi":Lcom/android/incallui/CallButtonUi;
    .end local v1    # "callButtonUi":Lcom/android/incallui/CallButtonUi;
    .end local v2    # "callCardUi":Lcom/android/incallui/CallCardUi;
    :cond_5
    const-string v3, "smart_auto_answering"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 444
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 445
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 446
    invoke-static {v7}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 449
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->onTrigger(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAnswerAppLogging(Landroid/content/Context;)V

    .line 452
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_answer()V

    .line 454
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto/16 :goto_0

    .line 457
    :pswitch_1
    const-string v3, "AnswerImageFragment"

    const-string v4, "RIGHT_HANDLE: reject!"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 459
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 460
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 461
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 462
    invoke-static {v7}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 463
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    .line 464
    .restart local v1    # "callButtonUi":Lcom/android/incallui/CallButtonUi;
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->aMEndButtonClick()V

    .line 465
    :cond_7
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    .line 466
    .restart local v2    # "callCardUi":Lcom/android/incallui/CallCardUi;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->clearAMView()V

    goto/16 :goto_0

    .line 471
    .end local v1    # "callButtonUi":Lcom/android/incallui/CallButtonUi;
    .end local v2    # "callCardUi":Lcom/android/incallui/CallCardUi;
    :cond_8
    const-string v3, "smart_auto_answering"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 472
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 473
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 474
    invoke-static {v7}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 477
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->onTrigger(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;I)V

    .line 479
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_decline()V

    .line 480
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartRejectAppLogging(Landroid/content/Context;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    .line 696
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->isCheckAddReminder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rejected"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V

    .line 699
    :cond_0
    return-void
.end method

.method public rejectWithAnswerMemo()V
    .locals 4

    .prologue
    .line 714
    const-string v1, "AnswerImageFragment"

    const-string v2, "rejectWithAnswerMemo!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 715
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 717
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->answeringMode()V

    .line 719
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    .line 724
    :cond_1
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 492
    const-string v1, "AnswerImageFragment"

    const-string v2, "resetAnswerCallAnimator..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 493
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 499
    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAlreadyAnimationProcessing:Z

    .line 500
    iput-boolean v4, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAnswerAnimationRunning:Z

    .line 502
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 503
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    .line 504
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 505
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 506
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->resetAnswerCallAnimator()V

    .line 508
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 509
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    .line 512
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_4

    .line 513
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->resetAnswerCallAnimator()V

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 516
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 517
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgHandle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 519
    :cond_5
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/AnswerFragment;->showAnswerUi(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    .line 391
    if-eqz p1, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->updateIncomingCallWidgetLayout()V

    .line 399
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    .line 404
    :cond_1
    return-void

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    .line 395
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    goto :goto_0
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    .line 706
    :cond_0
    return-void

    .line 704
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected updateInComingCallLayout()V
    .locals 3

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 623
    .local v0, "Params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 624
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    return-void
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 640
    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_0
    return-void
.end method
