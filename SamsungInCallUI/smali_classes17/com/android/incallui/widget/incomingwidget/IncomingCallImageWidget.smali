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

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    return-void
.end method

.method private addScaleAnimatorForOneHand(Landroid/animation/AnimatorSet$Builder;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0267

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0266

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    int-to-float v6, v5

    int-to-float v7, v4

    div-float v0, v6, v7

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v13, [F

    aput v0, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v13, [F

    aput v0, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private animateLeftHandleForAnswer()V
    .locals 22

    const/16 v16, 0x0

    const/4 v15, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/incallui/CallButtonUi;->getEndCallButtonPivot()[I

    move-result-object v16

    invoke-interface {v3}, Lcom/android/incallui/CallButtonUi;->getEndCallButtonDiameter()I

    move-result v15

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

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->animateLeftHandleForAnswerOldWay()V

    :goto_0
    return-void

    :cond_2
    const-string v17, "IncomingCallImageWidget"

    const-string v18, "animateLeftHandleForAnswer"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d000c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v17

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v12, v17, v18

    const/16 v17, 0x0

    aget v6, v16, v17

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

    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v17

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v13, v17, v18

    const/16 v17, 0x1

    aget v7, v16, v17

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

    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-float v0, v15

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v17, v18

    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v4, v17

    if-gez v17, :cond_3

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

    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v17, Landroid/view/animation/PathInterpolator;

    const v18, 0x3ea8f5c3    # 0.33f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v21}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

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

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    const-string v6, "IncomingCallImageWidget"

    const-string v7, "animateLeftHandleForAnswerOldWay"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v6, v7

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v13, [F

    aput v4, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v7

    sub-float v5, v6, v7

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v13, [F

    aput v5, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addScaleAnimatorForOneHand(Landroid/animation/AnimatorSet$Builder;)V

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateTabCircleForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    return-void
.end method

.method private animateLeftTopHandleForAnswer()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v6, v7

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v13, [F

    aput v4, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getY()F

    move-result v7

    sub-float v5, v6, v7

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v13, [F

    aput v5, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v10, v9, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v6, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateTabCircleForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    return-void
.end method

.method private assignAlphaAnimation(Landroid/view/View;IF)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p3, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0
.end method

.method private hasCoverTag()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideRightHint()V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideLeftHint()V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideLeftTopHint()V

    :cond_0
    return-void
.end method

.method private hideLeftHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideLeftTopHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideRightHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isClearCover(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "clear_cover_incoming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clear_cover_incall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clear_cover_redial_call"

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

    const-string v0, "sview_cover_incoming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sview_cover_incall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sview_cover_redial_call"

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

    const-string v0, "IncomingCallImageWidget"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeHintView()V
    .locals 9

    const v8, 0x7f0400dd

    const/4 v7, 0x0

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const v4, 0x7f0400de

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v1, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x55

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x53

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private needToShowLeftTopHandle()Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v0

    if-nez v0, :cond_0

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hideHint()V

    return-void
.end method

.method private setViewStatePostAnimation(Landroid/view/View;F)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateHintText()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v2, "updateHintText"

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I

    move-result-object v0

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

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    aget v6, v0, v8

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    aget v7, v0, v9

    add-int/2addr v6, v7

    sub-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I

    move-result-object v0

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

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    aget v6, v0, v8

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    aget v7, v0, v9

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addTouchArea(IIIII)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addTouchArea(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addTouchArea(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clearDrawable()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_2
    return-void
.end method

.method public dispatchTriggerEvent(I)V
    .locals 2

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

    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public enableArrowAnimation(IZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->animateLeftHandleForAnswer()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeHintWhenTriggered()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->animateLeftTopHandleForAnswer()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    goto :goto_0
.end method

.method public getAnimatorForAnswerCallforWithHardkey()Landroid/animation/AnimatorSet;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeHintWhenTriggered()V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v2
.end method

.method protected inflateHandle()V
    .locals 9

    const/16 v8, 0x53

    const/4 v7, 0x0

    const/4 v6, -0x2

    const-string v4, "inflateHandle..."

    invoke-direct {p0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->initHandle()V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "useHoverToAction"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

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

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setEasyTouchModeEnabled(Z)V

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x55

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    return-void
.end method

.method initHandle()V
    .locals 6

    const v5, 0x7f0202e0

    const v4, 0x7f02014c

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isClearCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const-string v0, "clear_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setContentDescription(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isSViewCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const-string v0, "sview_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sview_cover_redial_call"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v4, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setLeftTabImageResource(II)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTargetImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v5, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightTabImageResource(II)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTargetImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setLeftHandleArrowResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightHandleArrowResource(I)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    goto/16 :goto_0
.end method

.method protected notifyTargetProximityRatio(F)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v3, p1

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    sub-float v0, v3, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->updateLayout()V

    return-void
.end method

.method public removeArrowMsg()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_2
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    goto :goto_1
.end method

.method public setContentDescription(II)V
    .locals 2

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

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

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

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "clear_cover_incoming"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sview_cover_incoming"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

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

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v3, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v3, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :cond_6
    const-string v3, "clear_cover_incall"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "sview_cover_incall"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected setGrabbedState(I)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

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

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMultiwindowChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setMultiwindowChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setMultiwindowChanged(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setMultiwindowChanged(Z)V

    :cond_2
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    return-void
.end method

.method public setReachedRatio(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setReachedRatio(D)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setReachedRatio(D)V

    return-void
.end method

.method public setRejectMsgHandleView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    return-void
.end method

.method public setTouchVibationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateLayout()V
    .locals 14

    const/16 v13, 0x8

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a007d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a007e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    const-string v11, "support_folder_single_lcd"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0081

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    :cond_2
    const-string v11, "clear_cover_incoming"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "clear_cover_incall"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0097

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    const-string v11, "support_cover_extra_size"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0328

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a028f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0465

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v7, v11

    :cond_6
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v11

    sub-int v3, v11, v6

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v4, v11, v7

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getRight()I

    move-result v11

    add-int v9, v11, v6

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v10, v11, v7

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0467

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    :cond_8
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v11

    sub-int v3, v11, v6

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getRight()I

    move-result v11

    add-int v9, v11, v6

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->needToShowLeftTopHandle()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v2, v11

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0468

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0466

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v2, v11

    :cond_a
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v4, v11, v8

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int/2addr v11, v8

    div-int/lit8 v12, v2, 0x2

    sub-int v10, v11, v12

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int/2addr v11, v8

    sub-int v5, v11, v2

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v11, v3, v5, v12, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

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

    const-string v11, "sview_cover_redial_call"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverWidth()I

    move-result v11

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v3, v11, 0x2

    :cond_c
    :goto_3
    const-string v11, "sview_cover_incall"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "clear_cover_incall"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

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

    :cond_e
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v11, v3, v4, v12, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v12}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v12

    sub-int v12, v9, v12

    iget-object v13, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v11, v12, v10, v9, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    goto/16 :goto_0

    :cond_f
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->isSViewCover(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a023d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    const-string v11, "support_cover_extra_size"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04d7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    goto/16 :goto_1

    :cond_10
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    :cond_11
    if-nez v1, :cond_12

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_12
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/service/vt/VideoCallManager;->isEnoughSpaceForAnswer()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0469

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    :goto_4
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v4, v11, v8

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v11

    add-int v10, v11, v8

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a01ea

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a001f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    goto :goto_4

    :cond_15
    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v11, v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto/16 :goto_2

    :cond_16
    const-string v11, "clear_cover_redial_call"

    iget-object v12, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
