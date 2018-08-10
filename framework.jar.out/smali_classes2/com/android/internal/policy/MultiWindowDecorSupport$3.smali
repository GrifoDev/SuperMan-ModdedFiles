.class Lcom/android/internal/policy/MultiWindowDecorSupport$3;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiWindowDecorSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get7(Lcom/android/internal/policy/MultiWindowDecorSupport;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get3(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v1, v4}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-set0(Lcom/android/internal/policy/MultiWindowDecorSupport;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MultiWindowDecorSupport"

    const-string/jumbo v2, "mHideCaptionRunnable Return, isFullScreenFreeform=false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v4}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-wrap0(Lcom/android/internal/policy/MultiWindowDecorSupport;IZZ)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get3(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method
