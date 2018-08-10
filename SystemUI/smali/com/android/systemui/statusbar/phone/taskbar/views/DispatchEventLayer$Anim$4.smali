.class Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$4;
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

.field final synthetic val$from:F

.field final synthetic val$to:F


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$4;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$4;->val$from:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$4;->val$to:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$4;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$4;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->invalidate()V

    return-void
.end method
