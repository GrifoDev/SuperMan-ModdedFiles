.class public Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ToggleRecentsCloseAllButtonEvent.java"


# instance fields
.field public final focus:Z

.field public final show:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->focus:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->focus:Z

    return-void
.end method
