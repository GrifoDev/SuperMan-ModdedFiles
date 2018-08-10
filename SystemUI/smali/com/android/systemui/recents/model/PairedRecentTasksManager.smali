.class public Lcom/android/systemui/recents/model/PairedRecentTasksManager;
.super Ljava/lang/Object;
.source "PairedRecentTasksManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final sPairedRecentTaskIcon:Lcom/android/systemui/recents/model/PairedRecentTaskIcon;

.field private final sPairedRecentTaskLoader:Lcom/android/systemui/recents/model/PairedRecentTaskLoader;

.field private final sPairedRecentTaskThumbnail:Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->sPairedRecentTaskLoader:Lcom/android/systemui/recents/model/PairedRecentTaskLoader;

    new-instance v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->sPairedRecentTaskThumbnail:Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;

    new-instance v0, Lcom/android/systemui/recents/model/PairedRecentTaskIcon;

    iget-object v1, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/PairedRecentTaskIcon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->sPairedRecentTaskIcon:Lcom/android/systemui/recents/model/PairedRecentTaskIcon;

    return-void
.end method


# virtual methods
.method public createPairedRecentTask(Lcom/android/systemui/recents/model/RecentsTaskLoader;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/systemui/recents/model/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/RecentsTaskLoader;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Lcom/android/systemui/recents/model/Task;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->sPairedRecentTaskLoader:Lcom/android/systemui/recents/model/PairedRecentTaskLoader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->createPairedRecentTask(Lcom/android/systemui/recents/model/RecentsTaskLoader;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public getPairedRecentTasksIcon(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->sPairedRecentTaskIcon:Lcom/android/systemui/recents/model/PairedRecentTaskIcon;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/PairedRecentTaskIcon;->getPairedRecentTasksIcon(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->sPairedRecentTaskThumbnail:Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v0

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v4, v5, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    new-array v3, v5, [I

    iget v4, v2, Lcom/android/systemui/recents/model/Task;->dockedTaskId:I

    aput v4, v3, v6

    iget v4, v2, Lcom/android/systemui/recents/model/Task;->fullTaskId:I

    aput v4, v3, v7

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    new-array v0, v5, [Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v0, v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startPairActivitiesFromRecents(Landroid/content/Context;[I[Landroid/os/Bundle;)V

    return-void
.end method
