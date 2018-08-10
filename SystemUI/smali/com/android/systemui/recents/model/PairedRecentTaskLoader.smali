.class public Lcom/android/systemui/recents/model/PairedRecentTaskLoader;
.super Ljava/lang/Object;
.source "PairedRecentTaskLoader.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createTaskFromRecentTaskInfo(Lcom/android/systemui/recents/model/RecentsTaskLoader;Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/systemui/recents/model/Task;
    .locals 41

    new-instance v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, p2

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, p2

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    move-object/from16 v0, p2

    iget-wide v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveElapsedTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->setLastActiveElapsedTime(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    new-instance v37, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v37 .. v37}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f120a29

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f120a28

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f120990

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f12098e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v35

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v39, v8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    move-object/from16 v0, v33

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v12

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v13

    if-eqz v35, :cond_2

    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDeviceLocked(I)Z

    move-result v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPairedTask:Z

    move/from16 v30, v0

    const/16 v29, 0x0

    iget v2, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v29

    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPrivateMode:Z

    move/from16 v24, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    move-object/from16 v0, v36

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    move-object/from16 v0, v40

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v26

    new-instance v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isFullscreen:Z

    move/from16 v25, v0

    const/16 v31, -0x1

    const/16 v32, -0x1

    move-object v9, v8

    invoke-direct/range {v2 .. v32}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Lcom/android/systemui/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZZZZLjava/lang/String;Ljava/lang/String;ZZII)V

    return-object v2

    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private findTaskFromAllTasksList(Landroid/app/ActivityManager$RecentTaskInfo;Ljava/util/ArrayList;)Lcom/android/systemui/recents/model/Task;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/model/Task;"
        }
    .end annotation

    new-instance v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    iget-object v4, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v5, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget-wide v6, p1, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    iget-wide v8, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    new-instance v10, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v10, v1}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public createPairedRecentTask(Lcom/android/systemui/recents/model/RecentsTaskLoader;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/systemui/recents/model/Task;
    .locals 38
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

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityManager$RecentTaskInfo;->getDockedRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->findTaskFromAllTasksList(Landroid/app/ActivityManager$RecentTaskInfo;Ljava/util/ArrayList;)Lcom/android/systemui/recents/model/Task;

    move-result-object v33

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityManager$RecentTaskInfo;->getFullRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->findTaskFromAllTasksList(Landroid/app/ActivityManager$RecentTaskInfo;Ljava/util/ArrayList;)Lcom/android/systemui/recents/model/Task;

    move-result-object v34

    if-nez v33, :cond_0

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityManager$RecentTaskInfo;->getDockedRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->createTaskFromRecentTaskInfo(Lcom/android/systemui/recents/model/RecentsTaskLoader;Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/systemui/recents/model/Task;

    move-result-object v33

    :cond_0
    if-nez v34, :cond_1

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityManager$RecentTaskInfo;->getFullRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->createTaskFromRecentTaskInfo(Lcom/android/systemui/recents/model/RecentsTaskLoader;Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/systemui/recents/model/Task;

    move-result-object v34

    :cond_1
    if-eqz v33, :cond_3

    if-eqz v34, :cond_3

    const-string/jumbo v4, "RecentsTaskLoadPlan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "dockedTask = "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v17, " fullTask = "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v36

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v36

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v36

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    move-object/from16 v0, v36

    iget-wide v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveElapsedTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->setLastActiveElapsedTime(J)V

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->setDockedTaskkey(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->setFullTaskkey(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityManager$RecentTaskInfo;->getFullRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->setBaseIntentOfFullTask(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f120990

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f12098e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdatePairedTaskIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/PairedRecentTaskLoader;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v3, v5, v1, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZLandroid/content/Context;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createPairedTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createPairedTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createPairedTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createPairedTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v12

    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v13

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    move/from16 v22, v0

    const/16 v16, 0x0

    const/4 v15, 0x1

    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPrivateMode:Z

    move/from16 v24, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v26

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPairedTask:Z

    move/from16 v30, v0

    const/16 v29, 0x0

    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v29

    new-instance v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v36

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v36

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v19, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    move/from16 v20, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    move/from16 v23, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isFullscreen:Z

    move/from16 v25, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityManager$RecentTaskInfo;->getDockedRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move/from16 v31, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityManager$RecentTaskInfo;->getFullRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move/from16 v32, v0

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v32}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Lcom/android/systemui/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZZZZLjava/lang/String;Ljava/lang/String;ZZII)V

    const-string/jumbo v4, "RecentsTaskLoadPlan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "pairedRecentTask to be added : "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method
