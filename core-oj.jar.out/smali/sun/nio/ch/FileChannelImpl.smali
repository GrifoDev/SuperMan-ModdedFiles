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
    .param p0, "address"    # J
    .param p2, "length"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const-class v0, Lsun/nio/ch/FileChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    .line 409
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    .line 414
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 419
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    .line 1176
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->initIDs()J

    move-result-wide v0

    sput-wide v0, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    .line 49
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "readable"    # Z
    .param p4, "writable"    # Z
    .param p5, "append"    # Z
    .param p6, "parent"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 74
    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 83
    iput-boolean p3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    .line 84
    iput-boolean p4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    .line 85
    iput-boolean p5, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    .line 86
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    .line 88
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0, p5}, Lsun/nio/ch/FileDispatcherImpl;-><init>(Z)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    .line 80
    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 107
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

    .prologue
    .line 986
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v1, :cond_1

    .line 987
    monitor-enter p0

    .line 988
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v1, :cond_0

    .line 989
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 990
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 992
    .local v0, "ti":I
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 993
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p0, v1}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ti":I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1003
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    return-object v1

    .line 994
    .restart local v0    # "ti":I
    :catchall_0
    move-exception v1

    .line 995
    :try_start_3
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 994
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 987
    .end local v0    # "ti":I
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 998
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

    .prologue
    const/4 v1, 0x1

    .line 971
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v2, :cond_2

    .line 972
    const-class v2, Lsun/nio/ch/FileChannelImpl;

    monitor-enter v2

    .line 973
    :try_start_0
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v3, :cond_1

    .line 975
    new-instance v3, Lsun/security/action/GetPropertyAction;

    .line 976
    const-string/jumbo v4, "sun.nio.ch.disableSystemWideOverlappingFileLockCheck"

    .line 975
    invoke-direct {v3, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 974
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 977
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    .line 978
    const/4 v1, 0x1

    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 982
    :cond_2
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    return v1

    .line 972
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
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "parent"    # Ljava/lang/Object;

    .prologue
    .line 96
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
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "append"    # Z
    .param p5, "parent"    # Ljava/lang/Object;

    .prologue
    .line 104
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
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 711
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

    .line 712
    :cond_1
    const/4 v0, 0x0

    .line 713
    .local v0, "n":I
    const/4 v1, -0x1

    .line 714
    .local v1, "ti":I
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 716
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 717
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 718
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 719
    const/4 v3, -0x1

    .line 725
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 726
    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 727
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 728
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 719
    :cond_2
    return v3

    .line 721
    :cond_3
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v3, p1, p2, p3, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 722
    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3

    .line 723
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 725
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 726
    if-lez v0, :cond_6

    move v3, v0

    :goto_1
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 727
    if-lez v0, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 728
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

    .line 726
    goto :goto_1

    .line 723
    :cond_7
    return v6

    .line 724
    :catchall_0
    move-exception v3

    .line 725
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 726
    if-lez v0, :cond_8

    move v6, v0

    :goto_2
    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 727
    if-lez v0, :cond_9

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 728
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

    .line 726
    goto :goto_2

    :cond_9
    move v5, v4

    .line 727
    goto :goto_3

    .line 724
    :cond_a
    throw v3
.end method

.method private transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 16
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    const-wide/16 v12, 0x2000

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v3, v12

    .line 643
    .local v3, "c":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 644
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    .line 645
    .local v8, "tw":J
    move-wide/from16 v6, p2

    .line 647
    .local v6, "pos":J
    :try_start_0
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 648
    :goto_0
    cmp-long v11, v8, p4

    if-gez v11, :cond_0

    .line 649
    sub-long v12, p4, v8

    const-wide/16 v14, 0x2000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 652
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 653
    .local v4, "nr":I
    if-gtz v4, :cond_1

    .line 669
    .end local v4    # "nr":I
    :cond_0
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 663
    return-wide v8

    .line 655
    .restart local v4    # "nr":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v5

    .line 657
    .local v5, "nw":I
    int-to-long v12, v5

    add-long/2addr v8, v12

    .line 658
    if-ne v5, v4, :cond_0

    .line 660
    int-to-long v12, v5

    add-long/2addr v6, v12

    .line 661
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 664
    .end local v4    # "nr":I
    .end local v5    # "nw":I
    :catch_0
    move-exception v10

    .line 665
    .local v10, "x":Ljava/io/IOException;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_2

    .line 669
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 666
    return-wide v8

    .line 667
    :cond_2
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    .end local v10    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 669
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 668
    throw v11
.end method

.method private transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J
    .locals 24
    .param p1, "src"    # Lsun/nio/ch/FileChannelImpl;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v4, :cond_0

    .line 603
    new-instance v4, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v4

    .line 604
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 605
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->position()J

    move-result-wide v18

    .line 606
    .local v18, "pos":J
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v4

    sub-long v4, v4, v18

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 608
    .local v12, "max":J
    move-wide/from16 v20, v12

    .line 609
    .local v20, "remaining":J
    move-wide/from16 v6, v18

    .line 610
    .local v6, "p":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_4

    .line 611
    const-wide/32 v4, 0x800000

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 613
    .local v8, "size":J
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 615
    .local v10, "bb":Ljava/nio/MappedByteBuffer;
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v4

    int-to-long v14, v4

    .line 616
    .local v14, "n":J
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

    .line 620
    .end local v14    # "n":J
    :catch_0
    move-exception v11

    .line 622
    .local v11, "ioe":Ljava/io/IOException;
    cmp-long v4, v20, v12

    if-nez v4, :cond_3

    .line 623
    :try_start_2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 625
    .end local v11    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 626
    :try_start_3
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 625
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 604
    .end local v6    # "p":J
    .end local v8    # "size":J
    .end local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "max":J
    .end local v18    # "pos":J
    .end local v20    # "remaining":J
    :catchall_1
    move-exception v4

    monitor-exit v22

    throw v4

    .line 616
    .restart local v6    # "p":J
    .restart local v8    # "size":J
    .restart local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "max":J
    .restart local v14    # "n":J
    .restart local v18    # "pos":J
    .restart local v20    # "remaining":J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 617
    :cond_2
    add-long/2addr v6, v14

    .line 618
    add-long p2, p2, v14

    .line 619
    sub-long v20, v20, v14

    .line 626
    :try_start_4
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    goto :goto_0

    .end local v14    # "n":J
    .restart local v11    # "ioe":Ljava/io/IOException;
    :cond_3
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 629
    .end local v8    # "size":J
    .end local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v11    # "ioe":Ljava/io/IOException;
    :cond_4
    sub-long v16, v12, v20

    .line 630
    .local v16, "nwritten":J
    add-long v4, v18, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v22

    .line 631
    return-wide v16
.end method

.method private native transferTo0(IJJI)J
.end method

.method private transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J
    .locals 15
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    const/16 v11, 0x2000

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 533
    .local v3, "c":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 534
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    .line 535
    .local v8, "tw":J
    move-wide/from16 v6, p1

    .line 537
    .local v6, "pos":J
    :try_start_0
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 538
    :goto_0
    move/from16 v0, p3

    int-to-long v12, v0

    cmp-long v11, v8, v12

    if-gez v11, :cond_0

    .line 539
    move/from16 v0, p3

    int-to-long v12, v0

    sub-long/2addr v12, v8

    long-to-int v11, v12

    const/16 v12, 0x2000

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 540
    invoke-virtual {p0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 541
    .local v4, "nr":I
    if-gtz v4, :cond_1

    .line 559
    .end local v4    # "nr":I
    :cond_0
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 553
    return-wide v8

    .line 543
    .restart local v4    # "nr":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 546
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 547
    .local v5, "nw":I
    int-to-long v12, v5

    add-long/2addr v8, v12

    .line 548
    if-ne v5, v4, :cond_0

    .line 550
    int-to-long v12, v5

    add-long/2addr v6, v12

    .line 551
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    .end local v4    # "nr":I
    .end local v5    # "nw":I
    :catch_0
    move-exception v10

    .line 555
    .local v10, "x":Ljava/io/IOException;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_2

    .line 559
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 556
    return-wide v8

    .line 557
    :cond_2
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    .end local v10    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 559
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 558
    throw v11
.end method

.method private transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J
    .locals 11
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    if-nez v0, :cond_0

    .line 426
    const-wide/16 v2, -0x4

    return-wide v2

    .line 428
    :cond_0
    const/4 v7, 0x0

    .line 429
    .local v7, "targetFD":Ljava/io/FileDescriptor;
    instance-of v0, p4, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_3

    .line 430
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    if-nez v0, :cond_1

    .line 431
    const-wide/16 v2, -0x6

    return-wide v2

    :cond_1
    move-object v0, p4

    .line 432
    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    iget-object v7, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 439
    .end local v7    # "targetFD":Ljava/io/FileDescriptor;
    :cond_2
    :goto_0
    if-nez v7, :cond_6

    .line 440
    const-wide/16 v2, -0x4

    return-wide v2

    .line 433
    .restart local v7    # "targetFD":Ljava/io/FileDescriptor;
    :cond_3
    instance-of v0, p4, Lsun/nio/ch/SelChImpl;

    if-eqz v0, :cond_2

    .line 435
    instance-of v0, p4, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v0, :cond_4

    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, p4

    .line 437
    check-cast v0, Lsun/nio/ch/SelChImpl;

    invoke-interface {v0}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .local v7, "targetFD":Ljava/io/FileDescriptor;
    goto :goto_0

    .line 436
    .local v7, "targetFD":Ljava/io/FileDescriptor;
    :cond_5
    const-wide/16 v2, -0x6

    return-wide v2

    .line 441
    .end local v7    # "targetFD":Ljava/io/FileDescriptor;
    :cond_6
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    .line 442
    .local v1, "thisFDVal":I
    invoke-static {v7}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v6

    .line 443
    .local v6, "targetFDVal":I
    if-ne v1, v6, :cond_7

    .line 444
    const-wide/16 v2, -0x4

    return-wide v2

    .line 446
    :cond_7
    const-wide/16 v8, -0x1

    .line 447
    .local v8, "n":J
    const/4 v10, -0x1

    .line 449
    .local v10, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 450
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v10

    .line 451
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    .line 452
    const-wide/16 v2, -0x1

    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 452
    return-wide v2

    .line 453
    :cond_8
    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 455
    :cond_9
    int-to-long v4, p3

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferTo0(IJJI)J

    move-result-wide v8

    .line 456
    const-wide/16 v2, -0x3

    cmp-long v0, v8, v2

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 457
    :cond_a
    const-wide/16 v2, -0x6

    cmp-long v0, v8, v2

    if-nez v0, :cond_e

    .line 458
    instance-of v0, p4, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v0, :cond_b

    .line 459
    const/4 v0, 0x0

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 460
    :cond_b
    instance-of v0, p4, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_c

    .line 461
    const/4 v0, 0x0

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :cond_c
    const-wide/16 v2, -0x6

    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 472
    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 462
    return-wide v2

    .line 472
    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    .line 464
    :cond_e
    const-wide/16 v2, -0x4

    cmp-long v0, v8, v2

    if-nez v0, :cond_10

    .line 466
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    const-wide/16 v2, -0x4

    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 472
    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 467
    return-wide v2

    .line 472
    :cond_f
    const/4 v0, 0x0

    goto :goto_2

    .line 469
    :cond_10
    :try_start_3
    invoke-static {v8, v9}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 472
    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 469
    return-wide v2

    .line 472
    :cond_11
    const/4 v0, 0x0

    goto :goto_3

    .line 470
    :catchall_0
    move-exception v0

    .line 471
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 472
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 470
    throw v0

    .line 472
    :cond_12
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 17
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    move-object/from16 v0, p5

    instance-of v11, v0, Lsun/nio/ch/SelChImpl;

    .line 484
    .local v11, "isSelChImpl":Z
    move-object/from16 v0, p5

    instance-of v2, v0, Lsun/nio/ch/FileChannelImpl;

    if-nez v2, :cond_0

    move v2, v11

    :goto_0
    if-nez v2, :cond_1

    .line 485
    const-wide/16 v2, -0x4

    return-wide v2

    .line 484
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 488
    :cond_1
    move-wide/from16 v14, p3

    .line 489
    .local v14, "remaining":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_4

    .line 490
    const-wide/32 v2, 0x800000

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 492
    .local v6, "size":J
    :try_start_0
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 495
    .local v8, "dbb":Ljava/nio/MappedByteBuffer;
    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 496
    .local v12, "n":I
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

    .line 504
    .end local v12    # "n":I
    :catchall_0
    move-exception v2

    .line 505
    :try_start_2
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 504
    throw v2
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    :catch_0
    move-exception v9

    .line 510
    .local v9, "e":Ljava/nio/channels/ClosedByInterruptException;
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

    .line 496
    .end local v9    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "n":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 497
    :cond_3
    int-to-long v2, v12

    sub-long/2addr v14, v2

    .line 498
    if-eqz v11, :cond_5

    .line 505
    :try_start_3
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 524
    .end local v6    # "size":J
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "n":I
    :cond_4
    sub-long v2, p3, v14

    return-wide v2

    .line 502
    .restart local v6    # "size":J
    .restart local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "n":I
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

    .line 503
    :cond_7
    int-to-long v2, v12

    add-long p1, p1, v2

    .line 505
    :try_start_5
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 517
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "n":I
    :catch_1
    move-exception v10

    .line 519
    .local v10, "ioe":Ljava/io/IOException;
    cmp-long v2, v14, p3

    if-nez v2, :cond_4

    .line 520
    throw v10

    .line 510
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v9    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_8
    const/4 v2, 0x1

    goto :goto_3

    .line 512
    :cond_9
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 516
    :goto_5
    throw v9

    .line 513
    :catch_2
    move-exception v13

    .line 514
    .local v13, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v9, v13}, Ljava/nio/channels/ClosedByInterruptException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static unmap(Ljava/nio/MappedByteBuffer;)V
    .locals 1
    .param p0, "bb"    # Ljava/nio/MappedByteBuffer;

    .prologue
    .line 830
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    .end local p0    # "bb":Ljava/nio/MappedByteBuffer;
    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 831
    .local v0, "cl":Lsun/misc/Cleaner;
    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 829
    :cond_0
    return-void
.end method

.method private static native unmap0(JJ)I
.end method

.method private writeInternal(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 750
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

    .line 751
    :cond_1
    const/4 v0, 0x0

    .line 752
    .local v0, "n":I
    const/4 v1, -0x1

    .line 753
    .local v1, "ti":I
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v5}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 755
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 756
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 757
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 758
    const/4 v3, -0x1

    .line 764
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 765
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 766
    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 767
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 758
    :cond_2
    return v3

    .line 760
    :cond_3
    :try_start_1
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v5, p1, p2, p3, v6}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 761
    const/4 v5, -0x3

    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 762
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 764
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 765
    if-lez v0, :cond_6

    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 766
    if-lez v0, :cond_5

    move v4, v0

    :cond_5
    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 767
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

    .line 765
    goto :goto_1

    .line 762
    :cond_7
    return v5

    .line 763
    :catchall_0
    move-exception v5

    .line 764
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 765
    if-lez v0, :cond_9

    :goto_2
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 766
    if-lez v0, :cond_8

    move v4, v0

    :cond_8
    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 767
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

    .line 765
    goto :goto_2

    .line 763
    :cond_a
    throw v5
