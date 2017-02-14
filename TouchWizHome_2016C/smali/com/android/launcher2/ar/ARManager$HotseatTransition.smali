.class Lcom/android/launcher2/ar/ARManager$HotseatTransition;
.super Landroid/transition/ChangeTransform;
.source "ARManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ar/ARManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotseatTransition"
.end annotation


# instance fields
.field private mIconReversePosition:Z

.field private mIconStartDegree:F

.field final synthetic this$0:Lcom/android/launcher2/ar/ARManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/ar/ARManager;FZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->this$0:Lcom/android/launcher2/ar/ARManager;

    invoke-direct {p0}, Landroid/transition/ChangeTransform;-><init>()V

    iput p2, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->mIconStartDegree:F

    iput-boolean p3, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->mIconReversePosition:Z

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/transition/ChangeTransform;->captureEndValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/transition/ChangeTransform;->captureStartValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    # invokes: Lcom/android/launcher2/ar/ARManager;->isHiddenView(Landroid/view/View;)Z
    invoke-static {v14, v15}, Lcom/android/launcher2/ar/ARManager;->access$100(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    # invokes: Lcom/android/launcher2/ar/ARManager;->isChildOfAppWidgetHostView(Landroid/view/View;)Z
    invoke-static {v14, v15}, Lcom/android/launcher2/ar/ARManager;->access$200(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    invoke-super/range {p0 .. p3}, Landroid/transition/ChangeTransform;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_b

    const-wide/16 v14, 0x118

    invoke-virtual {v2, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->this$0:Lcom/android/launcher2/ar/ARManager;

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v14}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v14, v14, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v14, :cond_a

    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v14, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_a

    invoke-virtual {v7, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setPivotY(F)V

    sget-object v14, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->mIconStartDegree:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/ar/ARManager$HotseatTransition;->mIconReversePosition:Z

    if-eqz v14, :cond_9

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v14, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-lez v14, :cond_4

    add-int/lit8 v14, v6, -0x1

    iget v15, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v14, v15

    iget v15, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v7, v14, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v15

    sub-float v11, v14, v15

    :goto_3
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v15

    sub-float v12, v14, v15

    :goto_4
    const-wide/16 v14, 0x8c

    invoke-virtual {v4, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v14, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13, v11, v12}, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;-><init>(Lcom/android/launcher2/ar/ARManager$HotseatTransition;Landroid/view/View;FF)V

    invoke-virtual {v4, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget v14, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-lez v14, :cond_5

    iget v14, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v15, v6, -0x1

    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v7, v14, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    goto :goto_2

    :cond_5
    add-int/lit8 v14, v6, -0x1

    iget v15, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v14, v15

    iget v15, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v7, v14, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_6

    add-int/lit8 v14, v6, -0x1

    iget v15, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v14, v15

    iget v15, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v7, v14, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    goto :goto_2

    :cond_6
    iget v14, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v15, v6, -0x1

    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v7, v14, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    const-wide/16 v14, 0x118

    invoke-virtual {v4, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_b
    move-object v5, v2

    goto/16 :goto_0
.end method
