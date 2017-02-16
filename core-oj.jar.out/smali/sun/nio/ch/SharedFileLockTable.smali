.class Lsun/nio/ch/SharedFileLockTable;
.super Lsun/nio/ch/FileLockTable;
.source "FileLockTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static lockMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lsun/nio/ch/FileKey;",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;>;"
        }
    .end annotation
.end field

.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channel:Ljava/nio/channels/Channel;

.field private final fileKey:Lsun/nio/ch/FileKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/SharedFileLockTable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 106
    sput-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 80
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/Channel;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lsun/nio/ch/FileLockTable;-><init>()V

    .line 119
    iput-object p1, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    .line 120
    invoke-static {p2}, Lsun/nio/ch/FileKey;->create(Ljava/io/FileDescriptor;)Lsun/nio/ch/FileKey;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    .line 118
    return-void
.end method

.method private checkList(Ljava/util/List;JJ)V
    .locals 4
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    sget-boolean v3, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 252
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 253
    .local v1, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v1}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    .line 254
    .local v0, "fl":Ljava/nio/channels/FileLock;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    new-instance v3, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v3}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v3

    .line 249
    .end local v0    # "fl":Ljava/nio/channels/FileLock;
    .end local v1    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_2
    return-void
.end method

.method private removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V
    .locals 1
    .param p1, "fk"    # Lsun/nio/ch/FileKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/FileKey;",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    sget-boolean v0, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_0
    sget-boolean v0, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3
    return-void
.end method

.method private removeStaleEntries()V
    .locals 4

    .prologue
    .line 262
    :cond_0
    :goto_0
    sget-object v3, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .local v2, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v2}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->fileKey()Lsun/nio/ch/FileKey;

    move-result-object v0

    .line 264
    .local v0, "fk":Lsun/nio/ch/FileKey;
    sget-object v3, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 265
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-eqz v1, :cond_0

    .line 266
    monitor-enter v1

    .line 267
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0, v0, v1}, Lsun/nio/ch/SharedFileLockTable;->removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 260
    .end local v0    # "fk":Lsun/nio/ch/FileKey;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/nio/channels/FileLock;)V
    .locals 9
    .param p1, "fl"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 130
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 135
    .local v8, "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-nez v8, :cond_0

    .line 137
    new-instance v0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    sget-object v2, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {v0, p1, v2, v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v8    # "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_1
    monitor-exit v1

    .line 162
    invoke-direct {p0}, Lsun/nio/ch/SharedFileLockTable;->removeStaleEntries()V

    .line 124
    return-void

    .restart local v8    # "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_0
    monitor-exit v1

    .line 142
    move-object v1, v8

    .line 149
    .end local v8    # "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_1
    monitor-enter v1

    .line 150
    :try_start_1
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 151
    .local v6, "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-ne v1, v6, :cond_2

    .line 152
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/SharedFileLockTable;->checkList(Ljava/util/List;JJ)V

    .line 153
    new-instance v0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    sget-object v2, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {v0, p1, v2, v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 149
    .end local v6    # "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 133
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 156
    .restart local v6    # "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_2
    move-object v7, v6

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    monitor-exit v1

    move-object v1, v7

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    goto :goto_0
.end method

.method public remove(Ljava/nio/channels/FileLock;)V
    .locals 8
    .param p1, "fl"    # Ljava/nio/channels/FileLock;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 175
    sget-boolean v6, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    if-eqz p1, :cond_0

    move v6, v4

    :goto_0
    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move v6, v5

    goto :goto_0

    .line 178
    :cond_1
    sget-object v6, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 179
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-nez v1, :cond_2

    return-void

    .line 181
    :cond_2
    monitor-enter v1

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "index":I
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 185
    .local v3, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/FileLock;

    .line 186
    .local v2, "lock":Ljava/nio/channels/FileLock;
    if-ne v2, p1, :cond_6

    .line 187
    sget-boolean v6, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    if-nez v6, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v6

    iget-object v7, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    if-ne v6, v7, :cond_3

    :goto_2
    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4

    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_3
    move v4, v5

    .line 187
    goto :goto_2

    .line 188
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    .line 189
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_5
    monitor-exit v1

    .line 174
    return-void

    .line 192
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeAll()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    sget-object v5, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 201
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-eqz v1, :cond_2

    .line 202
    monitor-enter v1

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "index":I
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 206
    .local v3, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/FileLock;

    .line 209
    .local v2, "lock":Ljava/nio/channels/FileLock;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v5

    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    if-ne v5, v6, :cond_0

    .line 211
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    .line 212
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :catchall_0
    move-exception v5

    monitor-exit v1

    throw v5

    .line 217
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {p0, v5, v1}, Lsun/nio/ch/SharedFileLockTable;->removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 225
    .end local v0    # "index":I
    :cond_2
    return-object v4
.end method

.method public replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    .locals 7
    .param p1, "fromLock"    # Ljava/nio/channels/FileLock;
    .param p2, "toLock"    # Ljava/nio/channels/FileLock;

    .prologue
    .line 231
    sget-object v4, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 232
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    sget-boolean v4, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 234
    :cond_1
    monitor-enter v1

    .line 235
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 236
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 237
    .local v3, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/FileLock;

    .line 238
    .local v2, "lock":Ljava/nio/channels/FileLock;
    if-ne v2, p1, :cond_3

    .line 239
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    .line 240
    new-instance v4, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    sget-object v5, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {v4, p2, v5, v6}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    invoke-interface {v1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_2
    monitor-exit v1

    .line 229
    return-void

    .line 235
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4
.end method
