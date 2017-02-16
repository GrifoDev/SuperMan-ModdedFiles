.class public Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "AllTaskViewsDismissedEvent.java"


# instance fields
.field public final launchHome:Z

.field public final msgResId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->launchHome:Z

    return-void
.end method
