.class Lcom/android/incallui/widget/GradientAnimationView$1;
.super Ljava/lang/Object;
.source "GradientAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/GradientAnimationView;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/GradientAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/widget/GradientAnimationView;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/incallui/widget/GradientAnimationView$1;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView$1;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/incallui/widget/GradientAnimationView;->mStreamFactor:F
    invoke-static {v1, v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$002(Lcom/android/incallui/widget/GradientAnimationView;F)F

    .line 334
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$1;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->invalidate()V

    .line 335
    return-void
.end method
