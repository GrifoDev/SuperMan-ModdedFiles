.class Lcom/samsung/android/visualeffect/circle/Circle$3;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/circle/Circle;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/Circle;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/Circle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/Circle$3;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle$3;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/circle/Circle;->-get1(Lcom/samsung/android/visualeffect/circle/Circle;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle$3;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/circle/Circle;->-get2(Lcom/samsung/android/visualeffect/circle/Circle;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/visualeffect/circle/Circle$3$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/visualeffect/circle/Circle$3$1;-><init>(Lcom/samsung/android/visualeffect/circle/Circle$3;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
