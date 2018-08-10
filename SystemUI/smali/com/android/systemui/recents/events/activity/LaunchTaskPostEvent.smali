.class public Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskPostEvent.java"


# instance fields
.field public byDoubleTap:Z

.field public position:I

.field public postRunnable:Ljava/lang/Runnable;

.field public screenPinningRequested:Z

.field public target:I

.field public targetTaskBounds:Landroid/graphics/Rect;

.field public targetTaskStack:I

.field public task:Lcom/android/systemui/recents/model/Task;

.field public taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->byDoubleTap:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->position:I

    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->postRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->position:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->byDoubleTap:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->position:I

    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->byDoubleTap:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->byDoubleTap:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->position:I

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iput-boolean p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iput p6, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    return-void
.end method
