.class public Lsun/nio/ch/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;,
        Lsun/nio/ch/FileChannelImpl$Unmapper;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MAPPED_TRANSFER_SIZE:J = 0x800000L

.field private static final MAP_PV:I = 0x2

.field private static final MAP_RO:I = 0x0

.field private static final MAP_RW:I = 0x1

.field private static final TRANSFER_SIZE:I = 0x2000

.field private static final allocationGranularity:J

.field private static volatile fileSupported:Z

.field private static isSharedFileLockTable:Z

.field private static volatile pipeSupported:Z

.field private static volatile propertyChecked:Z

.field private static volatile transferSupported:Z


# instance fields
.field private final append:Z

.field public final fd:Ljava/io/FileDescriptor;

.field private volatile fileLockTable:Lsun/nio/ch/FileLockTable;

.field private final nd:Lsun/nio/ch/FileDispatcher;

.field private final parent:Ljava/lang/Object;

.field private final path:Ljava/lang/String;

.field private final positionLock:Ljava/lang/Object;

.field private final readable:Z

.field private final threads:Lsun/nio/ch/NativeThreadSet;

.field private final writable:Z


# direct methods
.method static synthetic -wrap0(JJ)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lsun/nio/ch/FileChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->initIDs()J

    move-result-wide v0

    sput-wide v0, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    iput-object p1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iput-boolean p3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    iput-boolean p4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    iput-boolean p5, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    iput-object p2, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0, p5}, Lsun/nio/ch/FileDispatcherImpl;-><init>(Z)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private fileLockTable()Lsun/nio/ch/FileLockTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v1, :cond_0

    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p0, v1}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    :cond_1
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_4
    new-instance v1, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

    invoke-direct {v1}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private static native initIDs()J
.end method

