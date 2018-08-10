.class Lcom/android/systemui/stackdivider/DividerView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/stackdivider/GuideViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-wrap0(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v5}, Lcom/android/systemui/stackdivider/DividerView;->-get9(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerView;->-get8(Lcom/android/systemui/stackdivider/DividerView;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/DividerView;->-get2(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v8}, Lcom/android/systemui/stackdivider/DividerView;->-get1(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->onLongPress(Lcom/android/systemui/stackdivider/DividerView;IIZILandroid/graphics/Rect;II)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get6(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->-wrap1(Lcom/android/systemui/stackdivider/DividerView;II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get7(Lcom/android/systemui/stackdivider/DividerView;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    const-string/jumbo v4, "onSingleTapConfirmed"

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->setReason(Ljava/lang/String;)Lcom/android/systemui/recents/events/EventBus$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1
    return v6
.end method
