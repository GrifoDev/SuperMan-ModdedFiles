.class Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;
.super Ljava/lang/Object;
.source "TabletGridViewTouchHandler.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecOnItemTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->isLayoutChangeAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->onPreTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget v1, v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mScrollTouchSlop:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v1, v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mOverScrollHelper:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v1, v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mDeltaPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->checkOverScrollCondition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->isLayoutChangeAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->onPreTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mOverScrollHelper:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v1, v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->applyOverScrollEffect(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mOverScrollHelper:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->isNeedRestoreAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mOverScrollHelper:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->startRestoreAnimation()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