.end method


# virtual methods
.method public force(Z)V
    .locals 7
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 388
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 389
    const/4 v0, -0x1

    .line 390
    .local v0, "rv":I
    const/4 v1, -0x1

    .line 392
    .local v1, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 393
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 400
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 401
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 402
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 395
    :cond_0
    return-void

    .line 397
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v0

    .line 398
    const/4 v4, -0x3

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 400
    :cond_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 401
    if-le v0, v6, :cond_3

    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 402
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

    .line 401
    goto :goto_0

    .line 399
    :catchall_0
    move-exception v4

    .line 400
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 401
    if-le v0, v6, :cond_4

    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 402
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

    .line 401
    goto :goto_1

    .line 399
    :cond_5
    throw v4

    .line 387
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

    .prologue
    .line 117
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v2}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "fl$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/channels/FileLock;

    .line 119
    .local v8, "fl":Ljava/nio/channels/FileLock;
    monitor-enter v8

    .line 120
    :try_start_0
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    .line 122
    move-object v0, v8

    check-cast v0, Lsun/nio/ch/FileLockImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lsun/nio/ch/FileLockImpl;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v8

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit v8

    throw v2

    .line 128
    .end local v8    # "fl":Ljava/nio/channels/FileLock;
    .end local v9    # "fl$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    .line 130
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 115
    :goto_1
    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    goto :goto_1
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 15
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1010
    if-eqz p5, :cond_0

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v1, :cond_3

    .line 1012
    :cond_0
    if-nez p5, :cond_1

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v1, :cond_4

    .line 1014
    :cond_1
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1015
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v11

    .line 1016
    .local v11, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1017
    const/4 v9, 0x0

    .line 1018
    .local v9, "completed":Z
    const/4 v13, -0x1

    .line 1020
    .local v13, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 1021
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v13

    .line 1022
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 1023
    const/4 v1, 0x0

    .line 1039
    if-nez v9, :cond_2

    .line 1040
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1041
    :cond_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1043
    :try_start_1
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1023
    return-object v1

    .line 1011
    .end local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v9    # "completed":Z
    .end local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v13    # "ti":I
    :cond_3
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 1013
    :cond_4
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 1044
    .restart local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v9    # "completed":Z
    .restart local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v13    # "ti":I
    :catch_0
    move-exception v10

    .line 1045
    .local v10, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 1026
    .end local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
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

    .line 1027
    .local v12, "n":I
    const/4 v1, 0x2

    if-ne v12, v1, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1028
    :cond_6
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1029
    const/4 v1, 0x1

    if-ne v12, v1, :cond_9

    .line 1030
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_8

    if-nez p5, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    .end local v12    # "n":I
    :catchall_0
    move-exception v1

    .line 1039
    if-nez v9, :cond_7

    .line 1040
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1041
    :cond_7
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1043
    :try_start_3
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1038
    throw v1

    .line 1031
    .restart local v12    # "n":I
    :cond_8
    :try_start_4
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    .line 1032
    const/4 v8, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 1031
    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1033
    .local v2, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v11, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1034
    move-object v0, v2

    .line 1036
    .end local v2    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_9
    const/4 v9, 0x1

    .line 1039
    :cond_a
    if-nez v9, :cond_b

    .line 1040
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1041
    :cond_b
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1043
    :try_start_5
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1048
    return-object v0

    .line 1044
    :catch_1
    move-exception v10

    .line 1045
    .restart local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 1044
    .end local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v12    # "n":I
    :catch_2
    move-exception v10

    .line 1045
    .restart local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 38
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 843
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    .line 844
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 845
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_1

    .line 846
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    :cond_1
    add-long v2, p2, p4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 848
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Position + size overflow"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 849
    :cond_2
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    .line 850
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Size exceeds Integer.MAX_VALUE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    :cond_3
    const/4 v9, -0x1

    .line 852
    .local v9, "imode":I
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 853
    const/4 v9, 0x0

    .line 858
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

    .line 854
    :cond_5
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 855
    const/4 v9, 0x1

    goto :goto_0

    .line 856
    :cond_6
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 857
    const/4 v9, 0x2

    goto :goto_0

    .line 858
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 859
    :cond_8
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v2, :cond_a

    .line 861
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v2, :cond_b

    .line 862
    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    .line 860
    :cond_a
    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    .line 864
    :cond_b
    const-wide/16 v16, -0x1

    .line 865
    .local v16, "addr":J
    const/16 v33, -0x1

    .line 867
    .local v33, "ti":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v33

    .line 869
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_c

    .line 870
    const/4 v2, 0x0

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 870
    return-object v2

    .line 871
    :cond_c
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    add-long v4, p2, p4

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    .line 878
    const/16 v32, 0x0

    .line 883
    .local v32, "rv":I
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

    .line 899
    const/4 v2, -0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_e

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_d

    .line 901
    .end local v32    # "rv":I
    :cond_e
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_11

    .line 902
    const-wide/16 v16, 0x0

    .line 904
    new-instance v6, Ljava/io/FileDescriptor;

    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    .line 905
    .local v6, "dummy":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/nio/DirectByteBuffer;

    const-wide/16 v4, 0x0

    .line 906
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v3, :cond_f

    if-nez v9, :cond_10

    :cond_f
    const/4 v8, 0x1

    .line 905
    :goto_3
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 905
    return-object v2

    .line 884
    .end local v6    # "dummy":Ljava/io/FileDescriptor;
    .restart local v32    # "rv":I
    :catch_0
    move-exception v31

    .line 890
    .local v31, "r":Ljava/io/IOException;
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

    .line 891
    throw v31
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 893
    :catch_1
    move-exception v14

    .line 894
    .local v14, "e":Landroid/system/ErrnoException;
    :try_start_5
    invoke-virtual {v14}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 949
    .end local v14    # "e":Landroid/system/ErrnoException;
    .end local v31    # "r":Ljava/io/IOException;
    .end local v32    # "rv":I
    :catchall_0
    move-exception v2

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 949
    throw v2

    .line 906
    .restart local v6    # "dummy":Ljava/io/FileDescriptor;
    :cond_10
    const/4 v8, 0x0

    goto :goto_3

    .line 909
    .end local v6    # "dummy":Ljava/io/FileDescriptor;
    :cond_11
    :try_start_6
    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    rem-long v2, p2, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    long-to-int v0, v2

    move/from16 v30, v0

    .line 910
    .local v30, "pagePosition":I
    move/from16 v0, v30

    int-to-long v2, v0

    sub-long v10, p2, v2

    .line 911
    .local v10, "mapPosition":J
    move/from16 v0, v30

    int-to-long v2, v0

    add-long v12, p4, v2

    .line 914
    .local v12, "mapSize":J
    :try_start_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    move-object/from16 v8, p0

    .line 915
    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v16

    .line 937
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

    .line 943
    .local v21, "mfd":Ljava/io/FileDescriptor;
    :try_start_9
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 916
    .end local v21    # "mfd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v34

    .line 919
    .local v34, "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 921
    const-wide/16 v2, 0x64

    :try_start_a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    move-object/from16 v8, p0

    .line 926
    :try_start_b
    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v16

    goto :goto_4

    .line 922
    :catch_3
    move-exception v35

    .line 923
    .local v35, "y":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    .line 927
    .end local v35    # "y":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v36

    .line 929
    .local v36, "y":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Map failed"

    move-object/from16 v0, v36

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 938
    .end local v34    # "x":Ljava/lang/OutOfMemoryError;
    .end local v36    # "y":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v29

    .line 939
    .local v29, "ioe":Ljava/io/IOException;
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    .line 940
    throw v29

    .line 944
    .end local v29    # "ioe":Ljava/io/IOException;
    .restart local v21    # "mfd":Ljava/io/FileDescriptor;
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

    .line 945
    :cond_14
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v20, v0

    .line 946
    .local v20, "isize":I
    new-instance v15, Lsun/nio/ch/FileChannelImpl$Unmapper;

    const/16 v22, 0x0

    move-wide/from16 v18, v12

    invoke-direct/range {v15 .. v22}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$Unmapper;)V

    .line 947
    .local v15, "um":Lsun/nio/ch/FileChannelImpl$Unmapper;
    new-instance v22, Ljava/nio/DirectByteBuffer;

    move/from16 v0, v30

    int-to-long v2, v0

    add-long v24, v16, v2

    .line 948
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

    .line 947
    invoke-direct/range {v22 .. v28}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 947
    return-object v22

    .line 948
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

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    .line 259
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 260
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 261
    const-wide/16 v0, -0x1

    .line 262
    .local v0, "p":J
    const/4 v2, -0x1

    .line 264
    .local v2, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 265
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 266
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    .line 277
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 278
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 279
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

    .line 260
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 267
    :cond_0
    const-wide/16 v4, 0x0

    monitor-exit v6

    return-wide v4

    .line 268
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v3, :cond_2

    .line 269
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 273
    :cond_2
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 274
    :goto_0
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 275
    :cond_3
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    .line 277
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 278
    cmp-long v3, v0, v10

    if-lez v3, :cond_5

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 279
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

    .line 273
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

    .line 278
    goto :goto_1

    :cond_6
    monitor-exit v6

    .line 275
    return-wide v8

    .line 276
    :catchall_1
    move-exception v3

    .line 277
    :try_start_5
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 278
    cmp-long v7, v0, v10

    if-lez v7, :cond_7

    :goto_2
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 279
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

    .line 278
    goto :goto_2

    .line 276
    :cond_8
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 13
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 285
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 286
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    .line 287
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 288
    :cond_0
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 289
    const-wide/16 v0, -0x1

    .line 290
    .local v0, "p":J
    const/4 v2, -0x1

    .line 292
    .local v2, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 293
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 294
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 302
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 303
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 304
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

    .line 288
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 295
    :cond_1
    const/4 v3, 0x0

    monitor-exit v6

    return-object v3

    .line 296
    :cond_2
    :try_start_2
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 298
    :cond_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v3, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    .line 299
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 302
    :cond_4
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 303
    cmp-long v3, v0, v10

    if-lez v3, :cond_5

    :goto_0
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 304
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

    .line 303
    goto :goto_0

    :cond_6
    monitor-exit v6

    .line 300
    return-object p0

    .line 301
    :catchall_1
    move-exception v3

    .line 302
    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 303
    cmp-long v7, v0, v10

    if-lez v7, :cond_7

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 304
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

    .line 303
    goto :goto_1

    .line 301
    :cond_8
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 146
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v3, :cond_0

    .line 147
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    .line 148
    :cond_0
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v7

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "n":I
    const/4 v1, -0x1

    .line 151
    .local v1, "ti":I
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 153
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 154
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 155
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 162
    :try_start_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 163
    int-to-long v8, v4

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 164
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 165
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

    .line 148
    .end local v2    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v7

    throw v3

    .restart local v2    # "traceContext":Ljava/lang/Object;
    :cond_1
    monitor-exit v7

    .line 156
    return v4

    .line 158
    :cond_2
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v3, p1, v8, v9, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 159
    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    .line 162
    :try_start_4
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 163
    if-lez v0, :cond_4

    move v3, v0

    :goto_0
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 164
    if-lez v0, :cond_5

    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 165
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

    .line 163
    goto :goto_0

    :cond_5
    move v5, v4

    .line 164
    goto :goto_1

    :cond_6
    monitor-exit v7

    .line 160
    return v6

    .line 161
    :catchall_1
    move-exception v3

    .line 162
    :try_start_5
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 163
    if-lez v0, :cond_8

    move v6, v0

    :goto_2
    int-to-long v8, v6

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 164
    if-lez v0, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 165
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

    .line 163
    goto :goto_2

    .line 161
    :cond_9
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    if-nez p1, :cond_0

    .line 695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 696
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v0, :cond_2

    .line 699
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 700
    :cond_2
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 701
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 706
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 174
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 173
    :cond_1
    array-length v4, p1

    sub-int/2addr v4, p3

    if-gt p2, v4, :cond_0

    .line 175
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 176
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v4, :cond_2

    .line 177
    new-instance v4, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v4

    .line 178
    :cond_2
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v8

    .line 179
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "n":J
    const/4 v2, -0x1

    .line 181
    .local v2, "ti":I
    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 183
    .local v3, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 184
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 185
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    .line 192
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 193
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 194
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 195
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

    .line 178
    .end local v3    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v8

    throw v4

    .line 186
    .restart local v3    # "traceContext":Ljava/lang/Object;
    :cond_3
    const-wide/16 v4, 0x0

    monitor-exit v8

    return-wide v4

    .line 188
    :cond_4
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 189
    const-wide/16 v4, -0x3

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_4

    .line 190
    :cond_5
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    .line 192
    :try_start_4
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 193
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    move-wide v4, v0

    :goto_0
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 194
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 195
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

    .line 193
    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 194
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    monitor-exit v8

    .line 190
    return-wide v6

    .line 191
    :catchall_1
    move-exception v4

    .line 192
    :try_start_5
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 193
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_9

    move-wide v6, v0

    :goto_2
    invoke-static {v3, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 194
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 195
    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_b

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 193
    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 194
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 191
    :cond_b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method release(Lsun/nio/ch/FileLockImpl;)V
    .locals 7
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v6

    .line 1093
    .local v6, "ti":I
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1094
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1098
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

    .line 1095
    :catchall_0
    move-exception v0

    .line 1096
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1095
    throw v0

    .line 1098
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1090
    return-void
.end method

.method public size()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    .line 310
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 311
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 312
    const-wide/16 v0, -0x1

    .line 313
    .local v0, "s":J
    const/4 v2, -0x1

    .line 315
    .local v2, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 316
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 317
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    .line 324
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 325
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 326
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

    .line 311
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_0
    monitor-exit v6

    .line 318
    return-wide v10

    .line 320
    :cond_1
    :try_start_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 321
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    :cond_2
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    .line 324
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 325
    cmp-long v3, v0, v10

    if-lez v3, :cond_3

    :goto_0
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 326
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

    .line 325
    goto :goto_0

    :cond_4
    monitor-exit v6

    .line 322
    return-wide v8

    .line 323
    :catchall_1
    move-exception v3

    .line 324
    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 325
    cmp-long v7, v0, v10

    if-lez v7, :cond_5

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 326
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

    .line 325
    goto :goto_1

    .line 323
    :cond_6
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 6
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 677
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 678
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 680
    :cond_0
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v0, :cond_1

    .line 681
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 682
    :cond_1
    cmp-long v0, p2, v2

    if-ltz v0, :cond_2

    cmp-long v0, p4, v2

    if-gez v0, :cond_3

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 684
    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    .line 685
    return-wide v2

    .line 686
    :cond_4
    instance-of v0, p1, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_5

    move-object v1, p1

    .line 687
    check-cast v1, Lsun/nio/ch/FileChannelImpl;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J

    move-result-wide v0

    return-wide v0

    .line 690
    :cond_5
    invoke-direct/range {p0 .. p5}, Lsun/nio/ch/FileChannelImpl;->transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 17
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 568
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 569
    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v5

    .line 570
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v5, :cond_1

    .line 571
    new-instance v5, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v5}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v5

    .line 572
    :cond_1
    move-object/from16 v0, p5

    instance-of v5, v0, Lsun/nio/ch/FileChannelImpl;

    if-eqz v5, :cond_2

    move-object/from16 v5, p5

    .line 573
    check-cast v5, Lsun/nio/ch/FileChannelImpl;

    iget-boolean v5, v5, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v5, :cond_4

    .line 575
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-ltz v5, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gez v5, :cond_5

    .line 576
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 574
    :cond_4
    new-instance v5, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v5}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v5

    .line 577
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v14

    .line 578
    .local v14, "sz":J
    cmp-long v5, p1, v14

    if-lez v5, :cond_6

    .line 579
    const-wide/16 v6, 0x0

    return-wide v6

    .line 580
    :cond_6
    const-wide/32 v6, 0x7fffffff

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    .line 581
    .local v4, "icount":I
    sub-long v6, v14, p1

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    .line 582
    sub-long v6, v14, p1

    long-to-int v4, v6

    .line 587
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Lsun/nio/ch/FileChannelImpl;->transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v12

    .local v12, "n":J
    const-wide/16 v6, 0x0

    cmp-long v5, v12, v6

    if-ltz v5, :cond_8

    .line 588
    return-wide v12

    .line 591
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

    .line 592
    return-wide v12

    .line 595
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
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 332
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 333
    const-wide/16 v8, 0x0

    cmp-long v4, p1, v8

    if-gez v4, :cond_0

    .line 334
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 340
    :cond_0
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v4, :cond_1

    .line 341
    new-instance v4, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v4

    .line 342
    :cond_1
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v7

    .line 343
    const/4 v2, -0x1

    .line 344
    .local v2, "rv":I
    const-wide/16 v0, -0x1

    .line 345
    .local v0, "p":J
    const/4 v3, -0x1

    .line 347
    .local v3, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 348
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v3

    .line 349
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 380
    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 381
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 382
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

    .line 342
    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    :cond_2
    monitor-exit v7

    .line 350
    return-object v11

    .line 354
    :cond_3
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    invoke-direct {p0, v4, v8, v9}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    .line 355
    const-wide/16 v8, -0x3

    cmp-long v4, v0, v8

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 356
    :cond_4
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-nez v4, :cond_6

    .line 380
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 381
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 382
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

    .line 357
    return-object v11

    .line 358
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

    .line 379
    :catchall_1
    move-exception v4

    .line 380
    :try_start_5
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 381
    if-le v2, v10, :cond_12

    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 382
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

    .line 358
    goto :goto_0

    .line 362
    :cond_8
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v8

    cmp-long v4, p1, v8

    if-gez v4, :cond_d

    .line 365
    :cond_9
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v8, p1, p2}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v2

    .line 366
    if-ne v2, v12, :cond_a

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 367
    :cond_a
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    if-nez v4, :cond_d

    .line 380
    :try_start_7
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 381
    if-le v2, v10, :cond_b

    :goto_2
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 382
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

    .line 381
    goto :goto_2

    :cond_c
    monitor-exit v7

    .line 368
    return-object v11

    .line 373
    :cond_d
    cmp-long v4, v0, p1

    if-lez v4, :cond_e

    .line 374
    move-wide v0, p1

    .line 376
    :cond_e
    :try_start_8
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v4, v0, v1}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v8

    long-to-int v2, v8

    .line 377
    if-ne v2, v12, :cond_f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v4

    if-nez v4, :cond_e

    .line 380
    :cond_f
    :try_start_9
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 381
    if-le v2, v10, :cond_10

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 382
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

    .line 381
    goto :goto_3

    :cond_11
    monitor-exit v7

    .line 378
    return-object p0

    :cond_12
    move v5, v6

    .line 381
    goto/16 :goto_1

    .line 379
    :cond_13
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 13
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1054
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1055
    if-eqz p5, :cond_0

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v1, :cond_2

    .line 1057
    :cond_0
    if-nez p5, :cond_1

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v1, :cond_3

    .line 1059
    :cond_1
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1060
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v10

    .line 1061
    .local v10, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1064
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v12

    .line 1067
    .local v12, "ti":I
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1068
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

    .line 1073
    .local v11, "result":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_4

    .line 1074
    :try_start_1
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1075
    const/4 v1, 0x0

    .line 1086
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1075
    return-object v1

    .line 1056
    .end local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v10    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v11    # "result":I
    .end local v12    # "ti":I
    :cond_2
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 1058
    :cond_3
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 1069
    .restart local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v10    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v12    # "ti":I
    :catch_0
    move-exception v9

    .line 1070
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1071
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1085
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 1086
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1085
    throw v1

    .line 1077
    .restart local v11    # "result":I
    :cond_4
    const/4 v1, 0x1

    if-ne v11, v1, :cond_6

    .line 1078
    :try_start_3
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    if-nez p5, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1079
    :cond_5
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    .line 1080
    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    .line 1079
    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1081
    .local v2, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v10, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1086
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1082
    return-object v2

    .line 1086
    .end local v2    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_6
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1084
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 202
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v4, :cond_0

    .line 203
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    .line 204
    :cond_0
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "n":I
    const/4 v1, -0x1

    .line 207
    .local v1, "ti":I
    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 209
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 210
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 211
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    .line 218
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 219
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 220
    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 221
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

    .line 204
    .end local v2    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .restart local v2    # "traceContext":Ljava/lang/Object;
    :cond_1
    monitor-exit v6

    .line 212
    return v3

    .line 214
    :cond_2
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, v8, v9, v7}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 215
    const/4 v4, -0x3

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 216
    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    .line 218
    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 219
    if-lez v0, :cond_5

    :goto_0
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 220
    if-lez v0, :cond_4

    move v3, v0

    :cond_4
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 221
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

    .line 219
    goto :goto_0

    :cond_6
    monitor-exit v6

    .line 216
    return v4

    .line 217
    :catchall_1
    move-exception v4

    .line 218
    :try_start_5
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 219
    if-lez v0, :cond_8

    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 220
    if-lez v0, :cond_7

    move v3, v0

    :cond_7
    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 221
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

    .line 219
    goto :goto_1

    .line 217
    :cond_9
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    if-nez p1, :cond_0

    .line 734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 735
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v0, :cond_2

    .line 738
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 739
    :cond_2
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 740
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 741
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 745
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 230
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 229
    :cond_1
    array-length v4, p1

    sub-int/2addr v4, p3

    if-gt p2, v4, :cond_0

    .line 231
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 232
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v4, :cond_2

    .line 233
    new-instance v4, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v4

    .line 234
    :cond_2
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v8

    .line 235
    const-wide/16 v0, 0x0

    .line 236
    .local v0, "n":J
    const/4 v2, -0x1

    .line 237
    .local v2, "ti":I
    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 239
    .local v3, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 240
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 241
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    .line 248
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 249
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 250
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 251
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

    .line 234
    .end local v3    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v8

    throw v4

    .line 242
    .restart local v3    # "traceContext":Ljava/lang/Object;
    :cond_3
    const-wide/16 v4, 0x0

    monitor-exit v8

    return-wide v4

    .line 244
    :cond_4
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 245
    const-wide/16 v4, -0x3

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_4

    .line 246
    :cond_5
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    .line 248
    :try_start_4
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 249
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    move-wide v4, v0

    :goto_0
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 250
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 251
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

    .line 249
    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 250
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    monitor-exit v8

    .line 246
    return-wide v6

    .line 247
    :catchall_1
    move-exception v4

    .line 248
    :try_start_5
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 249
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_9

    move-wide v6, v0

    :goto_2
    invoke-static {v3, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 250
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 251
    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_b

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 249
    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 250
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 247
    :cond_b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
