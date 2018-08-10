.class Lcom/android/systemui/recents/views/TaskStackView$5;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$tasks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->val$tasks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v8}, Lcom/android/systemui/recents/views/TaskStackView;->-get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getLockedTaskCount()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f120a26

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_1
    if-ltz v2, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    iget-boolean v8, v8, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v10, v8}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f120a25

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "TaskStackView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Skip DeleteTaskDataEvent : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " id : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-instance v6, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    new-instance v8, Lcom/android/systemui/recents/views/TaskStackView$5$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/views/TaskStackView$5$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView$5;)V

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    add-int/lit8 v2, v4, -0x1

    :goto_3
    if-ltz v2, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v8, :cond_3

    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v8, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    new-instance v9, Lcom/android/systemui/recents/views/TaskStackView$5$2;

    invoke-direct {v9, p0, v7, v6}, Lcom/android/systemui/recents/views/TaskStackView$5$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView$5;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    const/16 v10, 0x96

    invoke-direct {v0, v10, v8, v9}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    const/4 v8, 0x0

    iput v8, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v7, v1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x165

    invoke-static {v8, v9}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    return-void
.end method
