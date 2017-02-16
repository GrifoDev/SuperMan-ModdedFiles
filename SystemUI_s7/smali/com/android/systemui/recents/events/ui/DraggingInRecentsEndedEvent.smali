.class public Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DraggingInRecentsEndedEvent.java"


# instance fields
.field public final velocity:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    return-void
.end method
