.class public Lcom/android/systemui/recents/misc/RecentsStatistics;
.super Ljava/lang/Object;
.source "RecentsStatistics.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2

    const-string/jumbo v0, "DOBY"

    const-string/jumbo v1, "RecentsLong"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;)V
    .locals 2

    const-string/jumbo v0, "DOBY"

    const-string/jumbo v1, "RecentsDragging"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 2

    const-string/jumbo v0, "DOBY"

    const-string/jumbo v1, "RecentsMWButton"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 2

    const-string/jumbo v0, "RC01"

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FFBY"

    const-string/jumbo v1, "RecentsDragging"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2

    const-string/jumbo v0, "RCA1"

    iget v1, p1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 2

    const-string/jumbo v1, "RDBY"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->bySwipe:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "swipe"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "button"

    goto :goto_0
.end method

.method sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsStatistics$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/RecentsStatistics$1;-><init>(Lcom/android/systemui/recents/misc/RecentsStatistics;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsStatistics$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/RecentsStatistics$2;-><init>(Lcom/android/systemui/recents/misc/RecentsStatistics;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
