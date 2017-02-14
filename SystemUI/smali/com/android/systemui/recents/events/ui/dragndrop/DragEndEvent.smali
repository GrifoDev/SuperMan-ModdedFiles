.class public Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DragEndEvent.java"


# instance fields
.field public final dropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    return-void
.end method
