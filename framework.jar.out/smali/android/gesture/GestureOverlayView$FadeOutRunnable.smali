.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$FadeOutRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0xff

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get4(Landroid/gesture/GestureOverlayView;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get2(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get0(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v6

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-wrap0(Landroid/gesture/GestureOverlayView;)V

    :cond_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set4(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set3(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set2(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get5(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v12}, Landroid/gesture/GestureOverlayView;->-set0(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v11}, Landroid/gesture/GestureOverlayView;->-wrap1(Landroid/gesture/GestureOverlayView;I)V

    :goto_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3}, Landroid/gesture/GestureOverlayView;->invalidate()V

    return-void

    :cond_1
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v10}, Landroid/gesture/GestureOverlayView;->-set2(Landroid/gesture/GestureOverlayView;Z)Z

    long-to-float v3, v0

    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->-get0(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->-get3(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v9, v6

    invoke-static {v3, v6}, Landroid/gesture/GestureOverlayView;->-set1(Landroid/gesture/GestureOverlayView;F)F

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->-get1(Landroid/gesture/GestureOverlayView;)F

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Landroid/gesture/GestureOverlayView;->-wrap1(Landroid/gesture/GestureOverlayView;I)V

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const-wide/16 v6, 0x10

    invoke-virtual {v3, p0, v6, v7}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v10}, Landroid/gesture/GestureOverlayView;->-set5(Landroid/gesture/GestureOverlayView;Z)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-wrap0(Landroid/gesture/GestureOverlayView;)V

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set2(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-get5(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v12}, Landroid/gesture/GestureOverlayView;->-set0(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v8}, Landroid/gesture/GestureOverlayView;->-set4(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3, v11}, Landroid/gesture/GestureOverlayView;->-wrap1(Landroid/gesture/GestureOverlayView;I)V

    goto :goto_0
.end method
