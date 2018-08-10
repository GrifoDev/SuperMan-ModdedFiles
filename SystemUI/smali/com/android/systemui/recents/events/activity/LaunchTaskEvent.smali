.class public Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskEvent.java"


# instance fields
.field public isFreeformDragging:Z

.field public final screenPinningRequested:Z

.field public screenRatioChangeRequested:Z

.field public final snapViewRequested:Z

.field public final targetTaskBounds:Landroid/graphics/Rect;

.field public final targetTaskStack:I

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenRatioChangeRequested:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    iput-boolean p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iput-boolean p6, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->snapViewRequested:Z

    iput-boolean p8, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenRatioChangeRequested:Z

    iput-boolean p7, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    return-void
.end method
