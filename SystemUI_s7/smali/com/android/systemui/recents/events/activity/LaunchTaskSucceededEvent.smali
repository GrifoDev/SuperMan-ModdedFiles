.class public Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskSucceededEvent.java"


# instance fields
.field public final taskIndexFromStackFront:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    return-void
.end method
