.class Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;
.super Ljava/lang/Object;
.source "DispatchEventLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v4, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mTo:[I

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->cancel()V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-nez v4, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->getTo()[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->getFrom()[I

    move-result-object v3

    aget v7, v6, v10

    aget v8, v3, v10

    sub-int/2addr v7, v8

    int-to-float v1, v7

    aget v7, v6, v11

    aget v8, v3, v11

    sub-int/2addr v7, v8

    int-to-float v2, v7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v8, v3, v10

    int-to-float v8, v8

    mul-float v9, v1, v5

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v8, v3, v11

    int-to-float v8, v8

    mul-float v9, v2, v5

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->invalidate()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v7, :cond_3

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    const/high16 v8, 0x44c80000    # 1600.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float v7, v5, v0

    if-ltz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-static {v7, v11}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->startFadeShadow()V

    :cond_3
    return-void

    :cond_4
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method
