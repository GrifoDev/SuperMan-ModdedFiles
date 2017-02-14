.class Lcom/android/launcher2/LauncherAppWidgetHostView$1;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    # getter for: Lcom/android/launcher2/LauncherAppWidgetHostView;->mIndicatorHeight:I
    invoke-static {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$300(Lcom/android/launcher2/LauncherAppWidgetHostView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    # getter for: Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$400(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    # getter for: Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$400(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    # getter for: Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$400(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    # invokes: Lcom/android/launcher2/LauncherAppWidgetHostView;->doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;ZI)Z
    invoke-static {v2, v3, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$500(Lcom/android/launcher2/LauncherAppWidgetHostView;Landroid/appwidget/AppWidgetHostView;ZI)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
