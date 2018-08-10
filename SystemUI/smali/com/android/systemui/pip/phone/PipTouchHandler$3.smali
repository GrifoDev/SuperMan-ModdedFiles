.class Lcom/android/systemui/pip/phone/PipTouchHandler$3;
.super Lcom/android/systemui/pip/phone/PipTouchGesture;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStartedOnLeft:Z

.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchGesture;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set1(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set0(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get1(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->createDismissTarget()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get3(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get11(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v4

    if-nez v4, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v4, v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set2(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get3(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get11(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get1(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipDismissViewController;->showDismissTarget()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float v2, v4, v7

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v7, v1, Landroid/graphics/PointF;->y:F

    add-float v3, v4, v7

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->allowDraggingOffscreen()Z

    move-result v4

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    float-to-int v7, v2

    float-to-int v8, v3

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateDismissFraction()V

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get10(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v4, :cond_6

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-static {v7, v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set1(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get9(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3

    move v6, v5

    :cond_3
    invoke-static {v4, v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set0(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    :cond_4
    return v5

    :cond_5
    move v4, v6

    goto :goto_0

    :cond_6
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_7

    move v4, v5

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    return v6
.end method

.method public onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 14

    const/4 v13, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap0(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getVelocity()Landroid/graphics/PointF;

    move-result-object v11

    iget v0, v11, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v9, 0x1

    :goto_0
    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v2, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get2(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    const/4 v7, 0x1

    :goto_1
    const/4 v10, 0x0

    if-eqz v7, :cond_5

    iget v0, v11, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    xor-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get9(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-nez v0, :cond_4

    move v8, v10

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->shouldDismissPip()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v8, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x336

    invoke-static {v0, v2, v12}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    return v12

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v7, :cond_7

    if-eqz v9, :cond_7

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get10(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v0, :cond_9

    iget v0, v11, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v4

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    :cond_8
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v12}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :goto_4
    if-eqz v7, :cond_b

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    :goto_5
    return v12

    :cond_9
    iget v0, v11, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    goto :goto_3

    :cond_a
    new-instance v6, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler$3;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v13, v13}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v0

    if-eq v0, v5, :cond_e

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v5, v2, v3, v12}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    goto :goto_5
.end method
