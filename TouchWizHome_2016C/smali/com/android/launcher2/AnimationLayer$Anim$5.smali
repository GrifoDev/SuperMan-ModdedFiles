.class Lcom/android/launcher2/AnimationLayer$Anim$5;
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

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_3

    move v4, v8

    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    if-eqz v4, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v4, v9

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v3

    aget v7, v6, v9

    aget v10, v3, v9

    sub-int/2addr v7, v10

    int-to-float v1, v7

    aget v7, v6, v8

    aget v10, v3, v8

    sub-int/2addr v7, v10

    int-to-float v2, v7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    aget v10, v3, v9

    int-to-float v10, v10

    mul-float v11, v1, v5

    add-float/2addr v10, v11

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationX(F)V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    aget v10, v3, v8

    int-to-float v10, v10

    mul-float v11, v2, v5

    add-float/2addr v10, v11

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v10, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    invoke-virtual {v10, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v10, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v10, v7}, Landroid/view/View;->setScaleY(F)V

    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    # getter for: Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z
    invoke-static {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->access$300(Lcom/android/launcher2/AnimationLayer$Anim;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_2

    mul-float v7, v1, v1

    mul-float v10, v2, v2

    add-float/2addr v7, v10

    const/high16 v10, 0x44c80000    # 1600.0f

    cmpl-float v7, v7, v10

    if-lez v7, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    cmpl-float v7, v5, v0

    if-ltz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    # setter for: Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z
    invoke-static {v7, v8}, Lcom/android/launcher2/AnimationLayer$Anim;->access$302(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v7}, Lcom/android/launcher2/AppIconView;->startFadeShadow()V

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v10, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    invoke-virtual {v10, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v10, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v10, v7}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_6
    const v0, 0x3f19999a    # 0.6f

    goto :goto_3
.end method
