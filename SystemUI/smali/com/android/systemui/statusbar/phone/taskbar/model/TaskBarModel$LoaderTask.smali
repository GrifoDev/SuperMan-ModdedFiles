.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mIsLaunching:Z

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mIsLaunching:Z

    return-void
.end method

.method private bindWorkspace()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "[DS]TaskBarpModel"

    const-string/jumbo v6, "LoaderTask running with no launcher"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    const-wide/16 v8, -0x67

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$4;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;Ljava/util/List;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$5;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$7;

    invoke-direct {v6, p0, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$7;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;J)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkItemPlacement([Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-wide v0, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    const-wide/16 v2, -0x67

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    array-length v0, p1

    iget v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-gt v0, v1, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarpModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error loading shortcut into hotseat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " into position ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") exceeded over total count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4

    :cond_1
    iget v0, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "[DS]TaskBarpModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error loading shortcut into hotseat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " into position ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") occupied by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    :cond_3
    iget v0, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    aput-object p2, p1, v0

    return v5

    :cond_4
    const-string/jumbo v0, "[DS]TaskBarpModel"

    const-string/jumbo v1, "checkItemPlacement :: container type is not CONTAINER_TASKBAR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private getLoaderTaskCallbacks()Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarpModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadAndBindWorkspace mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->loadWorkspace()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->bindWorkspace()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mWorkspaceLoaded:Z

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 54

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v32

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getTaskBarDBCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const-string/jumbo v4, "[DS]TaskBarpModel"

    const-string/jumbo v7, "loadWorkspace(), Can not open cursor!!"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v44, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v41

    move/from16 v0, v41

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v38, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v18

    :try_start_0
    const-string/jumbo v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string/jumbo v4, "intent"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string/jumbo v4, "title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v4, "container"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v4, "itemType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    const-string/jumbo v4, "screen"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    const-string/jumbo v4, "profileId"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    const/16 v27, 0x0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_15

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_15

    :try_start_1
    move/from16 v0, v35

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v13, 0x0

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v28

    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    :try_start_3
    move/from16 v0, v39

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mUserManager:Landroid/os/UserManager;

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v46

    const/16 v19, 0x0

    if-eqz v46, :cond_3

    if-nez v6, :cond_4

    :cond_3
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v20

    :try_start_4
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "[DS]TaskBarpModel"

    const-string/jumbo v7, "Desktop items loading interrupted:"

    move-object/from16 v0, v20

    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    :catch_1
    move-exception v21

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v4, v7, v0}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v48

    if-eqz v48, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v14, v0}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v47

    :goto_2
    if-eqz v47, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v31

    if-eqz v31, :cond_5

    const/16 v19, 0x8

    :cond_5
    :goto_3
    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v6, v0}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v19, 0x4

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v12, v6, v1, v13}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->getShortcutInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;Landroid/os/UserHandle;Z)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v27

    :goto_4
    if-eqz v27, :cond_14

    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    move/from16 v0, v40

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mBadgeCount:I

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    const-string/jumbo v7, "profile"

    move-wide/from16 v0, v42

    invoke-virtual {v4, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move/from16 v0, v19

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-lez v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    :goto_5
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    aget-object v4, v38, v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    goto :goto_5

    :cond_7
    const/16 v47, 0x0

    goto/16 :goto_2

    :cond_8
    if-eqz v48, :cond_9

    if-nez v6, :cond_5

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Invalid intent removed: "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v50, 0x2000

    move/from16 v0, v50

    invoke-static {v4, v7, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-wrap2(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v13, 0x1

    const/16 v19, 0x2

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Invalid package removed: "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "loadWorkspace : intent.getExtras().isEmpty = "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v27

    goto/16 :goto_4

    :cond_d
    const-string/jumbo v4, "[DS]TaskBarpModel"

    const-string/jumbo v7, "can not make AppItem from database..   itemType[%d]"

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    const/16 v52, 0x0

    aput-object v51, v50, v52

    move-object/from16 v0, v50

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    if-eqz v32, :cond_f

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->checkItemPlacement([Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    move-wide/from16 v50, v0

    const-wide/16 v52, -0x67

    cmp-long v4, v50, v52

    if-nez v4, :cond_10

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "wrong hotseat item : we remove the item in launcher.db - item="

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v30, 0x1

    goto/16 :goto_1

    :cond_10
    const/16 v22, 0x0

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_11
    :goto_6
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual/range {v33 .. v33}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v4, v7, :cond_11

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    move-wide/from16 v50, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    move-wide/from16 v52, v0

    cmp-long v4, v50, v52

    if-nez v4, :cond_11

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "duplicated hotseat item : we remove the item in launcher.db - item="

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v30, 0x1

    const/16 v22, 0x1

    goto :goto_6

    :cond_12
    if-nez v22, :cond_2

    const-wide/16 v50, -0x67

    cmp-long v4, v16, v50

    if-nez v4, :cond_13

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v4, v7, v0, v8, v10}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/database/Cursor;I)Z

    goto/16 :goto_1

    :cond_14
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Error loading shortcut "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v50, ", removing it"

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_15
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    if-eqz v30, :cond_16

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->rearrangeHotseatData(Ljava/util/ArrayList;)V

    :cond_16
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_19

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_17
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_18

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Removed id = "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->deleteTaskBarItem(J)I

    move-result v4

    if-gtz v4, :cond_17

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Could not remove id = "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_19
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "loaded workspace in "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v50

    sub-long v50, v50, v44

    move-wide/from16 v0, v50

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v50, "ms"

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[DS]TaskBarpModel"

    const-string/jumbo v7, "workspace layout: "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v37, ""

    const/16 v49, 0x0

    :goto_8
    move/from16 v0, v49

    move/from16 v1, v41

    if-ge v0, v1, :cond_1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, v38, v49

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "#"

    :goto_9
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    add-int/lit8 v49, v49, 0x1

    goto :goto_8

    :cond_1a
    const-string/jumbo v4, "."

    goto :goto_9

    :cond_1b
    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "[ "

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v50, " ]"

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private rearrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    const-wide/16 v6, -0x67

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iput v2, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private waitForIdle()V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    :try_start_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "[DS]TaskBarpModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms for previous step to finish binding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method getShortcutInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;Landroid/os/UserHandle;Z)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 7

    const/4 v6, 0x0

    if-nez p3, :cond_0

    const-string/jumbo v3, "[DS]TaskBarpModel"

    const-string/jumbo v4, "Null user found in getShortcutInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v6

    :cond_1
    if-nez p1, :cond_2

    xor-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v3, v0, p1, v2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Landroid/content/pm/LauncherActivityInfo;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;)V

    if-eqz v1, :cond_4

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_3
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_4
    return-object v1
.end method

.method protected getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "[DS]TaskBarpModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getShortcutInfo componentName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "[DS]TaskBarpModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getShortcutInfo rInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v4, :cond_5

    if-nez v1, :cond_2

    const/4 v7, 0x0

    return-object v7

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "[DS]TaskBarpModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getShortcutInfo unmounted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v6, :cond_5

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    return-object v7

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-direct {v3, v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V

    iput-object v1, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    const/4 v7, 0x1

    if-ne p5, v7, :cond_6

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    :cond_6
    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v8, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, p2, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_7

    if-eqz p4, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    move/from16 v0, p6

    invoke-static {v7, p4, v0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->customIcon:Z

    :cond_7
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_8

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_8
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_9
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_b

    if-eqz p4, :cond_b

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_a

    const-string/jumbo v7, "[DS]TaskBarpModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "info.mTitle from DB = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move/from16 v0, p7

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_b
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_c

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_c
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_e

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_d

    const-string/jumbo v7, "[DS]TaskBarpModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "info.mTitle from PM = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_e
    return-object v3

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method isLaunching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarpModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Begin LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_3

    const-string/jumbo v1, "[DS]TaskBarpModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting thread priority to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mIsLaunching:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "DEFAULT"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->hasLocaleChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->setLocaleLocked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "[DS]TaskBarpModel"

    const-string/jumbo v1, "step 1: loading workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->loadAndBindWorkspace()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->waitForIdle()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "BACKGROUND"

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopLocked()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarpModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stopping LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->mStopped:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
