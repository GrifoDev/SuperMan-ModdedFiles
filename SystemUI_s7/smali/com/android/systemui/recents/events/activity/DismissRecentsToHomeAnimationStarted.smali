.class public Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DismissRecentsToHomeAnimationStarted.java"


# instance fields
.field public final animated:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    return-void
.end method
