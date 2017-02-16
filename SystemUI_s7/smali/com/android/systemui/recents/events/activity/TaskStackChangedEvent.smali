.class public Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "TaskStackChangedEvent.java"


# instance fields
.field public final stack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    return-void
.end method
