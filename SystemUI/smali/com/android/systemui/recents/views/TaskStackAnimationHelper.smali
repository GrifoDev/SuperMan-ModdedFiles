.class public Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;,
        Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;
    }
.end annotation


# static fields
.field private static final DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
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
.method static synthetic -com_android_systemui_recents_views_TaskStackAnimationHelper_lambda$1(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -com_android_systemui_recents_views_TaskStackAnimationHelper_lambda$2(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V
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

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

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

    return-void
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


# virtual methods
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

    const v29, 0x7f0d0320

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    const v29, 0x7f0d0321

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

    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

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
    if-ltz v12, :cond_12

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

    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v29, :cond_2

    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    :cond_2
    if-eqz v11, :cond_c

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    :cond_3
    :goto_5
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

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

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v9, :cond_a

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

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    :cond_b
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

    goto/16 :goto_5

    :cond_c
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    :cond_d
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

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

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/recents/views/TaskView;->onPrepareLaunchTargetForEnterAnimation()V

    goto/16 :goto_5

    :cond_f
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

    goto/16 :goto_5

    :cond_10
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    if-eqz v13, :cond_11

    move/from16 v18, v16

    :goto_6
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

    goto/16 :goto_5

    :cond_11
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3f666666    # 0.9f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v18, v0

    goto :goto_6

    :cond_12
    return-void
.end method

.method public startDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
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

    iget-object v10, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

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

    sget-boolean v9, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

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

    new-instance v10, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;

    invoke-direct {v10, p0, p2, v8}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

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

.method public startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;

    invoke-direct {v3, v2, p1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V

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

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;

    invoke-direct {v3, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;-><init>(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

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

.method public startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 30

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v27

    if-nez v27, :cond_0

    return-void

    :cond_0
    const v27, 0x7f0c003a

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    const v27, 0x7f0c003b

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    const v27, 0x7f0c0043

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v22

    const/4 v14, 0x0

    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v27, :cond_1

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    :cond_1
    :goto_0
    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v27, :cond_2

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    :cond_2
    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v27, :cond_3

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    :cond_3
    add-int/lit8 v10, v22, -0x1

    :goto_1
    if-ltz v10, :cond_b

    sub-int v27, v22, v10

    add-int/lit8 v21, v27, -0x1

    move/from16 v20, v10

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    if-eqz v12, :cond_c

    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v27, :cond_4

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    :cond_4
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    :cond_5
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    new-instance v27, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    const/16 v28, 0x5

    move/from16 v0, v28

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    mul-int/lit8 v28, v28, 0x21

    const/16 v29, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInitialPlayTime(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    const/16 v28, 0x5

    move/from16 v0, v28

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    mul-int/lit8 v28, v28, 0x10

    const/16 v29, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    const/16 v28, 0x6

    const/16 v29, 0x12c

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    const/16 v28, 0x4

    const/16 v29, 0x64

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    sget-object v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v29, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    sget-object v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v29, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    add-int/lit8 v27, v22, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    :cond_6
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v27

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_1

    new-instance v14, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskStackViewScroller;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_9

    new-instance v27, Landroid/os/Handler;

    invoke-direct/range {v27 .. v27}, Landroid/os/Handler;-><init>()V

    const-wide/16 v28, 0x190

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    if-nez v22, :cond_a

    return-void

    :cond_a
    add-int/lit8 v27, v22, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    :cond_b
    return-void

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_d
    new-instance v19, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v27, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    new-instance v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    const/16 v29, 0x190

    move-object/from16 v0, v19

    move/from16 v1, v29

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    const/16 v27, 0x4

    const/16 v28, 0xe9

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    add-int/lit8 v27, v22, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto/16 :goto_3

    :cond_f
    if-eqz v8, :cond_6

    new-instance v19, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v27, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_3

    :cond_10
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    new-instance v27, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    mul-int/lit8 v28, v20, 0x21

    add-int v28, v28, v9

    const/16 v29, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    sget-object v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v29, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    const/16 v28, 0x6

    const/16 v29, 0x30

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_3
.end method

.method public startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v16

    if-nez v16, :cond_0

    return-void

    :cond_0
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x3f333333    # 0.7f

    mul-float v16, v16, v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v7, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v13, :cond_5

    sub-int v16, v13, v5

    add-int/lit8 v12, v16, -0x1

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v16

    if-eqz v16, :cond_1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    sget-boolean v16, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v16, :cond_2

    new-instance v11, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v16, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    new-instance v17, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    const/16 v18, 0x1b1

    move/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v11, v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    sget-boolean v16, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_1

    :cond_2
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v16

    mul-int/lit8 v4, v16, 0x21

    new-instance v16, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    const/16 v17, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v16

    const/16 v17, 0x6

    const/16 v18, 0xc8

    invoke-virtual/range {v16 .. v18}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v16

    sget-object v17, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v18, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    goto/16 :goto_2

    :cond_3
    sget-object v11, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    int-to-float v0, v6

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f0c003c

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v13, 0x7f0d0320

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
    if-ge v3, v9, :cond_4

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    if-eqz v4, :cond_2

    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v13, :cond_2

    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v13, v6, v4}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    :goto_1
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-eqz v2, :cond_1

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

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
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

    goto :goto_2

    :cond_4
    return-void
.end method

.method public startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 24

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

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

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

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
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
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$9;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;FLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_6

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

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
    const/4 v2, 0x0

    goto :goto_0

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

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v9

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

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2

    :cond_6
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

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    :goto_0
    add-float/2addr v2, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v3

    cmpl-float v2, v3, v9

    if-lez v2, :cond_1

    const/16 v27, 0x1

    :goto_1
    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

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

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v2, :cond_3

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

    if-nez v15, :cond_4

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

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_2
    const/16 v26, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    goto/16 :goto_3

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    new-instance v16, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V

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

    if-ge v12, v0, :cond_9

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

    if-eqz v2, :cond_5

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
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

    if-eqz v27, :cond_6

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

    :cond_6
    if-ge v12, v14, :cond_7

    sub-int v2, v14, v12

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v10, v2, 0x96

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_7
    if-le v12, v14, :cond_8

    sub-int v2, v12, v14

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    rsub-int v2, v2, 0x96

    const/16 v4, 0x64

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_8
    const/16 v10, 0xc8

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_9
    return v26
.end method
