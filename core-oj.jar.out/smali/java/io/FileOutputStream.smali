.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"


# instance fields
.field private final append:Z

.field private channel:Ljava/nio/channels/FileChannel;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isFdOwner:Z

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 80
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 204
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 206
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 209
    :cond_0
    if-nez v0, :cond_2

    .line 210
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 204
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_3
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v2, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 216
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->append:Z

    .line 217
    iput-object v0, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 220
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 221
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;->open(Ljava/lang/String;Z)V

    .line 222
    iget-object v2, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .locals 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 264
    iput-object v2, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 265
    iput-boolean v1, p0, Ljava/io/FileOutputStream;->append:Z

    .line 266
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 140
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 138
    return-void
.end method

.method private native open(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 339
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 344
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 346
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 356
    :cond_1
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 336
    :cond_2
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 415
    :cond_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    if-ne v0, v1, :cond_3

    .line 417
    :cond_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 410
    :cond_2
    :goto_0
    return-void

    .line 419
    :cond_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 6

    .prologue
    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    iget-boolean v4, p0, Ljava/io/FileOutputStream;->append:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 398
    :cond_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 373
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 284
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 295
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-boolean v2, p0, Ljava/io/FileOutputStream;->closed:Z

    if-eqz v2, :cond_0

    if-lez p3, :cond_0

    .line 310
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Stream Closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_0
    iget-object v2, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    invoke-static {v2}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 316
    .local v1, "traceContext":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    move v0, p3

    .line 319
    .local v0, "bytesWritten":I
    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 308
    return-void

    .line 318
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v2

    .line 319
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    .line 318
    throw v2
.end method
