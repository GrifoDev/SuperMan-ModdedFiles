.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$1;,
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field private static MIN_NUM_TASKS:I

.field private static SESSION_BEGIN_TIME:I

.field private static sortTasks:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


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

.field mPreloadedUserId:I

.field mRawPairedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
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

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$1;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$1;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->sortTasks:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawPairedTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    return-void
.end method

.method private migrateLegacyLastStackActiveTime(I)J
    .locals 10

    const-wide/16 v8, -0x1

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "OverviewLastStackTaskActiveTime"

    invoke-static {v6, v7, v8, v9}, Lcom/android/systemui/Prefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v6, v2, v8

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "OverviewLastStackTaskActiveTime"

    invoke-static {v6, v7}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, p1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->updateOverviewLastStackActiveTimeAsync(JI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    const-wide/16 v6, 0x0

    return-wide v6
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 12

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_a

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    iget-object v7, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v9, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v9, v10, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v9, v6, v9

    if-lt v0, v9, :cond_2

    const/4 v2, 0x1

    :goto_2
    iget v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v9, v6, v9

    if-lt v0, v9, :cond_3

    const/4 v3, 0x1

    :goto_3
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v9, :cond_4

    if-eqz v1, :cond_4

    :cond_0
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadInvisibleActivities:Z

    if-eqz v9, :cond_5

    iget-boolean v9, v5, Lcom/android/systemui/recents/model/Task;->isVisible:Z

    if-nez v9, :cond_0

    :cond_5
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v9, :cond_7

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget-object v9, v5, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_7

    sget-boolean v9, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v9, :cond_8

    iget-boolean v9, v5, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v9, :cond_8

    invoke-virtual {p2, v7, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdatePairedTaskIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    :cond_7
    :goto_5
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    sget-boolean v9, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v5, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v7, v11, v11, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZLandroid/content/Context;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    goto :goto_4

    :cond_8
    iget-object v9, v5, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2, v7, v9, v4, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_9
    invoke-virtual {p2, v7, v11, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    goto :goto_4

    :cond_a
    return-void
.end method

.method public getRawTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    return-object v0
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

.method preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    .locals 61

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    :cond_0
    new-instance v36, Landroid/util/SparseArray;

    invoke-direct/range {v36 .. v36}, Landroid/util/SparseArray;-><init>()V

    new-instance v35, Landroid/util/SparseIntArray;

    invoke-direct/range {v35 .. v35}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v50, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v50 .. v50}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const v7, 0x7f120a29

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const v7, 0x7f120a28

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mPreloadedUserId:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const v7, 0x7f120990

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const v7, 0x7f12098e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v60

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v55

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->migrateLegacyLastStackActiveTime(I)J

    move-result-wide v48

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "overview_last_stack_active_time"

    move-wide/from16 v0, v48

    move/from16 v2, v39

    invoke-static {v6, v7, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v46

    const-wide/16 v52, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v58

    const/16 v41, 0x0

    :goto_0
    move/from16 v0, v41

    move/from16 v1, v58

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v57

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v57

    iget-object v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v57

    iget v9, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v57

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v57

    iget-wide v12, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    move-object/from16 v0, v57

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/Task$TaskKey;->setOrigActivity(Landroid/content/ComponentName;)V

    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, v57

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveElapsedTime:J

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/Task$TaskKey;->setLastActiveElapsedTime(J)V

    :cond_1
    move-object/from16 v0, v57

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-static {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v43

    const/16 v17, 0x1

    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p2

    if-ne v6, v0, :cond_4

    const/16 v16, 0x1

    :goto_1
    if-eqz v17, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v52, v6

    if-gez v6, :cond_2

    move-object/from16 v0, v57

    iget-wide v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move-wide/from16 v52, v0

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v42

    move-object/from16 v0, v57

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v59, v10

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    move-object/from16 v0, v40

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    move-object/from16 v0, v38

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eqz v17, :cond_5

    move-object/from16 v0, v57

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v6, v1, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v9

    move-object/from16 v0, v57

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v14

    move-object/from16 v0, v57

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v15

    if-eqz v42, :cond_7

    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v57

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    move-object/from16 v0, v57

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    move-object/from16 v0, v57

    iget v11, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v7, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDeviceLocked(I)Z

    move-result v7

    move-object/from16 v0, v50

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    move-object/from16 v0, v57

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v24

    if-eqz v44, :cond_8

    xor-int/lit8 v6, v18, 0x1

    if-eqz v6, :cond_8

    :goto_4
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, v57

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPrivateMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v0, v57

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move/from16 v0, p2

    if-ne v0, v6, :cond_9

    invoke-virtual/range {v55 .. v55}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isPrivateModeEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    const/16 v26, 0x0

    :cond_9
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    move-object/from16 v0, v45

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    move-object/from16 v0, v60

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    const/16 v28, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v28

    const/16 v31, 0x0

    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v31

    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v6, :cond_a

    move-object/from16 v0, v57

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPairedTask:Z

    move/from16 v32, v0

    :goto_5
    new-instance v4, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v57

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    move-object/from16 v0, v57

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    move/from16 v19, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v21, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    move/from16 v22, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v57

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    move/from16 v25, v0

    move-object/from16 v0, v57

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isFullscreen:Z

    move/from16 v27, v0

    const/16 v33, -0x1

    const/16 v34, -0x1

    move-object v11, v10

    invoke-direct/range {v4 .. v34}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Lcom/android/systemui/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZZZZLjava/lang/String;Ljava/lang/String;ZZII)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v7, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v7, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_a
    const/16 v32, 0x0

    goto :goto_5

    :cond_b
    const-wide/16 v6, -0x1

    cmp-long v6, v52, v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    move-wide/from16 v0, v52

    move/from16 v2, v39

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->updateOverviewLastStackActiveTimeAsync(JI)V

    :cond_c
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawPairedTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawPairedTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v58

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v56

    if-lez v58, :cond_d

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getPairedRecentTasksManager()Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawPairedTasks:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move/from16 v2, p2

    invoke-virtual {v6, v0, v1, v2, v7}, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->createPairedRecentTask(Lcom/android/systemui/recents/model/RecentsTaskLoader;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/systemui/recents/model/Task;

    move-result-object v51

    if-eqz v51, :cond_d

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->sortTasks:Ljava/util/Comparator;

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_d
    new-instance v6, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v6, v7, v0, v11}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method preloadRawTasks(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mPreloadedUserId:I

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getPairedRecentTasks(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawPairedTasks:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method
