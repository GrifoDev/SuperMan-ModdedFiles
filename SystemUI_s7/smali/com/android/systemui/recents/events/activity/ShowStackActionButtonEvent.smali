.class public Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ShowStackActionButtonEvent.java"


# instance fields
.field public final translate:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;->translate:Z

    return-void
.end method
