.class public Lcom/android/systemui/recents/misc/RecentsStatistics;
.super Ljava/lang/Object;
.source "RecentsStatistics.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;)V
    .locals 3

    const-string/jumbo v1, "502"

    const-string/jumbo v2, "5132"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;->recommendation:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Frequently used apps"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "MW apps"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOBY"

    const-string/jumbo v2, "RecentsLong"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsEvent;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "505"

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "500"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOBY"

    const-string/jumbo v2, "RecentsDragging"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;)V
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5112"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOBY"

    const-string/jumbo v2, "RecentsMWButton"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "FFBY"

    const-string/jumbo v2, "RecentsDragging"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "503"

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "5141"

    :goto_1
    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->launchTaskIndex:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string/jumbo v0, "500"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "5101"

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->byDoubleTap:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5110"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->willExit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "501"

    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "505"

    :goto_1
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "500"

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;)V
    .locals 6

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "5104"

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->packageName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->enlarged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "503"

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "5144"

    :goto_1
    iget v2, p1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string/jumbo v0, "500"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "5105"

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "505"

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "500"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;)V
    .locals 3

    iget v0, p1, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "503"

    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "5145"

    :goto_2
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "500"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "5106"

    goto :goto_2

    :pswitch_1
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5113"

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;->value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5107"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5108"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "503"

    :goto_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "5148"

    :goto_4
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "500"

    goto :goto_3

    :cond_3
    const-string/jumbo v1, "5109"

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->inEditMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "503"

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "5143"

    :goto_1
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "500"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "5103"

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;->isRecents:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "500"

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;->isRecents:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "502"

    const-string/jumbo v1, "5131"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "502"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5111"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "504"

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "5149"

    :goto_1
    iget v2, p1, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;->lockedTaskCount:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string/jumbo v0, "501"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "5121"

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskLockedEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "504"

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "5150"

    :goto_1
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "501"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "5122"

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "503"

    const-string/jumbo v1, "5142"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "500"

    const-string/jumbo v2, "5102"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->bySwipe:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Swipe"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Close button"

    goto :goto_1
.end method
