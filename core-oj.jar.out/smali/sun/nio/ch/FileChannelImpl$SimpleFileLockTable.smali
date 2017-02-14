.class Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;
.super Lsun/nio/ch/FileLockTable;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleFileLockTable"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final lockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lsun/nio/ch/FileLockTable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    return-void
.end method

.method private checkList(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    sget-boolean v2, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v2}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v2

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/nio/channels/FileLock;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->checkList(JJ)V

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/nio/channels/FileLock;)V
    .locals 2

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    .locals 2

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
