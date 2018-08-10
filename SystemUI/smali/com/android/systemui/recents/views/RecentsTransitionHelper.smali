.class public Lcom/android/systemui/recents/views/RecentsTransitionHelper;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;,
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;,
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
    }
.end annotation


# static fields
.field private static final SPECS_WAITING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final COMPOSING_TIMEOUT_MS:I

.field private FREEFORM_HEIGHT_RATIO:F

.field private FREEFORM_WIDTH_RATIO:F

.field private final SPECS_COMPOSING_TIMEOUT:Ljava/lang/Runnable;

.field private mAppTransitionAnimationSpecs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -com_android_systemui_recents_views_RecentsTransitionHelper-mthref-0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->precacheSpecs()V

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_COMPOSING_TIMEOUT:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->COMPOSING_TIMEOUT_MS:I

    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_COMPOSING_TIMEOUT:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const v0, 0x3f2b851f    # 0.67f

    goto :goto_0
.end method

.method private static composeAnimationSpec(Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method private static composeAnimationSpec(Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Landroid/view/AppTransitionAnimationSpec;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutTopCenter(Landroid/graphics/RectF;F)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-interface {p0}, Lcom/android/systemui/recents/views/ITaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-interface {p0}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    :cond_2
    if-eqz p4, :cond_4

    new-instance v1, Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v6, 0x14d

    const-wide/16 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v9}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;FJJ)V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v0, v1, v3, v4}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/ITaskStackView;",
            "I",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    move/from16 v25, p3

    :goto_0
    invoke-static/range {v25 .. v25}, Landroid/app/ActivityManager$StackId;->useAnimationSpecForAppTransition(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    move/from16 v25, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/ITaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v29

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    if-eqz v29, :cond_2

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/TaskView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v8, 0x14d

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v3 .. v11}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v21

    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/ITaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v27

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/recents/views/ITaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v23

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v30, 0x0

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableKeyboardCover:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v30

    :cond_5
    const/4 v2, 0x0

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v4, :cond_e

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/recents/views/ITaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v28

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v4

    iget v0, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    move/from16 v16, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v19, v26, -0x1

    :goto_1
    if-ltz v19, :cond_c

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/model/Task;

    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    move/from16 v0, v25

    if-ne v0, v4, :cond_8

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v27, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v0, v1, v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_9

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v4, v4, v18

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    sub-int v5, v5, v17

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int v7, v7, v18

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    add-int v8, v8, v17

    invoke-virtual {v10, v4, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9
    new-instance v7, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v8, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v12, 0xe9

    const-wide/16 v14, 0xc8

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v15}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_b

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_b
    move-object/from16 v2, v24

    goto/16 :goto_2

    :cond_c
    if-nez v2, :cond_d

    return-object v21

    :cond_d
    move-object/from16 p1, v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v27

    :cond_e
    const/4 v4, 0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_f

    const/4 v4, 0x3

    move/from16 v0, v25

    if-ne v0, v4, :cond_11

    :cond_f
    if-nez v27, :cond_15

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_3
    return-object v21

    :cond_11
    const/4 v4, 0x6

    move/from16 v0, v25

    if-eq v0, v4, :cond_f

    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_f

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v4, :cond_12

    if-nez v2, :cond_f

    :cond_12
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/recents/views/ITaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v19, v26, -0x1

    :goto_4
    if-ltz v19, :cond_19

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x2

    move/from16 v0, v25

    if-ne v0, v4, :cond_14

    :cond_13
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/ITaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v29

    if-nez v29, :cond_17

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_5
    add-int/lit8 v19, v19, -0x1

    goto :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v4, :cond_16

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    :goto_6
    const/4 v7, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v0, v1, v5, v7, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_16
    const/4 v4, 0x0

    goto :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v4, :cond_18

    if-eqz p5, :cond_18

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_18

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string/jumbo v4, "RecentsTransitionHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "composeAnimationSpecs() :: dragging freeform task = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " freeformBounds = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1, v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_19
    return-object v21
.end method

