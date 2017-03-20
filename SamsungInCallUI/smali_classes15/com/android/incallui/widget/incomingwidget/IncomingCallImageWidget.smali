.class public Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final END_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final USE_HOVER_TO_ACTION:Ljava/lang/String;

.field protected final VIBRATE_LONG:J

.field protected final VIBRATE_SHORT:J

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mContext:Landroid/content/Context;

.field protected mGrabbedState:I

.field private mIsTriggered:Z

.field protected mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

.field protected mLeftHintTextView:Landroid/widget/TextView;

.field protected mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

.field protected mLeftTopHintTextView:Landroid/widget/TextView;

.field protected mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

.field private mRejectMsgHandleView:Landroid/view/View;

.field protected mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

.field protected mRightHintTextView:Landroid/widget/TextView;

.field private mTag:Ljava/lang/String;

.field protected mUseHoverToAction:Z

.field protected mUseVibate:Z

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 62
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 63
    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 64
    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 65
    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    .line 67
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 68
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    .line 94
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    .line 98
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 62
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 63
    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 64
    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 65
    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    .line 67
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 68
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    .line 94
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    .line 104
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 62
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 63
    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 64
    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 65
    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    .line 67
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 68
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    .line 94
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    .line 110
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    .line 112
    return-void
.end method

.method private addScaleAnimatorForOneHand(Landroid/animation/AnimatorSet$Builder;)V
    .locals 14
    .param p1, "builder"    # Landroid/animation/AnimatorSet$Builder;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0263

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 762
    .local v5, "targetScale":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0262

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 763
    .local v4, "startScale":I
    int-to-float v6, v5

    int-to-float v7, v4

    div-float v0, v6, v7

    .line 765
    .local v0, "diffScale":F
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v13, [F

    aput v0, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 766
    .local v1, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v13, [F

    aput v0, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 767
    .local v2, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 768
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 769
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 770
    .local v3, "scaleDuration":I
    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 771
    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 772
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 773
    return-void
.end method

.method private animateLeftHandleForAnswer()V
    .locals 22

    .prologue
    .line 776
    const/16 v16, 0x0

    .line 777
    .local v16, "targetViewPivot":[I
    const/4 v15, 0x0

    .line 778
    .local v15, "targetViewDiameter":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    .line 779
    .local v3, "buttonUi":Lcom/android/incallui/CallButtonUi;
    if-eqz v3, :cond_0

    .line 780
    invoke-interface {v3}, Lcom/android/incallui/CallButtonUi;->getEndCallButtonPivot()[I

    move-result-object v16

    .line 781
    invoke-interface {v3}, Lcom/android/incallui/CallButtonUi;->getEndCallButtonDiameter()I

    move-result v15

    .line 783
    :cond_0
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    if-nez v15, :cond_2

    .line 784
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->animateLeftHandleForAnswerOldWay()V

    .line 818
    :goto_0
    return-void

    .line 787
    :cond_2
    const-string v17, "IncomingCallImageWidget"

    const-string v18, "animateLeftHandleForAnswer"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d000c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 790
    .local v5, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v14

    .line 791
    .local v14, "startView":Landroid/view/View;
    invoke-static {v14}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v17

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v12, v17, v18

    .line 792
    .local v12, "startPivotX":I
    const/16 v17, 0x0

    aget v6, v16, v17

    .line 793
    .local v6, "endPivotX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sub-int v21, v6, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 794
    .local v8, "moveXAnimator":Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 795
    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 798
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-static {v14}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v17

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v13, v17, v18

    .line 799
    .local v13, "startPivotY":I
    const/16 v17, 0x1

    aget v7, v16, v17

    .line 800
    .local v7, "endPivotY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sub-int v21, v7, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 801
    .local v9, "moveYAnimator":Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 802
    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 803
    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 805
    int-to-float v0, v15

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v17, v18

    .line 806
    .local v4, "diffScale":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v4, v17

    if-gez v17, :cond_3

    .line 807
    const-string v17, "IncomingCallImageWidget"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "animateLeftHandleForAnswer: diffScale - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v4, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 809
    .local v10, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v4, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 810
    .local v11, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 811
    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 812
    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 813
    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 814
    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 817
    .end local v10    # "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    .end local v11    # "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateTabCircleForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    goto/16 :goto_0
.end method

.method private animateLeftHandleForAnswerOldWay()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    .line 821
    const-string v6, "IncomingCallImageWidget"

    const-string v7, "animateLeftHandleForAnswerOldWay"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 824
    .local v1, "moveDuration":I
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v6, v7

    .line 825
    .local v4, "translationX":F
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v13, [F

    aput v4, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 826
    .local v2, "moveXAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 827
    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 828
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 830
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v7

    sub-float v5, v6, v7

    .line 831
    .local v5, "translationY":F
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v13, [F

    aput v5, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 832
    .local v3, "moveYAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 833
    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 834
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 837
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 838
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addScaleAnimatorForOneHand(Landroid/animation/AnimatorSet$Builder;)V

    .line 841
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateTabCircleForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    .line 842
    return-void
.end method

.method private animateLeftTopHandleForAnswer()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 847
    .local v1, "moveDuration":I
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v6, v7

    .line 848
    .local v4, "translationX":F
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v13, [F

    aput v4, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 849
    .local v2, "moveXAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 851
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 853
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v7

    sub-float v5, v6, v7

    .line 854
    .local v5, "translationY":F
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v13, [F

    aput v5, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 855
    .local v3, "moveYAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 856
    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 857
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 859
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateTabCircleForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    .line 860
    return-void
.end method

.method private assignAlphaAnimation(Landroid/view/View;IF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "endOpacity"    # F

    .prologue
    .line 909
    if-nez p1, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 912
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 914
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 915
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 916
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 917
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 918
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I
    .locals 7
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "v2"    # Landroid/view/View;
    .param p3, "isLeft"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 439
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 440
    .local v2, "returnValue":[I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-object v2

    .line 442
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 443
    .local v0, "r1":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 445
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 446
    .local v1, "r2":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 448
    if-eqz p3, :cond_2

    .line 449
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    aput v3, v2, v5

    .line 450
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 452
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    aput v3, v2, v5

    .line 453
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0
.end method

.method private hasCoverTag()Z
    .locals 2

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 949
    .local v0, "tag":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isClearCover(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isSViewCover(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideHint()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideRightHint()V

    .line 205
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideLeftHint()V

    .line 207
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideLeftTopHint()V

    .line 210
    :cond_0
    return-void
.end method

.method private hideLeftHint()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method

.method private hideLeftTopHint()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method

.method private hideRightHint()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method private isClearCover(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mTag"    # Ljava/lang/String;

    .prologue
    .line 936
    const-string v0, "clear_cover_incoming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clear_cover_incall"

    .line 937
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clear_cover_redial_call"

    .line 938
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isSViewCover(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mTag"    # Ljava/lang/String;

    .prologue
    .line 942
    const-string v0, "sview_cover_incoming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sview_cover_incall"

    .line 943
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sview_cover_redial_call"

    .line 944
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 965
    const-string v0, "IncomingCallImageWidget"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method private makeHintView()V
    .locals 9

    .prologue
    const v8, 0x7f0400dd

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 159
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 161
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    .line 162
    const v4, 0x7f0400de

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    .line 164
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v1, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 166
    .local v1, "leftLp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x55

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 169
    .local v3, "rightLP":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    .line 175
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x53

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 178
    .local v2, "leftTopLP":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .end local v2    # "leftTopLP":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private needToShowLeftTopHandle()Z
    .locals 1

    .prologue
    .line 953
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isEnoughSpaceForAnswer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeHintWhenTriggered()V
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    .line 905
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideHint()V

    .line 906
    return-void
.end method

.method private setViewStatePostAnimation(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "opacity"    # F

    .prologue
    .line 922
    if-nez p1, :cond_0

    .line 929
    :goto_0
    return-void

    .line 923
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 925
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 926
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 928
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_2
    return-void
.end method

.method private updateHintText()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 413
    const-string v2, "updateHintText"

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 417
    .local v1, "hintGaptoTabCircle":I
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I

    move-result-object v0

    .line 419
    .local v0, "distanceTwoViews":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHintText : leftHandle distance :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    aget v4, v0, v8

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    aget v5, v0, v9

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    .line 422
    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    aget v6, v0, v8

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    .line 423
    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    aget v7, v0, v9

    add-int/2addr v6, v7

    sub-int/2addr v6, v1

    .line 421
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 424
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 427
    .end local v0    # "distanceTwoViews":[I
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 428
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I

    move-result-object v0

    .line 429
    .restart local v0    # "distanceTwoViews":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHintText : rightHandle distance :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    aget v4, v0, v8

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    aget v5, v0, v9

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    .line 432
    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    aget v6, v0, v8

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    .line 433
    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    aget v7, v0, v9

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    .line 431
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 434
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 436
    .end local v0    # "distanceTwoViews":[I
    :cond_1
    return-void
.end method


# virtual methods
.method public addTouchArea(IIIII)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 694
    packed-switch p1, :pswitch_data_0

    .line 706
    :goto_0
    :pswitch_0
    return-void

    .line 696
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addTouchArea(IIII)V

    goto :goto_0

    .line 699
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addTouchArea(IIII)V

    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clearDrawable()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    .line 718
    :cond_2
    return-void
.end method

.method public dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 551
    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    .line 552
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 555
    :cond_0
    return-void
.end method

.method public enableArrowAnimation(IZ)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 651
    packed-switch p1, :pswitch_data_0

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 653
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    .line 656
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    .line 659
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    const/4 v1, 0x0

    .line 863
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 864
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->animateLeftHandleForAnswer()V

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    .line 879
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    .line 882
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeHintWhenTriggered()V

    .line 884
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0

    .line 872
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 873
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->animateLeftTopHandleForAnswer()V

    .line 875
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    goto :goto_0
.end method

.method public getAnimatorForAnswerCallforWithHardkey()Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 888
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 889
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 891
    .local v0, "leftHandleAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 892
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 894
    .end local v0    # "leftHandleAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v2, :cond_1

    .line 895
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 896
    .local v1, "rightHandleAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 897
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 899
    .end local v1    # "rightHandleAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeHintWhenTriggered()V

    .line 900
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v2
.end method

.method protected inflateHandle()V
    .locals 9

    .prologue
    const/16 v8, 0x53

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 115
    const-string v4, "inflateHandle..."

    invoke-direct {p0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->initHandle()V

    .line 119
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    .line 120
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    .line 122
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "useHoverToAction"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 125
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    .line 126
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    .line 128
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    .line 131
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    .line 133
    const-string v5, "InCallImageWidget"

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "EndCallImageWidget"

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setEasyTouchModeEnabled(Z)V

    .line 137
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 139
    .local v1, "leftLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x55

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 142
    .local v2, "rightLP":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    .line 147
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    .line 150
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 153
    .local v0, "leftBottomLP":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .end local v0    # "leftBottomLP":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iput-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    .line 156
    return-void
.end method

.method initHandle()V
    .locals 6

    .prologue
    const v5, 0x7f0202df

    const v4, 0x7f02014a

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 213
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isClearCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 217
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 218
    const-string v0, "clear_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setContentDescription(Ljava/lang/String;)V

    .line 247
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isSViewCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 225
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 226
    const-string v0, "sview_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sview_cover_redial_call"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    .line 229
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v4, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setLeftTabImageResource(II)V

    .line 230
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTargetImageResource(I)V

    .line 231
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    .line 232
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v5, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightTabImageResource(II)V

    .line 233
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0202dd

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTargetImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setLeftHandleArrowResource(I)V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightHandleArrowResource(I)V

    goto :goto_0

    .line 239
    :cond_4
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 240
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 242
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    goto/16 :goto_0
.end method

.method protected notifyTargetProximityRatio(F)V
    .locals 4
    .param p1, "ratio"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 595
    mul-float v1, v3, p1

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    sub-float v0, v3, v1

    .line 596
    .local v0, "alpha":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    .line 599
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    .line 601
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 602
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 287
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 288
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->updateLayout()V

    .line 289
    return-void
.end method

.method public removeArrowMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 721
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    .line 729
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 467
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    .line 473
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 481
    :cond_2
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 732
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 733
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    .line 735
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    .line 736
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    .line 737
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    .line 738
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    .line 739
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    .line 740
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    .line 741
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    .line 742
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    .line 755
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 756
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    goto :goto_0

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    .line 746
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    .line 747
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    .line 748
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    .line 749
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    .line 750
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    goto :goto_1
.end method

.method public setContentDescription(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "resource"    # I

    .prologue
    .line 669
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isUniversalSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    :goto_0
    :pswitch_0
    return-void

    .line 671
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 673
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 679
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setContentDescription(Ljava/lang/String;)V
    .locals 5
    .param p1, "mTag"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "leftHandleDescription":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "rightHandleDescription":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    const-string v3, "clear_cover_incoming"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sview_cover_incoming"

    .line 255
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isUniversalSwitchEnable()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 273
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v3, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v3, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "leftTopHandleDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v3, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 281
    .end local v1    # "leftTopHandleDescription":Ljava/lang/String;
    :cond_5
    return-void

    .line 258
    :cond_6
    const-string v3, "clear_cover_incall"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "sview_cover_incall"

    .line 259
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 260
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 262
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 562
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 563
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    .line 565
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    packed-switch v0, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 588
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 592
    :cond_1
    return-void

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 568
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 572
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 575
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 576
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 579
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 580
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 581
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 586
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHandleImageResource(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "resource"    # I

    .prologue
    .line 621
    packed-switch p1, :pswitch_data_0

    .line 633
    :goto_0
    :pswitch_0
    return-void

    .line 623
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    .line 626
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMultiwindowChanged(Z)V
    .locals 1
    .param p1, "MultiwindowChanged"    # Z

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setMultiwindowChanged(Z)V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setMultiwindowChanged(Z)V

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setMultiwindowChanged(Z)V

    .line 962
    :cond_2
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    .line 539
    return-void
.end method

.method public setReachedRatio(D)V
    .locals 1
    .param p1, "ratio"    # D

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setReachedRatio(D)V

    .line 690
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setReachedRatio(D)V

    .line 691
    return-void
.end method

.method public setRejectMsgHandleView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    .line 933
    return-void
.end method

.method public setTouchVibationMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    .line 543
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    .line 463
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 464
    return-void
.end method

.method public setVisibility(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 636
    packed-switch p1, :pswitch_data_0

    .line 648
    :goto_0
    :pswitch_0
    return-void

    .line 638
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateLayout()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    .line 296
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-nez v11, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a007d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 299
    .local v6, "marginDelta":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a007e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    .line 300
    .local v7, "marginDeltaBottom":I
    const-string v11, "support_folder_single_lcd"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 301
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0081

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    .line 306
    :cond_2
    const-string v11, "clear_cover_incoming"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "clear_cover_incall"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    .line 307
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0098

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 309
    const-string v11, "support_cover_extra_size"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 310
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0324

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 320
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 321
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a028b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    .line 324
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 325
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0466

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v7, v11

    .line 328
    :cond_6
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v11

    sub-int v3, v11, v6

    .line 329
    .local v3, "leftHandleLeft":I
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v4, v11, v7

    .line 330
    .local v4, "leftHandleTop":I
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getRight()I

    move-result v11

    add-int v9, v11, v6

    .line 331
    .local v9, "rightHandleLeft":I
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v10, v11, v7

    .line 332
    .local v10, "rightHandleTop":I
    const/4 v5, 0x0

    .line 334
    .local v5, "leftTopHandleTop":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    .line 335
    .local v1, "isInMultiWindowMode":Z
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 336
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    .line 337
    .local v8, "marginDeltaVertical":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 338
    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 339
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0468

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 341
    :cond_8
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v11

    sub-int v3, v11, v6

    .line 342
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getRight()I

    move-result v11

    add-int v9, v11, v6

    .line 344
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 349
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v2, v11

    .line 351
    .local v2, "leftCircleDistance":I
    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 352
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0469

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    .line 353
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0467

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v2, v11

    .line 356
    :cond_a
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v4, v11, v8

    .line 357
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int/2addr v11, v8

    div-int/lit8 v12, v2, 0x2

    sub-int v10, v11, v12

    .line 359
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_b

    .line 360
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int/2addr v11, v8

    sub-int v5, v11, v2

    .line 362
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 365
    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 366
    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 362
    invoke-virtual {v11, v3, v5, v12, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    .line 367
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    .line 387
    .end local v2    # "leftCircleDistance":I
    .end local v8    # "marginDeltaVertical":I
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 388
    .local v0, "display":Landroid/view/Display;
    const-string v11, "sview_cover_redial_call"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 389
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverWidth()I

    move-result v11

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v3, v11, 0x2

    .line 394
    :cond_c
    :goto_3
    const-string v11, "sview_cover_incall"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "clear_cover_incall"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    .line 395
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 396
    :cond_d
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverWidth()I

    move-result v11

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v9, v11, 0x2

    .line 399
    :cond_e
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 402
    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 403
    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v13

    add-int/2addr v13, v4

    .line 399
    invoke-virtual {v11, v3, v4, v12, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    .line 405
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 406
    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    sub-int v12, v9, v12

    iget-object v13, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .line 409
    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v13

    add-int/2addr v13, v10

    .line 405
    invoke-virtual {v11, v12, v10, v9, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    goto/16 :goto_0

    .line 312
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "isInMultiWindowMode":Z
    .end local v3    # "leftHandleLeft":I
    .end local v4    # "leftHandleTop":I
    .end local v5    # "leftTopHandleTop":I
    .end local v9    # "rightHandleLeft":I
    .end local v10    # "rightHandleTop":I
    :cond_f
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isSViewCover(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 313
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0239

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 314
    const-string v11, "support_cover_extra_size"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 315
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04d9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 316
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04d8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    goto/16 :goto_1

    .line 370
    .restart local v1    # "isInMultiWindowMode":Z
    .restart local v3    # "leftHandleLeft":I
    .restart local v4    # "leftHandleTop":I
    .restart local v5    # "leftTopHandleTop":I
    .restart local v8    # "marginDeltaVertical":I
    .restart local v9    # "rightHandleLeft":I
    .restart local v10    # "rightHandleTop":I
    :cond_10
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    .line 371
    :cond_11
    if-nez v1, :cond_12

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 372
    :cond_12
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/service/vt/VideoCallManager;->isEnoughSpaceForAnswer()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 373
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a046a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    .line 380
    :goto_4
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v4, v11, v8

    .line 381
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v10, v11, v8

    goto/16 :goto_2

    .line 375
    :cond_13
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a01e7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    goto :goto_4

    .line 378
    :cond_14
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    goto :goto_4

    .line 384
    .end local v8    # "marginDeltaVertical":I
    :cond_15
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto/16 :goto_2

    .line 390
    .restart local v0    # "display":Landroid/view/Display;
    :cond_16
    const-string v11, "clear_cover_redial_call"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 391
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v3, v11, 0x2

    goto/16 :goto_3
.end method

.method public declared-synchronized vibrate(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 618
    :goto_0
    monitor-exit p0

    return-void

    .line 616
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    const v1, 0xc36a

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
