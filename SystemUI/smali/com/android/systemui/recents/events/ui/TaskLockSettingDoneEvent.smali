.class public Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "TaskLockSettingDoneEvent.java"


# instance fields
.field public lockedTaskCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;->lockedTaskCount:I

    return-void
.end method
