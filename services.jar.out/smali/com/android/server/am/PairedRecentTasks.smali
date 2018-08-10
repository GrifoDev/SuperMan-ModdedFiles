.class final Lcom/android/server/am/PairedRecentTasks;
.super Ljava/lang/Object;
.source "PairedRecentTasks.java"


# static fields
.field private static final ATTR_DOCKED_TASKID:Ljava/lang/String; = "docked_taskid"

.field private static final ATTR_FULLSCREEN_TASKID:Ljava/lang/String; = "fullscreen_taskid"

.field private static final ATTR_PAIRED_ACTIVETIME:Ljava/lang/String; = "paired_task_activetime"

.field static final PAIRED_TASK_INVISIBLE:I = 0x0

.field static final PAIRED_TASK_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PairedRecentTasks"


# instance fields
.field private lastActiveElapsedTime:J

.field private lastActiveTime:J

.field private mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

.field private mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

.field private final mPairedController:Lcom/android/server/am/PairedRecentTasksController;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private removingPairedTask:Z

.field taskId:I

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/PairedRecentTasksController;Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskPersister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PairedRecentTasks;->mPairedController:Lcom/android/server/am/PairedRecentTasksController;

    iput-object p2, p0, Lcom/android/server/am/PairedRecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p6, p0, Lcom/android/server/am/PairedRecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iput p3, p0, Lcom/android/server/am/PairedRecentTasks;->taskId:I

    iput-object p4, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iput-object p5, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/PairedRecentTasksController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskPersister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PairedRecentTasks;->mPairedController:Lcom/android/server/am/PairedRecentTasksController;

    iput-object p2, p0, Lcom/android/server/am/PairedRecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p5, p0, Lcom/android/server/am/PairedRecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iput-object p3, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iput-object p4, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    return-void
.end method

.method private createRemovedTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/server/am/TaskRecord;->copyTaskRecord(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityManagerService;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->setTaskSnapShotForPairedTask(IILandroid/app/ActivityManager$TaskSnapshot;)V

    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mPairedController:Lcom/android/server/am/PairedRecentTasksController;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/PairedRecentTasksController;->addCreatedTaskIdsForMapping(II)V

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mPairedController:Lcom/android/server/am/PairedRecentTasksController;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/PairedRecentTasksController;->addTaskIdsCreatedForPairedTask(I)V

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v1, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    const-string/jumbo v2, "PairedRecentTasks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New Task Record created for removed task from Paired-Recent Task Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "docked_taskid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "fullscreen_taskid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "paired_task_activetime"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "PairedRecentTasks"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TaskRecord: Unknown attribute = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " attrValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "PairedRecentTasks"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFromXml docedTaskId => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " fullScreentaskId => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService;->getPairedRecentTasksController()Lcom/android/server/am/PairedRecentTasksController;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v6, v7}, Lcom/android/server/am/PairedRecentTasksController;->restorePairedTask(IIJ)V

    return-void
.end method

.method private updatePairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;Z)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PairedRecentTasks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePairedTask updating currentTask Id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "new task id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isDockedTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v1, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, v1, :cond_0

    iput-object p2, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    return v3

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v1, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, v1, :cond_1

    iput-object p2, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cleanUpRemovedPairedTaskComponents()V
    .locals 3

    const-string/jumbo v0, "PairedRecentTasks"

    const-string/jumbo v1, "cleanUpRemovedPairedTaskComponents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PairedRecentTasks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cleanUpRemovedPairedTaskComponents ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PairedRecentTasks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cleanUpRemovedPairedTaskComponents ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PairedRecentTasks;->removingPairedTask:Z

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p0}, Lcom/android/server/am/TaskPersister;->saveRecentPairedTask(Lcom/android/server/am/PairedRecentTasks;)V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mPairedController:Lcom/android/server/am/PairedRecentTasksController;

    invoke-virtual {v0}, Lcom/android/server/am/PairedRecentTasksController;->cleanUpTaskIdsCreatedForPairedTask()V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mPairedController:Lcom/android/server/am/PairedRecentTasksController;

    invoke-virtual {v0}, Lcom/android/server/am/PairedRecentTasksController;->clearCreatedTaskIdsForMapping()V

    return-void
.end method

.method createAndUpdateRemovedTask(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/PairedRecentTasks;->createRemovedTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p0}, Lcom/android/server/am/TaskPersister;->saveRecentPairedTask(Lcom/android/server/am/PairedRecentTasks;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/PairedRecentTasks;->createRemovedTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    goto :goto_0

    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "taskId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PairedRecentTasks;->taskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Docked Task= "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " isCreatedForPairedRecentTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FullScreen Task= "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, "isCreatedForPairedRecentTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v3, p1, Lcom/android/server/am/PairedRecentTasks;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/android/server/am/PairedRecentTasks;

    iget-object v3, v2, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, v2, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public getDockedTask()Lcom/android/server/am/TaskRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method public getFullTask()Lcom/android/server/am/TaskRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method public getLastActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveTime:J

    return-wide v0
.end method

.method public getPairedTaskId()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PairedRecentTasks;->taskId:I

    return v0
.end method

.method public getlastActiveElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveElapsedTime:J

    return-wide v0
.end method

.method includeTaskId(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method isPairedTaskVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/PairedRecentTasks;->visible:Z

    return v0
.end method

.method public isSamePairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 4

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "PairedRecentTasks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saving saveToXml Docked Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " FullScreen Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/PairedRecentTasks;->removingPairedTask:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "docked_taskid"

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "fullscreen_taskid"

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "paired_task_activetime"

    iget-wide v2, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "docked_taskid"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "fullscreen_taskid"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "paired_task_activetime"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public setDockedTask(Lcom/android/server/am/TaskRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    return-void
.end method

.method public setFullTask(Lcom/android/server/am/TaskRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    return-void
.end method

.method public setlastActiveElapsedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveElapsedTime:J

    return-void
.end method

.method swapDockedAndFullScreenTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    iput-object v1, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/PairedRecentTasks;->updatePairedTaskVisibility(I)V

    return-void
.end method

.method touchActiveTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveElapsedTime:J

    return-void
.end method

.method updateLastActiveTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/PairedRecentTasks;->lastActiveTime:J

    return-void
.end method

.method updatePairedTaskInfo(Lcom/android/server/am/TaskRecord;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasks;->mDockedTaskRecord:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/am/PairedRecentTasks;->updatePairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasks;->mFullScreenTaskRecord:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/am/PairedRecentTasks;->updatePairedTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/PairedRecentTasks;->mPairedController:Lcom/android/server/am/PairedRecentTasksController;

    invoke-virtual {v1}, Lcom/android/server/am/PairedRecentTasksController;->clearCreatedTaskIdsForMapping()V

    :cond_1
    return-void
.end method

.method updatePairedTaskVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/am/PairedRecentTasks;->visible:Z

    invoke-virtual {p0}, Lcom/android/server/am/PairedRecentTasks;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/PairedRecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p0}, Lcom/android/server/am/TaskPersister;->saveRecentPairedTask(Lcom/android/server/am/PairedRecentTasks;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PairedRecentTasks;->visible:Z

    goto :goto_0
.end method
