.class Lcom/android/incallui/widget/GradientAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;
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

    iput-object p1, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$100(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "animateForScale: onScaleAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->access$202(Lcom/android/incallui/widget/GradientAnimationView;Z)Z

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$300(Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$300(Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;->onScaleAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$100(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "animateForScale: onScaleAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->access$202(Lcom/android/incallui/widget/GradientAnimationView;Z)Z

    return-void
.end method
