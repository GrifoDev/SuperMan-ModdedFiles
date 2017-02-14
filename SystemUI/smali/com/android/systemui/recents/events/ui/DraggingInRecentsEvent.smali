.class public Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DraggingInRecentsEvent.java"


# instance fields
.field public final distanceFromTop:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;->distanceFromTop:F

    return-void
.end method
