.class public Lcom/android/systemui/recents/events/component/DockedStackExistsChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DockedStackExistsChangedEvent.java"


# instance fields
.field public final exists:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/component/DockedStackExistsChangedEvent;->exists:Z

    return-void
.end method