.method private static isSharedFileLockTable()Z
    .locals 5

    const/4 v1, 0x1

    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v2, :cond_2

    const-class v2, Lsun/nio/ch/FileChannelImpl;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v3, :cond_1

    new-instance v3, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.nio.ch.disableSystemWideOverlappingFileLockCheck"

    invoke-direct {v3, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    const/4 v1, 0x1

    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    :cond_2
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private native map0(IJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .locals 7

    new-instance v0, Lsun/nio/ch/FileChannelImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    return-object v0
.end method

.method public static open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .locals 7

    new-instance v0, Lsun/nio/ch/FileChannelImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    return-object v0
.end method

.method private native position0(Ljava/io/FileDescriptor;J)J
.end method

.method private readInternal(Ljava/nio/ByteBuffer;J)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v3}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, -0x1

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    return v3

    :cond_3
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v3, p1, p2, p3, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_6

    move v3, v0

    :goto_1
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    if-lez v0, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_7

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_6
    move v3, v4

    goto :goto_1

    :cond_7
    return v6

    :catchall_0
    move-exception v3

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_8

    move v6, v0

    :goto_2
    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    if-lez v0, :cond_9

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_a

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_8
    move v6, v4

    goto :goto_2

    :cond_9
    move v5, v4

    goto :goto_3

    :cond_a
    throw v3
.end method

.method private transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0x2000

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v3, v12

    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v8, 0x0

    move-wide/from16 v6, p2

    :try_start_0
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    :goto_0
    cmp-long v11, v8, p4

    if-gez v11, :cond_0

    sub-long v12, p4, v8

    const-wide/16 v14, 0x2000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-wide v8

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v8, v12

    if-ne v5, v4, :cond_0

    int-to-long v12, v5

    add-long/2addr v6, v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_2

    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-wide v8

    :cond_2
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v11

    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v11
.end method

.method private transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v4

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->position()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v4

    sub-long v4, v4, v18

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-wide/from16 v20, v12

    move-wide/from16 v6, v18

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_4

    const-wide/32 v4, 0x800000

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v4

    int-to-long v14, v4

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v11

    cmp-long v4, v20, v12

    if-nez v4, :cond_3

    :try_start_2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v22

    throw v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    add-long/2addr v6, v14

    add-long p2, p2, v14

    sub-long v20, v20, v14

    :try_start_4
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    goto :goto_0

    :cond_3
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    :cond_4
    sub-long v16, v12, v20

    add-long v4, v18, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v22

    return-wide v16
.end method

.method private native transferTo0(IJJI)J
.end method

.method private transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x2000

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v8, 0x0

    move-wide/from16 v6, p1

    :try_start_0
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    :goto_0
    move/from16 v0, p3

    int-to-long v12, v0

    cmp-long v11, v8, v12

    if-gez v11, :cond_0

    move/from16 v0, p3

    int-to-long v12, v0

    sub-long/2addr v12, v8

    long-to-int v11, v12

    const/16 v12, 0x2000

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-wide v8

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v8, v12

    if-ne v5, v4, :cond_0

    int-to-long v12, v5

    add-long/2addr v6, v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_2

    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-wide v8

    :cond_2
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v11

    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v11
.end method

.method private transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    if-nez v0, :cond_0

    const-wide/16 v2, -0x4

    return-wide v2

    :cond_0
    const/4 v7, 0x0

    instance-of v0, p4, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_3

    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    if-nez v0, :cond_1

    const-wide/16 v2, -0x6

    return-wide v2

    :cond_1
    move-object v0, p4

    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    iget-object v7, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    :cond_2
    :goto_0
    if-nez v7, :cond_6

    const-wide/16 v2, -0x4

    return-wide v2

    :cond_3
    instance-of v0, p4, Lsun/nio/ch/SelChImpl;

    if-eqz v0, :cond_2

    instance-of v0, p4, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v0, :cond_4

    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, p4

    check-cast v0, Lsun/nio/ch/SelChImpl;

    invoke-interface {v0}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    goto :goto_0

    :cond_5
    const-wide/16 v2, -0x6

    return-wide v2

    :cond_6
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-static {v7}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v6

    if-ne v1, v6, :cond_7

    const-wide/16 v2, -0x4

    return-wide v2

    :cond_7
    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v10

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    return-wide v2

    :cond_8
    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    :cond_9
    int-to-long v4, p3

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferTo0(IJJI)J

    move-result-wide v8

    const-wide/16 v2, -0x3

    cmp-long v0, v8, v2

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_a
    const-wide/16 v2, -0x6

    cmp-long v0, v8, v2

    if-nez v0, :cond_e

    instance-of v0, p4, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    :cond_b
    instance-of v0, p4, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    const-wide/16 v2, -0x6

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    return-wide v2

    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    :cond_e
    const-wide/16 v2, -0x4

    cmp-long v0, v8, v2

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v2, -0x4

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    return-wide v2

    :cond_f
    const/4 v0, 0x0

    goto :goto_2

    :cond_10
    :try_start_3
    invoke-static {v8, v9}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    return-wide v2

    :cond_11
    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    throw v0

    :cond_12
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v11, v0, Lsun/nio/ch/SelChImpl;

    move-object/from16 v0, p5

    instance-of v2, v0, Lsun/nio/ch/FileChannelImpl;

    if-nez v2, :cond_0

    move v2, v11

    :goto_0
    if-nez v2, :cond_1

    const-wide/16 v2, -0x4

    return-wide v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-wide/from16 v14, p3

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_4

    const-wide/32 v2, 0x800000

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :try_start_0
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v12

    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    if-ltz v12, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    throw v2
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v9

    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    int-to-long v2, v12

    sub-long/2addr v14, v2

    if-eqz v11, :cond_5

    :try_start_3
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    sub-long v2, p3, v14

    return-wide v2

    :cond_5
    :try_start_4
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    if-lez v12, :cond_6

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    int-to-long v2, v12

    add-long p1, p1, v2

    :try_start_5
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    cmp-long v2, v14, p3

    if-nez v2, :cond_4

    throw v10

    :cond_8
    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :goto_5
    throw v9

    :catch_2
    move-exception v13

    invoke-virtual {v9, v13}, Ljava/nio/channels/ClosedByInterruptException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static unmap(Ljava/nio/MappedByteBuffer;)V
    .locals 1

    check-cast p0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    :cond_0
    return-void
.end method

.method private static native unmap0(JJ)I
.end method

.method private writeInternal(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v5}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v5}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, -0x1

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    return v3

    :cond_3
    :try_start_1
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v5, p1, p2, p3, v6}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v5, -0x3

    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_6

    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    if-lez v0, :cond_5

    move v4, v0

    :cond_5
    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_7

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_6
    move v3, v4

    goto :goto_1

    :cond_7
    return v5

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_9

    :goto_2
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    if-lez v0, :cond_8

    move v4, v0

    :cond_8
    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_a

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_9
    move v3, v4

    goto :goto_2

    :cond_a
    throw v5
