.class Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;
.super Ljava/lang/Object;
.source "AbstractTaskGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventBusObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;)V
    .locals 8

    const/4 v7, 0x2

    const-string/jumbo v2, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v3, "onBusEvent(RecentsViewModeChangedEvent) isDone=%b, willExit=%b"

    new-array v4, v7, [Ljava/lang/Object;

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->isDone:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->willExit:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-eq v2, v7, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-boolean v3, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->isDone:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->updateTaskLockState(Z)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->updateViewLockState()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v2, "onBusEvent(UnlockTaskEvent) taskId=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v1, v1, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget v2, p1, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_0

    iput-boolean v5, v0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/TaskLockPreference;->removeLockedTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-static {v1, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->-wrap0(Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v1, v1, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget v2, p1, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v1, v1, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZ)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->detachChildViews()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v3, v3, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v3, v3, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getLockedTaskCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v4, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120a26

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v3, v3, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, v0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-direct {v4, v0}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v4, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120a25

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "TabletRecents_AbstractTaskGridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip DeleteTaskDataEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;->this$0:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x165

    invoke-static {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    return-void
.end method
