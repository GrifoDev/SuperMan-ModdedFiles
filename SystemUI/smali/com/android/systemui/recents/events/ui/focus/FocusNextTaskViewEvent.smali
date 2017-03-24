.class public Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "FocusNextTaskViewEvent.java"


# instance fields
.field public final timerIndicatorDuration:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;->timerIndicatorDuration:I

    return-void
.end method
