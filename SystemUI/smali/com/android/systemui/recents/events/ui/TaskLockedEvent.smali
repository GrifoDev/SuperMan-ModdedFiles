.class public Lcom/android/systemui/recents/events/ui/TaskLockedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "TaskLockedEvent.java"


# instance fields
.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;->packageName:Ljava/lang/String;

    return-void
.end method
