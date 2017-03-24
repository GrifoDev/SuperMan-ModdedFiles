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
.method public onTaskStackChanged()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v6, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/RecentsImpl;->-get0(Lcom/android/systemui/recents/RecentsImpl;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    :goto_0
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    if-eqz v4, :cond_0

    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    :cond_0
    iput v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput-boolean v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    iput-boolean v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/RecentsImpl;->-get0(Lcom/android/systemui/recents/RecentsImpl;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1
    return-void

    :cond_2
    const/4 v6, -0x1

    goto :goto_0
.end method
