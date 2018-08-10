.class public Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "RecentsViewModeChangedEvent.java"


# instance fields
.field public final isDone:Z

.field public final willExit:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->isDone:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->willExit:Z

    return-void
.end method
