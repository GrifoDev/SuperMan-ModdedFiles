.class public Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskInformationEvent.java"


# instance fields
.field public final launchTaskIndex:I

.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->launchTaskIndex:I

    return-void
.end method
