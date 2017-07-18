.class public Lsun/nio/ch/FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileLockImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private volatile valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/FileLockImpl;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    sget-boolean v0, Lsun/nio/ch/FileLockImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    return v0
.end method

.method public declared-synchronized release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileLockImpl;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Lsun/nio/ch/FileChannelImpl;

    if-eqz v1, :cond_2

    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    invoke-virtual {v0, p0}, Lsun/nio/ch/FileChannelImpl;->release(Lsun/nio/ch/FileLockImpl;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
