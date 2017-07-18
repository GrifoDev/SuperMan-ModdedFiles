.class Lcom/android/launcher2/AnimationLayer$Anim$6;
.super Ljava/lang/Object;
.source "AnimationLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer$Anim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    if-nez v14, :cond_3

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_1

    :cond_0
    if-eqz v6, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v14, 0x2

    new-array v12, v14, [I

    const/4 v14, 0x2

    new-array v8, v14, [I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    invoke-virtual {v14, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v15}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleX()F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v15, v15

    const/16 v16, 0x0

    aget v16, v8, v16

    add-int v15, v15, v16

    aput v15, v12, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v15}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleY()F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v15, v15

    const/16 v16, 0x1

    aget v16, v8, v16

    add-int v15, v15, v16

    aput v15, v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-static {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->access$400(Lcom/android/launcher2/AnimationLayer$Anim;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-static {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->access$400(Lcom/android/launcher2/AnimationLayer$Anim;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const-string v14, "AnimationLayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onAnimationUpdate to[0]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " t[1]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    aget v14, v12, v14

    const/4 v15, 0x0

    aget v15, v4, v15

    sub-int/2addr v14, v15

    int-to-float v2, v14

    const/4 v14, 0x1

    aget v14, v12, v14

    const/4 v15, 0x1

    aget v15, v4, v15

    sub-int/2addr v14, v15

    int-to-float v3, v14

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    const/4 v15, 0x0

    aget v15, v4, v15

    int-to-float v15, v15

    mul-float v16, v2, v7

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    const/4 v15, 0x1

    aget v15, v4, v15

    int-to-float v15, v15

    mul-float v16, v3, v7

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v14, v14, Landroid/widget/ImageView;

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    instance-of v14, v14, Lcom/android/launcher2/AnimView;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    check-cast v14, Lcom/android/launcher2/AnimView;

    invoke-virtual {v14}, Lcom/android/launcher2/AnimView;->isCrossFadeMode()Z

    move-result v14

    if-nez v14, :cond_6

    :cond_5
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v15, v15, Lcom/android/launcher2/AnimationLayer$Anim;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    int-to-float v15, v13

    div-float v10, v14, v15

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v15, v15, Lcom/android/launcher2/AnimationLayer$Anim;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    int-to-float v15, v5

    div-float v11, v14, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleX()F

    move-result v16

    mul-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    mul-float/2addr v15, v7

    add-float v10, v14, v15

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleY()F

    move-result v16

    mul-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    mul-float/2addr v15, v7

    add-float v11, v14, v15

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v15, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getScaleX()F

    move-result v14

    invoke-virtual {v15, v14}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v15, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getScaleY()F

    move-result v14

    invoke-virtual {v15, v14}, Landroid/view/View;->setScaleY(F)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-static {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->access$300(Lcom/android/launcher2/AnimationLayer$Anim;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v14, v14, Lcom/android/launcher2/AppIconView;

    if-eqz v14, :cond_2

    mul-float v14, v2, v2

    mul-float v15, v3, v3

    add-float/2addr v14, v15

    const/high16 v15, 0x44c80000    # 1600.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_4
    cmpl-float v14, v7, v1

    if-ltz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/launcher2/AnimationLayer$Anim;->access$302(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v14, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v14}, Lcom/android/launcher2/AppIconView;->startFadeShadow()V

    goto/16 :goto_1

    :cond_6
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mToRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleX()F

    move-result v16

    mul-float v15, v15, v16

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    mul-float/2addr v15, v7

    add-float v10, v14, v15

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mToRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleY()F

    move-result v16

    mul-float v15, v15, v16

    int-to-float v0, v5

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    mul-float/2addr v15, v7

    add-float v11, v14, v15

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AnimationLayer$Anim$6;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v14, v14, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v14, v11}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_3

    :cond_8
    const v1, 0x3f19999a    # 0.6f

    goto/16 :goto_4
.end method
