.class public Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ActivityPinnedEvent.java"


# instance fields
.field public final taskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;->taskId:I

    return-void
.end method
