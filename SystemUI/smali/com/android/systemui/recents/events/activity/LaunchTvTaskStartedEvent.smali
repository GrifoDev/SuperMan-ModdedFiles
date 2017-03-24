.class public Lcom/android/systemui/recents/events/activity/LaunchTvTaskStartedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "LaunchTvTaskStartedEvent.java"


# instance fields
.field public final taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskStartedEvent;->taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    return-void
.end method