.end method


# virtual methods
.method public force(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    const/4 v0, -0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v0

    const/4 v4, -0x3

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-le v0, v6, :cond_3

    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-le v0, v6, :cond_4

    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_5

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    throw v4

    :cond_6
    return-void
.end method

.method protected implCloseChannel()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v2}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/channels/FileLock;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    move-object v0, v8

    check-cast v0, Lsun/nio/ch/FileLockImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lsun/nio/ch/FileLockImpl;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v8

    throw v2

    :cond_1
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    goto :goto_1
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    if-eqz p5, :cond_0

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v1, :cond_3

    :cond_0
    if-nez p5, :cond_1

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v1, :cond_4

    :cond_1
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v11

    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    const/4 v9, 0x0

    const/4 v13, -0x1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v13

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    if-nez v9, :cond_2

    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    :cond_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    :try_start_1
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :cond_3
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    :cond_4
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    :catch_0
    move-exception v10

    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    :cond_5
    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v12

    const/4 v1, 0x2

    if-ne v12, v1, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_6
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    if-ne v12, v1, :cond_9

    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_8

    if-nez p5, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-nez v9, :cond_7

    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    :cond_7
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    :try_start_3
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_2

    throw v1

    :cond_8
    :try_start_4
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    invoke-virtual {v11, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v2

    :cond_9
    const/4 v9, 0x1

    :cond_a
    if-nez v9, :cond_b

    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    :cond_b
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    :try_start_5
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v0

    :catch_1
    move-exception v10

    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    :catch_2
    move-exception v10

    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-long v2, p2, p4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Position + size overflow"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Size exceeds Integer.MAX_VALUE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v9, -0x1

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    const/4 v9, 0x0

    :cond_4
    :goto_0
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_8

    if-ltz v9, :cond_7

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    const/4 v9, 0x2

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v2, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v2, :cond_b

    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    :cond_a
    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    :cond_b
    const-wide/16 v16, -0x1

    const/16 v33, -0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    return-object v2

    :cond_c
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    add-long v4, p2, p4

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    const/16 v32, 0x0

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-long v4, p2, p4

    invoke-virtual {v2, v3, v4, v5}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v32

    const/4 v2, -0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_e

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_e
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_11

    const-wide/16 v16, 0x0

    new-instance v6, Ljava/io/FileDescriptor;

    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    new-instance v2, Ljava/nio/DirectByteBuffer;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v3, :cond_f

    if-nez v9, :cond_10

    :cond_f
    const/4 v8, 0x1

    :goto_3
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    return-object v2

    :catch_0
    move-exception v31

    :try_start_4
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_e

    throw v31
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v14

    :try_start_5
    invoke-virtual {v14}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    throw v2

    :cond_10
    const/4 v8, 0x0

    goto :goto_3

    :cond_11
    :try_start_6
    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    rem-long v2, p2, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    long-to-int v0, v2

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v2, v0

    sub-long v10, p2, v2

    move/from16 v0, v30

    int-to-long v2, v0

    add-long v12, p4, v2

    :try_start_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v16

    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v21

    :try_start_9
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :catch_2
    move-exception v34

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-wide/16 v2, 0x64

    :try_start_a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    move-object/from16 v8, p0

    :try_start_b
    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v16

    goto :goto_4

    :catch_3
    move-exception v35

    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    :catch_4
    move-exception v36

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Map failed"

    move-object/from16 v0, v36

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v29

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    throw v29

    :cond_12
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_14

    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    rem-long v2, v16, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_6

    :cond_14
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v20, v0

    new-instance v15, Lsun/nio/ch/FileChannelImpl$Unmapper;

    const/16 v22, 0x0

    move-wide/from16 v18, v12

    invoke-direct/range {v15 .. v22}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$Unmapper;)V

    new-instance v22, Ljava/nio/DirectByteBuffer;

    move/from16 v0, v30

    int-to-long v2, v0

    add-long v24, v16, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v2, :cond_15

    if-nez v9, :cond_16

    :cond_15
    const/16 v28, 0x1

    :goto_7
    move/from16 v23, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v15

    invoke-direct/range {v22 .. v28}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    return-object v22

    :cond_16
    const/16 v28, 0x0

    goto :goto_7
