.class public Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackAnimationHelper$Callbacks;
    }
.end annotation


# static fields
.field private static final DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mEnterAndExitFromHomeTranslationOffset:I

.field private mPreparedNewScroll:F

.field private mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTmpCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    return-void

    :cond_0
    const/16 v0, 0x21

    goto :goto_0
.end method

.method private calculateStaggeredAnimDuration(I)I
    .locals 2

    const/16 v1, 0x64

    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_TaskStackAnimationHelper_51282(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->resetLayoutStateAfterDismiss(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_TaskStackAnimationHelper_51713(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    const/4 v1, 0x1

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateSwipeProgress(Landroid/view/View;ZF)Z

    return-void
.end method

.method private startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 4

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startTaskStackDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v1, v9, v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-boolean v9, v4, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v9, :cond_0

    invoke-virtual {v8, v12}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sub-int v9, v7, v0

    add-int/lit8 v6, v9, -0x1

    mul-int/lit8 v3, v6, 0x21

    invoke-virtual {v8, v12}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    new-instance v5, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v10, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$10;

    invoke-direct {v10, p0, p2, v8}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$10;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    const/16 v11, 0xc8

    invoke-direct {v5, v3, v11, v9, v10}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v9, v8}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v9, v8, v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private startTaskStackDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$1;

    invoke-direct {v3, v2, p1}, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result v1

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;

    invoke-direct {v3, v1, p1, v2}, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;-><init>(FLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$9;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$9;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_views_TaskStackAnimationHelper_50464(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method public prepareForEnterAnimation()V
    .locals 32

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScrolling()V

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v29

    if-nez v29, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v17

    const v29, 0x7f07059d

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    const v29, 0x7f07059e

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3f333333    # 0.7f

    mul-float v29, v29, v30

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v20, v29, v30

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v29

    move-object/from16 v0, v29

    iget v9, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v29, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v9, v0, :cond_1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v12, v29, -0x1

    :goto_1
    if-ltz v12, :cond_1

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v0, v9, :cond_5

    if-eqz v10, :cond_1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getCalibratedStackScroll(F)F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    :cond_1
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v12, v29, -0x1

    :goto_2
    if-ltz v12, :cond_17

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v24

    if-eqz v15, :cond_7

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    :goto_3
    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v29, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v11

    :goto_4
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v18, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v29

    if-eqz v29, :cond_9

    const v29, 0x7f07038f

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    :cond_3
    :goto_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v29

    if-eqz v29, :cond_6

    const/4 v10, 0x1

    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_9
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    const v29, 0x7f07038e

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    goto :goto_5

    :cond_a
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_11

    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v29, v0

    if-nez v29, :cond_b

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v29

    if-eqz v29, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offsetTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-eq v12, v0, :cond_c

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    move/from16 v0, v29

    if-ne v12, v0, :cond_10

    :cond_c
    :goto_7
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    :cond_e
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v29

    if-eqz v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_6

    :cond_10
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x3

    move/from16 v0, v29

    if-ne v12, v0, :cond_d

    goto :goto_7

    :cond_11
    if-eqz v11, :cond_12

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_12
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v29, v0

    if-eqz v29, :cond_14

    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_14

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/recents/views/TaskView;->onPrepareLaunchTargetForEnterAnimation()V

    goto/16 :goto_6

    :cond_13
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    goto/16 :goto_6

    :cond_14
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_6

    :cond_15
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    if-eqz v13, :cond_16

    move/from16 v18, v16

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_6

    :cond_16
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3f666666    # 0.9f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v18, v0

    goto :goto_8

    :cond_17
    return-void
.end method

.method public startDeleteAllTasksAnimation(Ljava/util/List;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;Z",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    :cond_1
    return-void
.end method

.method public startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_0
.end method

.method public startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 34

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v17

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const v4, 0x7f0b0075

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v30

    const v4, 0x7f0b0074

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    const v4, 0x7f0b0046

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v28

    const/16 v19, 0x0

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    new-instance v19, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskStackViewScroller;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    :cond_1
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    if-eqz v19, :cond_2

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-wide/16 v6, 0x190

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    if-nez v28, :cond_3

    return-void

    :cond_3
    add-int/lit8 v15, v28, -0x1

    :goto_0
    if-ltz v15, :cond_6

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/systemui/recents/views/TaskView;

    add-int/lit8 v4, v28, -0x1

    if-ne v15, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move-object/from16 v0, v32

    move/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    :cond_4
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(ZZ)V

    :cond_6
    return-void

    :cond_7
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v4, :cond_8

    if-eqz v19, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    :cond_8
    add-int/lit8 v15, v28, -0x1

    :goto_1
    if-ltz v15, :cond_6

    sub-int v4, v28, v15

    add-int/lit8 v27, v4, -0x1

    move/from16 v26, v15

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v24

    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v4, :cond_a

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v13

    :goto_2
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    new-instance v10, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct {v5, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    const/16 v6, 0x15e

    invoke-direct {v10, v6, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    const/16 v5, 0x96

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    const/4 v5, 0x3

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v4, v28, -0x1

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0x11

    add-int/lit16 v0, v4, 0x96

    move/from16 v23, v0

    const/4 v4, 0x6

    const/16 v5, 0x30f

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x4

    const/16 v5, 0x190

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x4

    move/from16 v0, v23

    invoke-virtual {v10, v4, v0}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x6

    move/from16 v0, v23

    invoke-virtual {v10, v4, v0}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    add-int/lit8 v4, v28, -0x1

    if-ne v15, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    :cond_9
    :goto_4
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_1

    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v4, 0x6

    const/16 v5, 0x1f4

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x4

    const/16 v5, 0x190

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x4

    const/16 v5, 0x64

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v4

    if-eqz v4, :cond_d

    mul-int/lit8 v4, v15, 0x11

    add-int/lit16 v0, v4, 0x96

    move/from16 v23, v0

    const/4 v4, 0x6

    const/16 v5, 0x30f

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x4

    const/16 v5, 0x190

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x3

    const/16 v5, 0xa

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    const/4 v5, 0x6

    invoke-virtual {v10, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    const/4 v5, 0x4

    invoke-virtual {v10, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x6

    move/from16 v0, v23

    invoke-virtual {v10, v4, v0}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_3

    :cond_d
    const/4 v4, 0x4

    const/16 v5, 0xe9

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x3

    const/16 v5, 0x96

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v4, 0x3

    const/16 v5, 0xc8

    invoke-virtual {v10, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    goto/16 :goto_3

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    goto :goto_4

    :cond_f
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move-object/from16 v0, v32

    move/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto/16 :goto_4

    :cond_10
    if-eqz v13, :cond_9

    new-instance v25, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct {v5, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x5

    move/from16 v0, v27

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43960000    # 300.0f

    div-float v9, v4, v5

    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    const/4 v5, 0x5

    move/from16 v0, v27

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x12c

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v33

    new-instance v4, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;-><init>(FFFFF)V

    const/4 v5, 0x6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    add-int/lit8 v4, v28, -0x1

    if-ne v15, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    goto/16 :goto_4

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v4, :cond_9

    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    mul-int/lit8 v5, v26, 0x21

    add-int/2addr v5, v14

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x30

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_4
.end method

.method public startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v19

    if-nez v19, :cond_0

    return-void

    :cond_0
    iget-object v0, v12, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f333333    # 0.7f

    mul-float v19, v19, v20

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v10, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v6, v0, :cond_c

    sub-int v19, v16, v6

    add-int/lit8 v15, v19, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v19

    if-eqz v19, :cond_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v19

    if-eqz v19, :cond_8

    new-instance v14, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v19, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    new-instance v20, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    const/16 v21, 0x14d

    move/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v19, v16, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_2

    add-int/lit8 v19, v16, -0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_7

    :cond_2
    :goto_2
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    :cond_3
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->offset(FF)V

    add-int/lit8 v19, v16, -0x1

    sub-int v19, v19, v6

    mul-int/lit8 v19, v19, 0xa

    const/16 v20, 0x6

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v10, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    if-eqz p1, :cond_5

    const/16 v19, 0x3

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/16 v19, 0x4

    const/16 v20, 0x12c

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v19, v16, -0x3

    move/from16 v0, v19

    if-ne v6, v0, :cond_3

    goto/16 :goto_2

    :cond_8
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    move/from16 v20, v0

    mul-int v5, v19, v20

    new-instance v19, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v19 .. v19}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v19

    const/16 v20, 0x6

    const/16 v21, 0xc8

    invoke-virtual/range {v19 .. v21}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v19

    sget-object v20, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v21, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v14

    goto/16 :goto_3

    :cond_9
    sget-object v14, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v19, 0x7f07038e

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->offset(FF)V

    if-eqz p1, :cond_6

    const/16 v19, 0x3

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/16 v19, 0x4

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/16 v19, 0x6

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v7

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_5

    :cond_c
    return-void
.end method

.method public startLaunchNonFullscreenTaskAnimation()V
    .locals 7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v6

    iget v1, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    const-wide/16 v4, 0x15e

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;J)V

    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f0b0076

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v13, 0x7f07059d

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_5

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    if-eqz v4, :cond_1

    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v13, :cond_1

    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v13, v6, v4}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    :goto_1
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_2

    xor-int/lit8 v13, p4, 0x1

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    new-instance v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v10, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    new-instance v7, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v13, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v14

    invoke-direct {v7, v10, v13, v14}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v14, 0x0

    iput v14, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    int-to-float v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12, v14, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    const/4 v13, 0x1

    const/16 v14, 0x12c

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v13, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_4
    iget-object v13, v12, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v14, v14, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(ZZ)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public startLayoutTypeChangeExitAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 14

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-nez v11, :cond_0

    return-void

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_3

    sub-int v11, v8, v1

    add-int/lit8 v7, v11, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11, v6}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v10}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07038f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v12, 0x0

    neg-int v13, v2

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v11, 0x6

    const/16 v12, 0x30f

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x4

    const/16 v12, 0x190

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x3

    const/16 v12, 0xa

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v11, Lcom/android/systemui/Interpolators;->SINE_IN50:Landroid/view/animation/Interpolator;

    const/4 v12, 0x6

    invoke-virtual {v0, v12, v11}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v11, Lcom/android/systemui/Interpolators;->SINE_IN_OUT50:Landroid/view/animation/Interpolator;

    const/4 v12, 0x4

    invoke-virtual {v0, v12, v11}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x4

    const/16 v12, 0x17f

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    mul-int/lit8 v11, v1, 0x11

    const/4 v12, 0x6

    invoke-virtual {v0, v12, v11}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v10, v12, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v12, 0x0

    iget-object v13, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    const/4 v11, 0x6

    const/16 v12, 0x30f

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x4

    const/16 v12, 0x190

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x5

    const/16 v12, 0x190

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x3

    const/16 v12, 0xa

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v11, Lcom/android/systemui/Interpolators;->SINE_IN50:Landroid/view/animation/Interpolator;

    const/4 v12, 0x6

    invoke-virtual {v0, v12, v11}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v11, Lcom/android/systemui/Interpolators;->SINE_IN_OUT50:Landroid/view/animation/Interpolator;

    const/4 v12, 0x4

    invoke-virtual {v0, v12, v11}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v11, Lcom/android/systemui/Interpolators;->SINE_IN_OUT50:Landroid/view/animation/Interpolator;

    const/4 v12, 0x4

    invoke-virtual {v0, v12, v11}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    add-int/lit8 v11, v8, -0x1

    sub-int/2addr v11, v1

    mul-int/lit8 v5, v11, 0x11

    const/4 v11, 0x6

    invoke-virtual {v0, v11, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x4

    invoke-virtual {v0, v11, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v11}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskViewTransform;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v2, v12, v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    :cond_1
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;FLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0705a2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_8

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, v18

    if-ne v0, v11, :cond_5

    if-nez v12, :cond_2

    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v2, :cond_6

    iget-object v2, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v10, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v14, -0x1

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v2, v2, 0xfa

    const/16 v4, 0xfa

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_3
    sget-object v15, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v9

    goto :goto_3

    :cond_8
    return-void
.end method

.method public startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    :goto_0
    add-float/2addr v2, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v3

    cmpl-float v2, v3, v9

    if-lez v2, :cond_2

    const/16 v27, 0x1

    :goto_1
    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v15

    if-nez v15, :cond_5

    const-string/jumbo v2, "TaskStackAnimationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "b/27389156 null-task-view prebind:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " postbind:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " prescroll:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " postscroll: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    new-instance v16, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v12, v0, :cond_a

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v11, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v10

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_6
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v10}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v13}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_5

    :cond_7
    if-ge v12, v14, :cond_8

    sub-int v2, v14, v12

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v10, v2, 0x96

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_8
    if-le v12, v14, :cond_9

    sub-int v2, v12, v14

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    rsub-int v2, v2, 0x96

    const/16 v4, 0x64

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_9
    const/16 v10, 0xc8

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_a
    return v26
.end method
