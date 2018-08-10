.class public Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ToggleButtonsContainerEvent.java"


# instance fields
.field public final focus:Z

.field public final leftward:Z

.field public final show:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->show:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->focus:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->leftward:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->show:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->focus:Z

    iput-boolean p3, p0, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->leftward:Z

    return-void
.end method
