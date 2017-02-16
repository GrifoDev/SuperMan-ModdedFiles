.class public Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "MultiWindowStateChangedEvent.java"


# instance fields
.field public final inMultiWindow:Z

.field public final isRecentsActivityVisible:Z

.field public final showDeferredAnimation:Z

.field public final stack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(ZZLcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    iput-boolean p4, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->isRecentsActivityVisible:Z

    return-void
.end method
