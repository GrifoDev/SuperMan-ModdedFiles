.class public Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;
.super Ljava/lang/Object;
.source "TabletGridViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;,
        Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;,
        Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDeltaPoint:Landroid/graphics/Point;

.field mDownPoint:Landroid/graphics/Point;

.field mLastPoint:Landroid/graphics/Point;

.field mMovePoint:Landroid/graphics/Point;

.field mOnItemTouchListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;

.field mOverScrollHelper:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;

.field mScrollTouchSlop:I

.field mTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field mTouchHelperCallback:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;

.field mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mDownPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mLastPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mDeltaPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    new-instance v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mOnItemTouchListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mOnItemTouchListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecOnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    new-instance v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mTouchHelperCallback:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mTouchHelperCallback:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mScrollTouchSlop:I

    new-instance v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mOverScrollHelper:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;

    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->onPreTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Point;->set(II)V

    return-void

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mLastPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v0, v4, v6

    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mLastPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v1, v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mDeltaPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mDownPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v6

    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mDownPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v3, v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->mMovePoint:Landroid/graphics/Point;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
