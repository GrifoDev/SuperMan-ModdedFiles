.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;ZIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field private triggered:Z

.field final synthetic val$isFreeformDragging:Z

.field final synthetic val$screenPinningRequested:Z

.field final synthetic val$snapViewRequested:Z

.field final synthetic val$stackView:Lcom/android/systemui/recents/views/ITaskStackView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;

.field final synthetic val$taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;ZLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;ZZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$isFreeformDragging:Z

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p5, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$stackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iput-boolean p6, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$screenPinningRequested:Z

    iput-boolean p7, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$snapViewRequested:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->triggered:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper$1_10301()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "fromRecent"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->triggered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$isFreeformDragging:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$taskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$taskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$stackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->cancelAllTaskViewAnimations()V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$screenPinningRequested:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "RecentsTransitionHelper"

    const-string/jumbo v1, "Screen pining requested by onAnimationStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get5(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get5(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;I)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get5(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$snapViewRequested:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1b1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->triggered:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isFullscreen:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$isFreeformDragging:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/LaunchNonFullscreenTaskEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/LaunchNonFullscreenTaskEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_4
    return-void
.end method
