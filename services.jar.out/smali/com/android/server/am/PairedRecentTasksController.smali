.class public Lcom/android/server/am/PairedRecentTasksController;
.super Ljava/lang/Object;
.source "PairedRecentTasksController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PairedRecentTasksController"

.field static mTaskIdsCreatedForPairedTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private final mTasksRestoredForPairedRecentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/PairedRecentTasksController;->mTaskIdsCreatedForPairedTask:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mTasksRestoredForPairedRecentTasks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->getTaskPersister()Lcom/android/server/am/TaskPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    return-void
.end method

.method private createPairedRecentTaskInfoFromPairedTaskRecord(Lcom/android/server/am/PairedRecentTasks;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 12

    new-instance v6, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/PairedRecentTasks;->getPairedTaskId()I

    move-result v10

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p1}, Lcom/android/server/am/PairedRecentTasks;->getPairedTaskId()I

    move-result v10

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p1}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/am/PairedRecentTasks;->getLastActiveTime()J

    move-result-wide v4

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v10

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    iget v10, v9, Lcom/android/server/am/TaskRecord;->userId:I

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    new-instance v10, Landroid/app/ActivityManager$TaskDescription;

    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v10, v11}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-wide v10, v9, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    iput-wide v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    iput-wide v4, v6, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-virtual {p1}, Lcom/android/server/am/PairedRecentTasks;->getlastActiveElapsedTime()J

    move-result-wide v10

    iput-wide v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveElapsedTime:J

    iget v10, v9, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    iget v10, v9, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    const/4 v10, 0x0

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    const/4 v10, 0x0

    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v10

    iput-boolean v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    iget v10, v9, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/server/am/ActivityRecord;->visible:Z

    :goto_0
    iput-boolean v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    iget-boolean v10, v9, Lcom/android/server/am/TaskRecord;->isPrivateMode:Z

    iput-boolean v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->isPrivateMode:Z

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    :goto_1
    iput-boolean v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->isFullscreen:Z

    const/4 v10, 0x1

    iput-boolean v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->isPairedTask:Z

    iget-object v10, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->createRecentTaskInfoFromTaskRecord(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->createRecentTaskInfoFromTaskRecord(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    invoke-virtual {v6, v1}, Landroid/app/ActivityManager$RecentTaskInfo;->setDockedRecentTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-virtual {v6, v2}, Landroid/app/ActivityManager$RecentTaskInfo;->setFullRecentTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_2
    if-ltz v3, :cond_5

    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-boolean v10, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_2

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v7

    if-eqz v8, :cond_3

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_4

    :cond_3
    move-object v8, v7

    :cond_4
    iget v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    :goto_4
    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_7

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    :goto_5
    iput-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v6

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5
.end method

.method private isTaskFromExceptionList(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isValidPairedTaskRecord(Lcom/android/server/am/PairedRecentTasks;Lcom/android/server/am/TaskRecord;Ljava/util/Set;ZZII)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/PairedRecentTasks;",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZII)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return v4

    :cond_0
    iget v1, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-boolean v1, p2, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eqz v1, :cond_2

    return v3

    :cond_2
    if-nez p4, :cond_3

    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v1, :cond_4

    :cond_3
    if-nez p5, :cond_6

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p2, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v1, p6, :cond_6

    return v3

    :cond_4
    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    :cond_5
    return v4

    :cond_6
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_7

    return v3

    :cond_7
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isDockedStack()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v1, p2, :cond_8

    return v3

    :cond_8
    and-int/lit8 v1, p7, 0x20

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isPinnedStack()Z

    move-result v1

    if-eqz v1, :cond_9

    return v3

    :cond_9
    iget-boolean v1, p2, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_b

    iget-boolean v1, p2, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    return v3

    :cond_b
    iget-boolean v1, p2, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    if-nez v1, :cond_5

    return v3
.end method

.method private updateTasksElapsedTime()V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-wide v2, v2, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iget-object v4, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v4}, Lcom/android/server/am/PairedRecentTasks;->getLastActiveTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/TaskRecord;->lastActiveElapsedTime:J

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/PairedRecentTasks;->setlastActiveElapsedTime(J)V

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/TaskRecord;->lastActiveElapsedTime:J

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method addCreatedTaskIdsForMapping(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method addTaskIdsCreatedForPairedTask(I)V
    .locals 2

    sget-object v0, Lcom/android/server/am/PairedRecentTasksController;->mTaskIdsCreatedForPairedTask:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method cleanUpTaskIdsCreatedForPairedTask()V
    .locals 1

    sget-object v0, Lcom/android/server/am/PairedRecentTasksController;->mTaskIdsCreatedForPairedTask:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method clearCreatedTaskIdsForMapping()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public clearPairedRecentTasks()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v0}, Lcom/android/server/am/PairedRecentTasks;->cleanUpRemovedPairedTaskComponents()V

    iput-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    :cond_0
    return-void
.end method

.method createPairedRecentTask()V
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v1

    if-eq v1, v12, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_5

    if-eqz v7, :cond_5

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v4, :cond_1

    if-nez v5, :cond_4

    :cond_1
    return-void

    :cond_2
    if-eqz v9, :cond_0

    invoke-virtual {v9, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v1

    if-ne v1, v12, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v8, :cond_3

    if-nez v10, :cond_6

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/PairedRecentTasksController;->updateLastActiveTimeForPairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/server/am/PairedRecentTasksController;->isTaskFromExceptionList(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/server/am/PairedRecentTasksController;->isTaskFromExceptionList(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string/jumbo v1, "PairedRecentTasksController"

    const-string/jumbo v2, "Task is from exception list, can not create paired task"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/PairedRecentTasks;->isSamePairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->cleanUpRemovedPairedTaskComponents()V

    :cond_a
    const-string/jumbo v1, "PairedRecentTasksController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Same paired task already existing : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_b

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    new-instance v0, Lcom/android/server/am/PairedRecentTasks;

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/PairedRecentTasksController;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/PairedRecentTasks;-><init>(Lcom/android/server/am/PairedRecentTasksController;Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskPersister;)V

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1, v12}, Lcom/android/server/am/PairedRecentTasks;->updatePairedTaskVisibility(I)V

    return-void
.end method

.method dumpRecentsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "  Paired Recent tasks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  * Paired Recent #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    const-string/jumbo v1, "    "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/PairedRecentTasks;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getPairedRecentTaskInfo(IIIZZIZZ)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZIZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x4

    invoke-virtual {v0, p3, v2}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PairedRecentTasksController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is still locked. Cannot load recents"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/PairedRecentTasksController;->getPairedRecentTasks()Lcom/android/server/am/PairedRecentTasks;

    move-result-object v1

    if-eqz p7, :cond_3

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p3}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v3

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    move-object v0, p0

    move/from16 v4, p8

    move/from16 v5, p4

    move/from16 v6, p6

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/PairedRecentTasksController;->isValidPairedTaskRecord(Lcom/android/server/am/PairedRecentTasks;Lcom/android/server/am/TaskRecord;Ljava/util/Set;ZZII)Z

    move-result v8

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    move-object v0, p0

    move/from16 v4, p8

    move/from16 v5, p4

    move/from16 v6, p6

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/PairedRecentTasksController;->isValidPairedTaskRecord(Lcom/android/server/am/PairedRecentTasks;Lcom/android/server/am/TaskRecord;Ljava/util/Set;ZZII)Z

    move-result v9

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/PairedRecentTasksController;->createPairedRecentTaskInfoFromPairedTaskRecord(Lcom/android/server/am/PairedRecentTasks;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v11

    if-nez p5, :cond_1

    invoke-virtual {v11}, Landroid/app/ActivityManager$RecentTaskInfo;->getDockedRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/app/ActivityManager$RecentTaskInfo;->getFullRecentTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v10

    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method getPairedRecentTasks()Lcom/android/server/am/PairedRecentTasks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    return-object v0
.end method

.method public getPairedTaskThumbnailIfExist(I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v2
.end method

.method public getTaskIfExistInPairedRecentTasks(I)Lcom/android/server/am/TaskRecord;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public removePairedTask(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/PairedRecentTasksController;->removePairedTask(IZ)V

    return-void
.end method

.method public removePairedTask(IZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1, p1}, Lcom/android/server/am/PairedRecentTasks;->includeTaskId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->getPairedTaskId()I

    move-result v1

    if-eq v1, p1, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->cleanUpRemovedPairedTaskComponents()V

    iput-object v3, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mCreatedTaskIdMappingForReference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/PairedRecentTasks;->includeTaskId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1, p1}, Lcom/android/server/am/PairedRecentTasks;->createAndUpdateRemovedTask(I)V

    goto :goto_1
.end method

.method public removePairedTask(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/PairedRecentTasksController;->removePairedTask(I)V

    return-void
.end method

.method public removePairedTask(Lcom/android/server/am/TaskRecord;Z)V
    .locals 1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/PairedRecentTasksController;->removePairedTask(IZ)V

    return-void
.end method

.method restorePairedTask(IIJ)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, p1}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, p2}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/PairedRecentTasksController;->taskRestoredForPairedRecentTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    :cond_0
    if-nez v5, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/PairedRecentTasksController;->taskRestoredForPairedRecentTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    const-string/jumbo v1, "PairedRecentTasksController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePairedTask failed dockedTask = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " fullTask = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    new-instance v0, Lcom/android/server/am/PairedRecentTasks;

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/PairedRecentTasksController;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/PairedRecentTasks;-><init>(Lcom/android/server/am/PairedRecentTasksController;Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskPersister;)V

    invoke-virtual {v0, p3, p4}, Lcom/android/server/am/PairedRecentTasks;->updateLastActiveTime(J)V

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/PairedRecentTasks;->updatePairedTaskVisibility(I)V

    invoke-direct {p0}, Lcom/android/server/am/PairedRecentTasksController;->updateTasksElapsedTime()V

    return-void
.end method

.method restoredForPairedRecentTask(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mTasksRestoredForPairedRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method swapDockedAndFullScreenTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/PairedRecentTasks;->isSamePairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "PairedRecentTasksController"

    const-string/jumbo v2, "swapDockedAndFullScreenTask"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->swapDockedAndFullScreenTask()V

    :cond_0
    return-void
.end method

.method taskRestoredForPairedRecentTask(I)Lcom/android/server/am/TaskRecord;
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mTasksRestoredForPairedRecentTasks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method updateLastActiveTimeForPairedTask()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/PairedRecentTasksController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    :goto_1
    if-eqz v1, :cond_0

    if-nez v3, :cond_3

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/PairedRecentTasksController;->updateLastActiveTimeForPairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method updateLastActiveTimeForPairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/PairedRecentTasks;->isSamePairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->isPairedTaskVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasks;->touchActiveTime()V

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskPersister;->saveRecentPairedTask(Lcom/android/server/am/PairedRecentTasks;)V

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/PairedRecentTasks;->updatePairedTaskVisibility(I)V

    :cond_0
    return-void
.end method

.method updatePairedTaskInfoIfExist(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v0}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v0}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasksController;->mLastPairedRecentTasks:Lcom/android/server/am/PairedRecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/am/PairedRecentTasks;->updatePairedTaskInfo(Lcom/android/server/am/TaskRecord;)V

    :cond_1
    return-void
.end method
