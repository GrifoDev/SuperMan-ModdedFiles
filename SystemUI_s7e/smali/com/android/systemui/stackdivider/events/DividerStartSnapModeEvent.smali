.class public Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerStartSnapModeEvent.java"


# instance fields
.field public final mStart:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    return-void
.end method
