.class public Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTvTaskEvent.java"


# instance fields
.field public final targetTaskBounds:Landroid/graphics/Rect;

.field public final targetTaskStack:I

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskStack:I

    return-void
.end method
