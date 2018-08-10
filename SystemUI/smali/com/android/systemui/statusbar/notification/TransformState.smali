.class public Lcom/android/systemui/statusbar/notification/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/TransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOwnPosition:[I

.field private mTransformationEndX:F

.field private mTransformationEndY:F

.field protected mTransformedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    return-void
.end method

.method public static createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 7

    instance-of v5, p0, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->initFrom(Landroid/view/View;)V

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x10201c7

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->initFrom(Landroid/view/View;)V

    return-object v0

    :cond_1
    instance-of v5, p0, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->initFrom(Landroid/view/View;)V

    return-object v1

    :cond_2
    instance-of v5, p0, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->initFrom(Landroid/view/View;)V

    return-object v2

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    return-object v4
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 2

    sget-object v1, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TransformState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-object v1
.end method

.method public static setClippingDeactivated(Landroid/view/View;Z)V
    .locals 12

    const v11, 0x7f0a00e5

    const v10, 0x7f0a00e4

    const v9, 0x7f0a00e3

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v5, v9, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_3

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v11, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_3
    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_5

    move-object v4, v5

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :goto_1
    if-nez p1, :cond_6

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v5, v9, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    if-eqz v4, :cond_4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    :cond_4
    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    return-void

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private setTransformationStartScaleX(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0545

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private setTransformationStartScaleY(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0546

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    and-int/lit8 v15, p2, 0x1

    if-eqz v15, :cond_f

    const/4 v10, 0x1

    :goto_0
    and-int/lit8 v15, p2, 0x10

    if-eqz v15, :cond_10

    const/4 v11, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale()Z

    move-result v9

    const/4 v15, 0x0

    cmpl-float v15, p4, v15

    if-eqz v15, :cond_0

    if-eqz v10, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_11

    :cond_0
    :goto_2
    const/4 v15, 0x0

    cmpl-float v15, p4, v15

    if-eqz v15, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v6

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v8

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_4

    :cond_1
    if-eqz v10, :cond_2

    const/4 v15, 0x0

    aget v15, v6, v15

    const/16 v16, 0x0

    aget v16, v8, v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_2
    if-eqz v11, :cond_3

    const/4 v15, 0x1

    aget v15, v6, v15

    const/16 v16, 0x1

    aget v16, v8, v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    if-eqz v9, :cond_15

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_15

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v16

    mul-float v15, v15, v16

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotX(F)V

    :goto_4
    if-eqz v9, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v16

    mul-float v15, v15, v16

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotY(F)V

    :cond_4
    :goto_5
    if-nez v10, :cond_5

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_5
    if-nez v11, :cond_6

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    :cond_6
    if-nez v9, :cond_7

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    :cond_7
    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :cond_8
    sget-object v15, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move/from16 v0, p4

    invoke-interface {v15, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    if-eqz v10, :cond_a

    move v5, v4

    if-eqz p3, :cond_9

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v3, :cond_9

    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    if-eqz v11, :cond_c

    move v5, v4

    if-eqz p3, :cond_b

    const/16 v15, 0x10

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v3, :cond_b

    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    if-eqz v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v12

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v15, v12, v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v12, v15, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setScaleX(F)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v13

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v15, v13, v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v15, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setScaleY(F)V

    :cond_e
    return-void

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_0

    :cond_12
    if-eqz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_0

    :cond_13
    if-eqz v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_8

    goto/16 :goto_2

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v6

    goto/16 :goto_3

    :cond_15
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto/16 :goto_4

    :cond_16
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_5
.end method

.method private transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    move-object/from16 v19, v0

    and-int/lit8 v20, p2, 0x1

    if-eqz v20, :cond_b

    const/4 v13, 0x1

    :goto_0
    and-int/lit8 v20, p2, 0x10

    if-eqz v20, :cond_c

    const/4 v14, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale()Z

    move-result v12

    const/16 v20, 0x0

    cmpl-float v20, p4, v20

    if-nez v20, :cond_2

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v17

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v17, v20

    if-eqz v20, :cond_d

    move/from16 v11, v17

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v18

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v18, v20

    if-eqz v20, :cond_e

    move/from16 v11, v18

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v9

    if-eqz v12, :cond_f

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleX()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setPivotX(F)V

    :goto_4
    if-eqz v12, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleY()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setPivotY(F)V

    :goto_5
    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :cond_2
    sget-object v20, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v10

    if-eqz v13, :cond_5

    const/16 v20, 0x0

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v10, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v4, v0

    move v7, v6

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    :cond_3
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v3, :cond_4

    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v4, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationX(F)V

    :cond_5
    if-eqz v14, :cond_8

    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x1

    aget v21, v10, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v5, v0

    move v7, v6

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    :cond_6
    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v3, :cond_7

    move/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v5, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    if-eqz v12, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v15

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v15, v20

    if-eqz v20, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    invoke-static {v15, v0, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setScaleX(F)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v16

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v16, v20

    if-eqz v20, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    return-void

    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationX()F

    move-result v11

    goto/16 :goto_2

    :cond_e
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationY()F

    move-result v11

    goto/16 :goto_3

    :cond_f
    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto/16 :goto_4

    :cond_10
    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_5
.end method


# virtual methods
.method public abortTransformation()V
    .locals 4

    const/high16 v3, -0x40800000    # -1.0f

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0547

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0548

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0545

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0546

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    return-void
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    return-void
.end method

.method public getLaidOutLocationOnScreen()[I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getLocationOnScreen()[I
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    sub-float v3, v5, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPivotX()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    sub-float v3, v5, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    return-object v0
.end method

.method public getTransformationStartScaleX()F
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a0545

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    return v1

    :cond_0
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartScaleY()F
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a0546

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    return v1

    :cond_0
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartX()F
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a0547

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    return v1

    :cond_0
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformationStartY()F
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f0a0548

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    return v1

    :cond_0
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getTransformedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-object v0
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-void
.end method

.method public prepareFadeIn()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    return-void
.end method

.method public recycle()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/TransformState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    return-void
.end method

.method protected resetTransformedView()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTransformationEndY(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    return-void
.end method

.method public setTransformationStartX(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0547

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setTransformationStartY(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0548

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 2

    const/16 v1, 0x8

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected transformScale()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    const/4 v0, 0x1

    return v0
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method
