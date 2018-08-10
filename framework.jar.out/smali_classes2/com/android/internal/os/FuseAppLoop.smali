.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$1;,
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final ARGS_POOL_SIZE:I = 0x32

.field private static final DEBUG:Z

.field private static final FUSE_FSYNC:I = 0x14

.field private static final FUSE_GETATTR:I = 0x3

.field private static final FUSE_LOOKUP:I = 0x1

.field private static final FUSE_MAX_WRITE:I = 0x40000

.field private static final FUSE_OK:I = 0x0

.field private static final FUSE_OPEN:I = 0xe

.field private static final FUSE_READ:I = 0xf

.field private static final FUSE_RELEASE:I = 0x12

.field private static final FUSE_WRITE:I = 0x10

.field private static final MIN_INODE:I = 0x2

.field public static final ROOT_INODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mArgsPool:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallbackMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMountPointId:I

.field private mNextInode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$BytesMap;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    if-nez p3, :cond_0

    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    new-instance v0, Lcom/android/internal/os/-$Lambda$7ZK-l4tRY1lJoOPMxlJZMSKtyQY;

    invoke-direct {v0, p0}, Lcom/android/internal/os/-$Lambda$7ZK-l4tRY1lJoOPMxlJZMSKtyQY;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static checkInode(J)I
    .locals 8

    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x7fffffff

    const-string/jumbo v6, "checkInode"

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    long-to-int v0, p0

    return v0
.end method

.method private getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    if-nez v0, :cond_0

    new-instance v1, Landroid/system/ErrnoException;

    const-string/jumbo v2, "getCallbackEntryOrThrowLocked"

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static getError(Ljava/lang/Exception;)I
    .locals 2

    instance-of v1, p0, Landroid/system/ErrnoException;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/system/ErrnoException;

    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_0

    neg-int v1, v0

    return v1

    :cond_0
    sget v1, Landroid/system/OsConstants;->EBADF:I

    neg-int v1, v1

    return v1
.end method

.method private onCommand(IJJJI[B)V
    .locals 8

    iget-object v4, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$Args;)V

    :goto_0
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    move/from16 v0, p8

    iput v0, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v5, v5, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, p1, v6, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/system/ErrnoException;

    const-string/jumbo v5, "onCommand"

    sget v6, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v3, v5, v6}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v3

    invoke-direct {p0, p2, p3, v3}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private onOpen(JJ)[B
    .locals 11

    iget-object v9, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/system/ErrnoException;

    const-string/jumbo v2, "onOpen"

    sget v3, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v8

    :try_start_1
    invoke-static {v8}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v9

    return-object v1

    :cond_1
    :try_start_2
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit v9

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method private recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private replySimpleLocked(JI)V
    .locals 7

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMountPointId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 38

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/FuseAppLoop$Args;

    iget-object v14, v4, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-wide v10, v4, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iget-wide v8, v4, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iget v0, v4, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    move/from16 v35, v0

    iget-wide v0, v4, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    move-wide/from16 v36, v0

    iget-object v0, v4, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    move-object/from16 v21, v0

    :try_start_0
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown FUSE command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    const-string/jumbo v5, "FuseAppLoop"

    const-string/jumbo v7, ""

    move-object/from16 v0, v22

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v5}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    monitor-exit v6

    :goto_0
    const/4 v5, 0x1

    return v5

    :sswitch_0
    :try_start_2
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v16, 0x0

    cmp-long v5, v6, v16

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v15

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v15

    throw v5

    :sswitch_1
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v16, 0x0

    cmp-long v5, v6, v16

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v15

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v15

    throw v5

    :sswitch_2
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    move-wide/from16 v0, v36

    move/from16 v2, v35

    move-object/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    move-object/from16 v15, p0

    move-wide/from16 v18, v8

    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_3
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    move-wide/from16 v0, v36

    move/from16 v2, v35

    move-object/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v24, v0

    move-object/from16 v23, p0

    move-wide/from16 v26, v8

    invoke-virtual/range {v23 .. v28}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_4
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v30, v0

    const/16 v34, 0x0

    move-object/from16 v29, p0

    move-wide/from16 v32, v8

    invoke-virtual/range {v29 .. v34}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_5
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v30, v0

    const/16 v34, 0x0

    move-object/from16 v29, p0

    move-wide/from16 v32, v8

    invoke-virtual/range {v29 .. v34}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v14}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catchall_6
    move-exception v5

    monitor-exit v6

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_5
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic lambda$-com_android_internal_os_FuseAppLoop_2801()V
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method native native_delete(J)V
.end method

.method native native_new(I)J
.end method

.method native native_replyGetAttr(JJJJ)V
.end method

.method native native_replyLookup(JJJJ)V
.end method

.method native native_replyOpen(JJJ)V
.end method

.method native native_replyRead(JJI[B)V
.end method

.method native native_replySimple(JJI)V
.end method

.method native native_replyWrite(JJI)V
.end method

.method native native_start(J)V
.end method

.method public registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const v5, 0x7ffffffd

    if-ge v3, v5, :cond_0

    move v3, v1

    :goto_0
    const-string/jumbo v5, "Too many opened files."

    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    :goto_1
    const-string/jumbo v2, "Handler must be different from the current thread"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v1, :cond_3

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v2, p1, v3}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v0
.end method

.method public unregisterCallback(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