.end method

.method public position()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_0
    const-wide/16 v4, 0x0

    monitor-exit v6

    return-wide v4

    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v3, :cond_2

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    :cond_2
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    cmp-long v3, v0, v10

    if-lez v3, :cond_5

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    invoke-direct {p0, v3, v8, v9}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v0

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    monitor-exit v6

    return-wide v8

    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    cmp-long v7, v0, v10

    if-lez v7, :cond_7

    :goto_2
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_7
    move v4, v5

    goto :goto_2

    :cond_8
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_1
    const/4 v3, 0x0

    monitor-exit v6

    return-object v3

    :cond_2
    :try_start_2
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    :cond_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v3, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    cmp-long v3, v0, v10

    if-lez v3, :cond_5

    :goto_0
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    monitor-exit v6

    return-object p0

    :catchall_1
    move-exception v3

    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    cmp-long v7, v0, v10

    if-lez v7, :cond_7

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_7
    move v4, v5

    goto :goto_1

    :cond_8
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    :cond_0
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    int-to-long v8, v4

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v7

    throw v3

    :cond_1
    monitor-exit v7

    return v4

    :cond_2
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v3, p1, v8, v9, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    :try_start_4
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_4

    move v3, v0

    :goto_0
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    if-lez v0, :cond_5

    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_1

    :cond_6
    monitor-exit v7

    return v6

    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_8

    move v6, v0

    :goto_2
    int-to-long v8, v6

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    if-lez v0, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_9

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_8
    move v6, v4

    goto :goto_2

    :cond_9
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_1
    array-length v4, p1

    sub-int/2addr v4, p3

    if-gt p2, v4, :cond_0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v4

    :cond_2
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v8

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v8

    throw v4

    :cond_3
    const-wide/16 v4, 0x0

    monitor-exit v8

    return-wide v4

    :cond_4
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    const-wide/16 v4, -0x3

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_5
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    :try_start_4
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    move-wide v4, v0

    :goto_0
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    monitor-exit v8

    return-wide v6

    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_9

    move-wide v6, v0

    :goto_2
    invoke-static {v3, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_b

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method release(Lsun/nio/ch/FileLockImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v6

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    return-void
.end method

.method public size()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_0
    monitor-exit v6

    return-wide v10

    :cond_1
    :try_start_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    cmp-long v3, v0, v10

    if-lez v3, :cond_3

    :goto_0
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    monitor-exit v6

    return-wide v8

    :catchall_1
    move-exception v3

    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    cmp-long v7, v0, v10

    if-lez v7, :cond_5

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    :cond_1
    cmp-long v0, p2, v2

    if-ltz v0, :cond_2

    cmp-long v0, p4, v2

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    return-wide v2

    :cond_4
    instance-of v0, p1, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lsun/nio/ch/FileChannelImpl;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    invoke-direct/range {p0 .. p5}, Lsun/nio/ch/FileChannelImpl;->transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v5

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v5}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v5

    :cond_1
    move-object/from16 v0, p5

    instance-of v5, v0, Lsun/nio/ch/FileChannelImpl;

    if-eqz v5, :cond_2

    move-object/from16 v5, p5

    check-cast v5, Lsun/nio/ch/FileChannelImpl;

    iget-boolean v5, v5, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v5, :cond_4

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-ltz v5, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gez v5, :cond_5

    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_4
    new-instance v5, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v5}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v14

    cmp-long v5, p1, v14

    if-lez v5, :cond_6

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_6
    const-wide/32 v6, 0x7fffffff

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    sub-long v6, v14, p1

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    sub-long v6, v14, p1

    long-to-int v4, v6

    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Lsun/nio/ch/FileChannelImpl;->transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v12

    const-wide/16 v6, 0x0

    cmp-long v5, v12, v6

    if-ltz v5, :cond_8

    return-wide v12

    :cond_8
    int-to-long v8, v4

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lsun/nio/ch/FileChannelImpl;->transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v12

    const-wide/16 v6, 0x0

    cmp-long v5, v12, v6

    if-ltz v5, :cond_9

    return-wide v12

    :cond_9
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Lsun/nio/ch/FileChannelImpl;->transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    return-wide v6
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, -0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    const-wide/16 v8, 0x0

    cmp-long v4, p1, v8

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v4

    :cond_1
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v3

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    :cond_2
    monitor-exit v7

    return-object v11

    :cond_3
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    invoke-direct {p0, v4, v8, v9}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    const-wide/16 v8, -0x3

    cmp-long v4, v0, v8

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-nez v4, :cond_6

    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_5

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit v7

    return-object v11

    :cond_6
    :try_start_4
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    const-wide/16 v8, 0x0

    cmp-long v4, v0, v8

    if-ltz v4, :cond_7

    move v4, v5

    :goto_0
    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-le v2, v10, :cond_12

    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_13

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_13

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v8

    cmp-long v4, p1, v8

    if-gez v4, :cond_d

    :cond_9
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v8, p1, p2}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v2

    if-ne v2, v12, :cond_a

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_a
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    if-nez v4, :cond_d

    :try_start_7
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-le v2, v10, :cond_b

    :goto_2
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_c

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    move v5, v6

    goto :goto_2

    :cond_c
    monitor-exit v7

    return-object v11

    :cond_d
    cmp-long v4, v0, p1

    if-lez v4, :cond_e

    move-wide v0, p1

    :cond_e
    :try_start_8
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v4, v0, v1}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v8

    long-to-int v2, v8

    if-ne v2, v12, :cond_f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v4

    if-nez v4, :cond_e

    :cond_f
    :try_start_9
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-le v2, v10, :cond_10

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_11

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_10
    move v5, v6

    goto :goto_3

    :cond_11
    monitor-exit v7

    return-object p0

    :cond_12
    move v5, v6

    goto/16 :goto_1

    :cond_13
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    if-eqz p5, :cond_0

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez p5, :cond_1

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v1, :cond_3

    :cond_1
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v10

    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v12

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    const/4 v1, -0x1

    if-ne v11, v1, :cond_4

    :try_start_1
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-object v1

    :cond_2
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    :cond_3
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    :catch_0
    move-exception v9

    :try_start_2
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v1

    :cond_4
    const/4 v1, 0x1

    if-ne v11, v1, :cond_6

    :try_start_3
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    if-nez p5, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    invoke-virtual {v10, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-object v2

    :cond_6
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v4, :cond_0

    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    :cond_0
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_1
    monitor-exit v6

    return v3

    :cond_2
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, v8, v9, v7}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v4, -0x3

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_5

    :goto_0
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    if-lez v0, :cond_4

    move v3, v0

    :cond_4
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    move v5, v3

    goto :goto_0

    :cond_6
    monitor-exit v6

    return v4

    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    if-lez v0, :cond_8

    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    if-lez v0, :cond_7

    move v3, v0

    :cond_7
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_9

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_8
    move v5, v3

    goto :goto_1

    :cond_9
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_1
    array-length v4, p1

    sub-int/2addr v4, p3

    if-gt p2, v4, :cond_0

    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v4

    :cond_2
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v8

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v8

    throw v4

    :cond_3
    const-wide/16 v4, 0x0

    monitor-exit v8

    return-wide v4

    :cond_4
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    const-wide/16 v4, -0x3

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_5
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    :try_start_4
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    move-wide v4, v0

    :goto_0
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    monitor-exit v8

    return-wide v6

    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_9

    move-wide v6, v0

    :goto_2
    invoke-static {v3, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_b

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
