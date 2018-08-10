.class public Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "TaskSnapshotChangedEvent.java"


# instance fields
.field public final taskId:I

.field public final thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;


# direct methods
.method public constructor <init>(ILcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->taskId:I

    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    return-void
.end method
