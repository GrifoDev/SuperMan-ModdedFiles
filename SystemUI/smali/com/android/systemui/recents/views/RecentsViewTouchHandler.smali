.class public Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# instance fields
.field private mDeviceId:I

.field private mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mDownPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragRequested:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragSlop:F

.field private mDragTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task"
    .end annotation
.end field

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mRv:Lcom/android/systemui/recents/views/RecentsView;

.field private mTaskView:Lcom/android/systemui/recents/views/TaskView;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task_view_"
    .end annotation
.end field

.field private mTaskViewOffset:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mVisibleDockStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Point;->set(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v15, v12, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v16, v13, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, v12, v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, v13, v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    float-to-double v0, v3

    move-wide/from16 v20, v0

    cmpl-double v3, v18, v20

    if-lez v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    float-to-int v3, v12

    float-to-int v4, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    :cond_2
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DropTarget;

    float-to-int v3, v12

    float-to-int v4, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v11, v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eq v3, v11, :cond_5

    const-string/jumbo v4, "RecentsViewTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleTouchEvent :: drop target is change to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v11, :cond_7

    const-string/jumbo v3, "null"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v7, v11}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    if-ne v9, v3, :cond_9

    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_8
    const-string/jumbo v4, "RecentsViewTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleTouchEvent :: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v10, :cond_a

    const-string/jumbo v3, "canceled"

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " drag t="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v17, v0

    if-nez v10, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    :goto_5
    move-object/from16 v0, v17

    invoke-direct {v7, v8, v0, v3}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    const-string/jumbo v3, "end"

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSnapAlgorithm()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-void
.end method


# virtual methods
.method public getVisibleDockStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibleFreeformState()Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v12, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    iput-boolean v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x2

    new-array v4, v8, [I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8, v4}, Lcom/android/systemui/recents/views/RecentsView;->getLocationInWindow([I)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v10

    aget v11, v4, v9

    sub-int/2addr v10, v11

    iget-object v11, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v11

    aget v12, v4, v12

    sub-int/2addr v11, v12

    iget-object v12, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Point;->set(II)V

    iget-boolean v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->isUserTouchInitiated:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v10

    int-to-float v6, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v10

    int-to-float v7, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v8, :cond_4

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v8, v8, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    :goto_0
    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v11, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget v11, v11, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    invoke-static {v8, v10, v11}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v8, v8, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v8, :cond_5

    :cond_1
    iput-object v13, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v8, :cond_6

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v8, v8, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    :goto_1
    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v8, v8, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v8, :cond_8

    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget v8, v8, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v8

    :goto_2
    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x103012b

    invoke-direct {v8, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12095f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v11, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v9, v10, v11, p0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/RecentsViewTouchHandler;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    invoke-static {v8}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v8, 0x3fd

    invoke-virtual {v0, v8}, Landroid/view/InputDevice;->setPointerType(I)V

    :cond_3
    return-void

    :cond_4
    move v8, v9

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v2

    array-length v10, v2

    move v8, v9

    :goto_4
    if-ge v8, v10, :cond_1

    aget-object v1, v2, v8

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/systemui/recents/model/TaskStack$DockState;->update(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    move v8, v9

    goto/16 :goto_1

    :cond_7
    move v8, v9

    goto :goto_2

    :cond_8
    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v8, :cond_2

    sget-object v3, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->FREEFORM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->update(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->updateFreeformArea(IILandroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    goto :goto_3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return v2
.end method

.method public registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
