.class public Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchSplitTaskEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method
