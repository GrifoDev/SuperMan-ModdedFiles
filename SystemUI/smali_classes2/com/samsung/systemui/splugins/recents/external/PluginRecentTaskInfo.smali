.class public Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;
.super Ljava/lang/Object;
.source "PluginRecentTaskInfo.java"


# instance fields
.field public affiliatedTaskColor:I

.field public affiliatedTaskId:I

.field public baseActivity:Landroid/content/ComponentName;

.field public baseIntent:Landroid/content/Intent;

.field public bounds:Landroid/graphics/Rect;

.field public description:Ljava/lang/CharSequence;

.field public displayId:I

.field public dockedRecentTaskInfo:Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;

.field public firstActiveTime:J

.field public fullRecentTaskInfo:Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;

.field public id:I

.field public isFullscreen:Z

.field public isPairedTask:Z

.field public isPrivateMode:Z

.field public isVisible:Z

.field public lastActiveElapsedTime:J

.field public lastActiveTime:J

.field public numActivities:I

.field public origActivity:Landroid/content/ComponentName;

.field public persistentId:I

.field public realActivity:Landroid/content/ComponentName;

.field public resizeMode:I

.field public stackId:I

.field public supportsSplitScreenMultiWindow:Z

.field public taskDescription:Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;

.field public topActivity:Landroid/content/ComponentName;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->id:I

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->persistentId:I

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->description:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->stackId:I

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->userId:I

    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    iput-wide v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->firstActiveTime:J

    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    iput-wide v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->lastActiveTime:J

    new-instance v0, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->taskDescription:Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->affiliatedTaskId:I

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->affiliatedTaskColor:I

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->numActivities:I

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->bounds:Landroid/graphics/Rect;

    iget-boolean v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->resizeMode:I

    iget-boolean v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->isVisible:Z

    iget-boolean v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isPrivateMode:Z

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->isPrivateMode:Z

    iget-boolean v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isFullscreen:Z

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->isFullscreen:Z

    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveElapsedTime:J

    iput-wide v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->lastActiveElapsedTime:J

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->displayId:I

    iget-boolean v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isPairedTask:Z

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->isPairedTask:Z

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;-><init>(Landroid/app/ActivityManager$RecentTaskInfo;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->dockedRecentTaskInfo:Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;-><init>(Landroid/app/ActivityManager$RecentTaskInfo;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;->fullRecentTaskInfo:Lcom/samsung/systemui/splugins/recents/external/PluginRecentTaskInfo;

    :cond_1
    return-void
.end method
