.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field private static MIN_NUM_TASKS:I

.field private static SESSION_BEGIN_TIME:I


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentQuietProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    const v0, 0x1499700

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 6

    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_b

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    iget-object v8, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v11, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v10, v11, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v10, v7, v10

    if-lt v1, v10, :cond_2

    const/4 v3, 0x1

    :goto_2
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v10, v7, v10

    if-lt v1, v10, :cond_3

    const/4 v4, 0x1

    :goto_3
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v10, :cond_4

    if-eqz v2, :cond_4

    :cond_0
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadInvisibleActivities:Z

    if-eqz v10, :cond_5

    iget-boolean v10, v6, Lcom/android/systemui/recents/model/Task;->isVisible:Z

    if-nez v10, :cond_0

    :cond_5
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v10, :cond_7

    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_7

    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v11, 0x1

    invoke-virtual {p2, v8, v10, v5, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v10, :cond_0

    if-nez v2, :cond_8

    if-eqz v4, :cond_0

    :cond_8
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_9

    if-eqz v2, :cond_0

    :cond_9
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_a

    const/4 v10, 0x1

    invoke-virtual {p2, v8, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_a
    :try_start_1
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    invoke-virtual {p3, v6}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_b
    monitor-exit p0

    return-void
.end method

.method public getTaskStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public declared-synchronized preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    .locals 44

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    :cond_0
    new-instance v27, Landroid/util/SparseArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseArray;-><init>()V

    new-instance v26, Landroid/util/SparseIntArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const v5, 0x7f0f02f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const v5, 0x7f0f02f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const v5, 0x7f0f02f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v39

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "OverviewLastStackTaskActiveTime"

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lcom/android/systemui/Prefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v34

    const-wide/16 v36, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v42

    const/16 v31, 0x0

    :goto_0
    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v41

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v41

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v41

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v41

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v41

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v33

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAllListShown:Z

    if-nez v4, :cond_3

    if-nez v33, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v41

    iget-wide v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v4, v4, v34

    if-ltz v4, :cond_4

    sget v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    sub-int v4, v42, v4

    move/from16 v0, v31

    if-lt v0, v4, :cond_4

    const/16 v16, 0x1

    :goto_1
    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    const/4 v15, 0x1

    :goto_2
    if-eqz v16, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v36, v4

    if-gez v4, :cond_1

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move-wide/from16 v36, v0

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v32

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-eqz v16, :cond_6

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v13

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v14

    if-eqz v32, :cond_8

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPrivateMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    invoke-virtual/range {v39 .. v39}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isPrivateModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_2
    :goto_5
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_b

    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v5, 0xc8

    if-gt v4, v5, :cond_a

    const/16 v25, 0x1

    :goto_6
    new-instance v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v41

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    move/from16 v18, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v20, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    move/from16 v21, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    move/from16 v23, v0

    invoke-direct/range {v2 .. v25}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZZ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v5, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/16 v18, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_5

    :cond_a
    const/16 v25, 0x0

    goto :goto_6

    :cond_b
    const/16 v25, 0x0

    goto :goto_6

    :cond_c
    const-wide/16 v4, -0x1

    cmp-long v4, v36, v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "OverviewLastStackTaskActiveTime"

    move-wide/from16 v0, v36

    invoke-static {v4, v5, v0, v1}, Lcom/android/systemui/Prefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_d
    new-instance v4, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
