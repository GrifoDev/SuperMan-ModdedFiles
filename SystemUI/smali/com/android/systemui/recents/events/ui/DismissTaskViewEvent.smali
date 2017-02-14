.class public Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DismissTaskViewEvent.java"


# instance fields
.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method
