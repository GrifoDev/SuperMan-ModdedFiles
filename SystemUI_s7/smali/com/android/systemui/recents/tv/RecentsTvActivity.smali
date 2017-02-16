.class public Lcom/android/systemui/recents/tv/RecentsTvActivity;
.super Landroid/app/Activity;
.source "RecentsTvActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/tv/RecentsTvActivity$1;,
        Lcom/android/systemui/recents/tv/RecentsTvActivity$2;,
        Lcom/android/systemui/recents/tv/RecentsTvActivity$3;,
        Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;
    }
.end annotation


# instance fields
.field private mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

.field private mFinishedOnStartup:Z

.field private mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

.field private mIgnoreAltTabRelease:Z

.field private mLaunchedFromHome:Z

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private final mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

.field private final mPipRecentsOverlayManagerCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

.field private mPipView:Landroid/view/View;

.field private final mPipViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

.field private mTalkBackEnabled:Z

.field private mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->updatePipUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManagerCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$3;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private updatePipUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->removePipRecentsOverlayView()V

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->startFocusLossAnimation()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "RecentsTvActivity"

    const-string/jumbo v1, "An activity entered PIP mode while Recents is shown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRecentsTasks()V
    .locals 15

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v12

    if-nez v12, :cond_1

    iget-boolean v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    :goto_0
    const/4 v13, -0x1

    invoke-virtual {v4, v6, v13, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getNumberOfVisibleTasks(Landroid/content/Context;)I

    move-result v5

    iget-boolean v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    iput-boolean v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    new-instance v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iget v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v12, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    iput v5, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v5, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual {v4, p0, v6, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    if-nez v12, :cond_4

    new-instance v12, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-direct {v12, v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;-><init>(Ljava/util/List;)V

    iput-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    iget-object v13, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->setTaskStackViewAdapter(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    new-instance v12, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V

    iput-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    :goto_1
    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v12, v7}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->init(Lcom/android/systemui/recents/model/TaskStack;)V

    iget v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/Task;

    iget-object v12, v9, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    if-ne v12, v13, :cond_5

    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    :cond_2
    return-void

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v12, v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->setNewStackTasks(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method dismissRecentsToFocusedTaskOrHome()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->launchFocusedTask()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToHome(Z)V
    .locals 3

    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$4;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    new-instance v1, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->startExitAnimation(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method dismissRecentsToLaunchTargetTaskOrHome(Z)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->launchPreviousTask(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelWindowTransition(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToFocusedTaskOrHome()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToLaunchTargetTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->showEmptyView()V

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->requestFocus(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishedOnStartup:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    if-nez v3, :cond_0

    iput-boolean v6, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishedOnStartup:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/tv/pip/PipManager;->getPipRecentsOverlayManager()Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, p0, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    new-instance v4, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    const v4, 0x7f04011e

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->setContentView(I)V

    const v4, 0x7f13032d

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/tv/views/RecentsTvView;

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    const/16 v5, 0x700

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->setSystemUiVisibility(I)V

    const v4, 0x7f13032f

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v4}, Lcom/android/systemui/tv/pip/PipManager;->getRecentsFocusedPipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManagerCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    invoke-virtual {v4, v5}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->setCallback(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.systemui.recents.tv.RecentsTvActivity.RECENTS_HOME_INTENT_EXTRA"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v4, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/tv/pip/PipManager;->addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->startEnterAnimation(Z)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->onRecentsPaused()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->setEnterFromHomeStartingAnimationValues(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    new-instance v1, Lcom/android/systemui/recents/tv/RecentsTvActivity$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$6;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->setEnterFromAppStartingAnimationValues(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    const/16 v10, 0x8

    const v9, 0x7f130330

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v7}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->onRecentsResumed()V

    invoke-direct {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->updateRecentsTasks()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    iget-boolean v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v7, :cond_4

    iget-boolean v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v7, :cond_3

    move v4, v6

    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v8}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v7

    if-le v7, v5, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    if-eqz v7, :cond_5

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setSelectedPosition(I)V

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    iget-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    if-eqz v7, :cond_2

    const v7, 0x7f13032e

    invoke-virtual {v1, v7}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setAccessibilityTraversalAfter(I)V

    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    const v8, 0x7f13032f

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setAccessibilityTraversalBefore(I)V

    new-instance v7, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v7}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v8, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->getItemCount()I

    move-result v8

    if-lez v8, :cond_7

    :goto_3
    invoke-virtual {v7, v5}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->requestFocus(Z)V

    :goto_4
    return-void

    :cond_3
    move v4, v5

    goto/16 :goto_0

    :cond_4
    move v4, v6

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setSelectedPosition(I)V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v5, v6

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v5}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->removePipRecentsOverlayView()V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iput-boolean v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mIgnoreAltTabRelease:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->finish()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public requestPipControlsFocus()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->startFocusLossAnimation()V

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->getItemCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->requestFocus(Z)V

    return-void
.end method
