.class public Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "RecentsAppLockEvent.java"


# instance fields
.field public inEditMode:Z

.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->inEditMode:Z

    return-void
.end method
