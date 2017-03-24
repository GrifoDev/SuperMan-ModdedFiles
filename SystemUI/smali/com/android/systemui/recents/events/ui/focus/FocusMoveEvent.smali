.class public Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "FocusMoveEvent.java"


# instance fields
.field public direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;->direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    return-void
.end method
