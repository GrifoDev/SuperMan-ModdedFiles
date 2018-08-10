.class public Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchPairedTaskEvent.java"


# instance fields
.field public final mTask:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    return-void
.end method
