.class public Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskPostEvent.java"


# instance fields
.field public isFreeformDragging:Z

.field public postRunnable:Ljava/lang/Runnable;

.field public screenPinningRequested:Z

.field public target:I

.field public targetTaskBounds:Landroid/graphics/Rect;

.field public targetTaskStack:I

.field public task:Lcom/android/systemui/recents/model/Task;

.field public taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->postRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iput-boolean p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iput-boolean p6, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    iput p7, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    return-void
.end method
