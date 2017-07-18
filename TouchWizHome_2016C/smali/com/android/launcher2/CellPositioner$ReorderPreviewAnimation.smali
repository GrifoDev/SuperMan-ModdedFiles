.class Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "CellPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderPreviewAnimation"
.end annotation


# static fields
.field public static final MODE_HINT:I = 0x0

.field public static final MODE_PREVIEW:I = 0x1

.field private static final PREVIEW_DURATION:I = 0x14d


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field initDeltaX:F

.field initDeltaY:F

.field mode:I

.field repeating:Z

.field final synthetic this$0:Lcom/android/launcher2/CellPositioner;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellPositioner;Landroid/view/View;IIIIIII)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->repeating:Z

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/CellPositioner;->access$200(Lcom/android/launcher2/CellPositioner;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    const/4 v3, 0x0

    aget v13, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    const/4 v3, 0x1

    aget v15, v2, v3

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/CellPositioner;->access$200(Lcom/android/launcher2/CellPositioner;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    const/4 v3, 0x0

    aget v14, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    const/4 v3, 0x1

    aget v16, v2, v3

    sub-int v10, v14, v13

    sub-int v11, v16, v15

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaY:F

    if-nez p3, :cond_0

    const/4 v12, -0x1

    :goto_0
    if-ne v10, v11, :cond_1

    if-nez v10, :cond_1

    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->mode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->initDeltaX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->initDeltaY:F

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/CellPositioner;->access$200(Lcom/android/launcher2/CellPositioner;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->onPreReorderAnimation(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    if-nez v11, :cond_2

    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaX:F

    goto :goto_1

    :cond_2
    if-nez v10, :cond_3

    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_1

    :cond_3
    int-to-float v2, v11

    int-to-float v3, v10

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaX:F

    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaY:F

    goto/16 :goto_1
.end method

.method private cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method animate()V
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->this$0:Lcom/android/launcher2/CellPositioner;

    iget-object v3, v3, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->this$0:Lcom/android/launcher2/CellPositioner;

    iget-object v3, v3, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    invoke-direct {v1}, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->cancel()V

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->this$0:Lcom/android/launcher2/CellPositioner;

    iget-object v3, v3, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BaseItem;->setIsBouncingItem(Z)V

    iget v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->completeAnimationImmediately()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BaseItem;->setIsBouncingItem(Z)V

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->mode:I

    if-nez v3, :cond_3

    const-wide/16 v4, 0x14a

    :goto_1
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;-><init>(Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$2;-><init>(Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->this$0:Lcom/android/launcher2/CellPositioner;

    iget-object v3, v3, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x14d

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method completeAnimationImmediately()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
