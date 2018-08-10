.class public Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "UnlockTaskEvent.java"


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;->id:I

    iput p1, p0, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;->id:I

    return-void
.end method
