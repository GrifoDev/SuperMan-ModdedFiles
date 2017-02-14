.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
.super Landroid/support/v17/leanback/widget/HorizontalGridView;
.source "TaskStackHorizontalGridView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;


# instance fields
.field private mFocusedTask:Lcom/android/systemui/recents/model/Task;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/tv/views/TaskCardView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->findFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setWindowAlignment(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setImportantForAccessibility(I)V

    invoke-super {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->onAttachedToWindow()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    if-eq v1, v6, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    if-eq v1, v6, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/tv/views/TaskCardView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13e

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->addTaskAt(Lcom/android/systemui/recents/model/Task;I)V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v1, p2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_3

    const v1, 0x7f0f044e

    :goto_0
    invoke-direct {v3, v1, p6}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_2
    return-void

    :cond_3
    const v1, 0x7f0f044f

    goto :goto_0
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0

    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0

    return-void
.end method

.method public startFocusGainAnimation()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->startFocusGainAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startFocusLossAnimation()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->startFocusLossAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
