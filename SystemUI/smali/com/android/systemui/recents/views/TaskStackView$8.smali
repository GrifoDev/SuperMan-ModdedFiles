.class Lcom/android/systemui/recents/views/TaskStackView$8;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskStackView;->-get0(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    iget-object v4, v4, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-virtual {v3}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v4, v7}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_5

    iput-boolean v7, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    :cond_2
    :goto_1
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v2, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    iget-boolean v5, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(ZZ)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-boolean v3, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-eqz v3, :cond_2

    iput-boolean v6, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    goto :goto_1
.end method
