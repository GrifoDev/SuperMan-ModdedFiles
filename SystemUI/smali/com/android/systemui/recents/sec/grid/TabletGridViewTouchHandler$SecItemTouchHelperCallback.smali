.class public Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "TabletGridViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecItemTouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$SecItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v2

    return v2
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTaskView()Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    return-void
.end method
