.class public Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "SlidingViewToggleEvent.java"


# instance fields
.field public final isRecents:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;->isRecents:Z

    return-void
.end method
