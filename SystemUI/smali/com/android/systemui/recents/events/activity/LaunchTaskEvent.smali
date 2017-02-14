.class public Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskEvent.java"


# instance fields
.field public final isFreeformDragging:Z

.field public final screenPinningRequested:Z

.field public final targetTaskBounds:Landroid/graphics/Rect;

.field public final targetTaskStack:I

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    iput-boolean p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iput-boolean p6, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    return-void
.end method
