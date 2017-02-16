.class Lcom/android/incallui/widget/GradientAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GradientAnimationView.java"


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
    .param p1, "this$0"    # Lcom/android/incallui/widget/GradientAnimationView;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 370
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    # getter for: Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$100(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "animateForScale: onScaleAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->access$202(Lcom/android/incallui/widget/GradientAnimationView;Z)Z

    .line 372
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    # getter for: Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$300(Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    # getter for: Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$300(Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;->onScaleAnimationEnd()V

    .line 375
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 364
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    # getter for: Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/widget/GradientAnimationView;->access$100(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "animateForScale: onScaleAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView$2;->this$0:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x1

    # setter for: Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->access$202(Lcom/android/incallui/widget/GradientAnimationView;Z)Z

    .line 366
    return-void
.end method
