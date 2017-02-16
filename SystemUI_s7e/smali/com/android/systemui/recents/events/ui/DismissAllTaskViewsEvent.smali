.class public Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DismissAllTaskViewsEvent.java"


# instance fields
.field public final allTasksCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    return-void
.end method
