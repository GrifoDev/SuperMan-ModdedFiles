.class public Lcom/android/systemui/recents/events/component/ExpandPipEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ExpandPipEvent.java"


# instance fields
.field public final clearThumbnailWindows:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/component/ExpandPipEvent;->clearThumbnailWindows:Z

    return-void
.end method
