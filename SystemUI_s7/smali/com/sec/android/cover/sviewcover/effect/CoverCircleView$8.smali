.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get7(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set15(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get20(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockExecuted()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap1(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set18(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    goto :goto_0
.end method
