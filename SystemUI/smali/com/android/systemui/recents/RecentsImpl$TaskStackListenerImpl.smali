.class Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "RecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;

    invoke-static {p2}, Lcom/android/systemui/recents/model/ThumbnailData;->createFromTaskSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;-><init>(ILcom/android/systemui/recents/model/ThumbnailData;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 15

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v10, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v7, :cond_5

    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDockedStack(I)Z

    move-result v10

    if-nez v10, :cond_1

    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v10}, Lcom/android/systemui/recents/RecentsImpl;->-get0(Lcom/android/systemui/recents/RecentsImpl;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    :goto_1
    invoke-virtual {v5, v6, v10, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v11, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/systemui/recents/RecentsImpl;->-wrap0(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/android/systemui/recents/RecentsImpl;->-wrap1(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    new-instance v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v4}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(ZLcom/android/systemui/recents/RecentsActivityLaunchState;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    monitor-exit v11

    new-instance v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    if-eqz v7, :cond_7

    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_2
    iput v10, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    iget v10, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v10, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iget v10, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v10, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10, v6, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v10}, Lcom/android/systemui/recents/RecentsImpl;->-get0(Lcom/android/systemui/recents/RecentsImpl;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_3
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    iput-object v11, v10, Lcom/android/systemui/recents/RecentsImpl;->mLastStack:Lcom/android/systemui/recents/model/TaskStack;

    :cond_4
    return-void

    :cond_5
    iget-boolean v10, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v10, :cond_2

    iget-boolean v10, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v10, -0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_7
    const/4 v10, -0x1

    goto :goto_2
.end method
