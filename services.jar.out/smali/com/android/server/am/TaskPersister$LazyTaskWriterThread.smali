.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    const/16 v24, 0xa

    invoke-static/range {v24 .. v24}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    monitor-exit v25

    if-eqz v20, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v25

    monitor-enter v25

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v24

    add-int/lit8 v23, v24, -0x1

    :goto_1
    if-ltz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    :cond_1
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v24

    if-eqz v24, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v23, v23, -0x1

    goto :goto_1

    :catchall_0
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_3
    :try_start_2
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v24

    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v24

    :cond_4
    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-wrap3(Lcom/android/server/am/TaskPersister;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    const-wide/16 v28, -0x1

    cmp-long v24, v26, v28

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x1f4

    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_3

    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v26

    cmp-long v24, v18, v26

    if-gez v24, :cond_9

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    sub-long v26, v26, v18

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_5
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v18

    goto :goto_4

    :cond_9
    monitor-exit v25

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/am/TaskPersister;->-wrap0(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_a

    const-string/jumbo v24, "TaskPersister"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error while creating images directory for file: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_2
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_a
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    :try_start_8
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :goto_6
    :try_start_a
    const-string/jumbo v24, "TaskPersister"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "saveImage: unable to save "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v24

    :goto_7
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v24

    :cond_b
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    const/16 v21, 0x0

    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v25

    monitor-enter v25

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v24, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v24, :cond_c

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result-object v21

    :cond_c
    :goto_8
    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v21, :cond_0

    const/4 v11, 0x0

    const/4 v4, 0x0

    :try_start_d
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "_task"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ".xml"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :try_start_e
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v7

    move-object v4, v5

    :goto_9
    if-eqz v11, :cond_d

    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_d
    const-string/jumbo v24, "TaskPersister"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unable to open "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " for persisting. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_4
    move-exception v24

    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v24

    :catch_3
    move-exception v7

    goto :goto_9

    :catch_4
    move-exception v7

    goto/16 :goto_8

    :catch_5
    move-exception v10

    goto/16 :goto_8

    :catchall_5
    move-exception v24

    move-object v13, v14

    goto/16 :goto_7

    :catch_6
    move-exception v8

    move-object v13, v14

    goto/16 :goto_6

    :catch_7
    move-exception v9

    goto/16 :goto_5
.end method