.method private static composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 6

    const/4 v5, 0x0

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget-object v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    :cond_2
    invoke-static {v1, v0, v3, v2, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    return-object v3
.end method

.method private static composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;
    .locals 3

    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    :cond_0
    iget-object v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    iget-object v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v3, "RecentsTransitionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not compose thumbnail for task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at transform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0xffffff

    invoke-static {v6, v6, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-static {v1, v0, p0, v2, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    return-object v3
.end method

.method public static drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    const-string/jumbo v2, "RecentsTransitionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drawViewIntoGraphicBuffer: bufferWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " or bufferHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is wrong."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    const-string/jumbo v2, "RecentsTransition"

    invoke-static {v2, v5}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v1

    invoke-virtual {v1, v3, v3, p0, p1}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v1, v3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {v1, p0, p1}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    invoke-virtual {v0, p3, p3}, Landroid/view/DisplayListCanvas;->scale(FF)V

    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    :cond_2
    if-eqz p2, :cond_3

    instance-of v2, p2, Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v2, :cond_4

    check-cast p2, Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {p2, v0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;I)V

    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    invoke-static {v1, p0, p1}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    return-object v2

    :cond_4
    check-cast p2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p2, v0, v3}, Lcom/android/systemui/recents/views/TaskView;->draw(Landroid/graphics/Canvas;I)V

    goto :goto_0
.end method

.method private freeformLaunchBounds(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ITaskStackView;)Landroid/graphics/Rect;
    .locals 13

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v10

    iget-object v1, v10, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayRect:Landroid/graphics/Rect;

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v10

    iget v7, v10, Landroid/content/res/Configuration;->orientation:I

    sget-boolean v10, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-nez v10, :cond_6

    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    const v10, 0x3f2b851f    # 0.67f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    mul-float/2addr v10, v11

    float-to-int v3, v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    mul-float/2addr v10, v11

    float-to-int v2, v10

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v11

    mul-float/2addr v10, v11

    int-to-float v11, v3

    sub-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v5, v10, 0x2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v11

    mul-float/2addr v10, v11

    int-to-float v11, v2

    sub-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v4, v10, 0x2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v6

    const/4 v10, 0x0

    aget v10, v6, v10

    add-int v8, v10, v5

    const/4 v10, 0x1

    aget v10, v6, v10

    add-int v9, v10, v4

    new-instance v0, Landroid/graphics/Rect;

    add-int v10, v8, v3

    add-int v11, v9, v2

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-ltz v10, :cond_1

    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_2

    :cond_1
    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_7

    const/4 v10, 0x0

    iput v10, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_2
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-ltz v10, :cond_3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_4

    :cond_3
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_8

    const/4 v10, 0x0

    iput v10, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_3
    const-string/jumbo v10, "RecentsTransitionHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "freeformLaunchBounds :: bounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    invoke-interface {p2}, Lcom/android/systemui/recents/views/ITaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    sget-boolean v10, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-nez v10, :cond_0

    const v10, 0x3f2b851f    # 0.67f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    goto/16 :goto_1

    :cond_7
    iget v10, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v3

    iput v10, v0, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_8
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v0, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_11226(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-interface {p1}, Lcom/android/systemui/recents/views/ITaskStackView;->cancelAllTaskViewAnimations()V

    return-void
.end method

.method private startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V
    .locals 8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    const-string/jumbo v1, "RecentsTransitionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTaskActivity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    new-instance v6, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, p4

    move v5, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;Z)V

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$2;

    invoke-direct {v2, p5}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {p1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    new-instance v2, Landroid/view/AppTransitionAnimationSpec;

    iget-object v3, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v0, p2}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_COMPOSING_TIMEOUT:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V

    new-instance v1, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/view/IAppTransitionAnimationSpecsFuture;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_15469(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    :cond_2
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    const v5, 0x7f120973

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_4973()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "RecentsTransitionHelper"

    const-string/jumbo v1, "specs composing timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_8165(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;ZIZZZ)V
    .locals 29

    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v4, :cond_4

    if-eqz p8, :cond_4

    const/4 v4, 0x2

    if-ne v5, v4, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->freeformLaunchBounds(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ITaskStackView;)Landroid/graphics/Rect;

    move-result-object v10

    :goto_1
    if-eqz p4, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v4, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-result-object v28

    new-instance v11, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;

    move-object/from16 v12, p0

    move/from16 v13, p8

    move-object/from16 v14, p4

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p5

    move/from16 v18, p7

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;ZLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;ZZ)V

    move-object/from16 v17, v28

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v17, :cond_6

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->-get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v4

    :goto_3
    const/4 v8, 0x1

    invoke-static {v6, v7, v4, v11, v8}, Landroid/app/ActivityOptions;->makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v16

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v4, :cond_0

    if-eqz p8, :cond_0

    const/4 v4, 0x2

    if-ne v5, v4, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_0
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v4, :cond_1

    if-eqz p7, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_1
    if-nez p4, :cond_7

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v18, v5

    move/from16 v19, p9

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V

    :goto_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    const-string/jumbo v6, "homekey"

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v4, :cond_3

    if-eqz p7, :cond_3

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3
    move/from16 v5, p6

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v17, 0x0

    new-instance v11, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    new-instance v27, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;ZZ)V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v4, :cond_8

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    new-instance v18, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p4

    move-object/from16 v23, v16

    move-object/from16 v24, v17

    move/from16 v25, v5

    move/from16 v26, p9

    invoke-direct/range {v18 .. v26}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v18, v5

    move/from16 v19, p9

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V

    goto/16 :goto_4
.end method

.method public wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method
