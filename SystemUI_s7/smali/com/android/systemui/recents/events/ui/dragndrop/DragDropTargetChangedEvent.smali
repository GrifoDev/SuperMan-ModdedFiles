.class public Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DragDropTargetChangedEvent.java"


# instance fields
.field public final dropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    return-void
.end method
