.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/FileInputStream$UseManualSkipException;
    }
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isFdOwner:Z

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    iput-object v2, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 65
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 66
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/FileInputStream;->closed:Z

    .line 69
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 130
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 132
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 135
    :cond_0
    if-nez v0, :cond_2

    .line 136
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 130
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_3
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 143
    iput-object v0, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 145
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 146
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;->open(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .locals 2
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    iput-object v1, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    .line 69
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 180
    iput-boolean p2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 181
    iput-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    return-void
.end method

.method private native available0()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native open(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private native skip0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileInputStream$UseManualSkipException;
        }
    .end annotation
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-direct {p0}, Ljava/io/FileInputStream;->available0()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 343
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 348
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 350
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 359
    :cond_1
    iget-boolean v0, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 340
    :cond_2
    return-void

    .line 341
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
    .line 413
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 417
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_1

    .line 418
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 412
    :cond_1
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 4

    .prologue
    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 401
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 396
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
    .line 375
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 376
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 199
    iget-object v4, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, "traceContext":Ljava/lang/Object;
    new-array v0, v5, [B

    .line 204
    .local v0, "b":[B
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 206
    .local v1, "res":I
    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 208
    if-eq v1, v3, :cond_0

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    :cond_0
    return v3

    .line 205
    .end local v1    # "res":I
    :catchall_0
    move-exception v3

    .line 206
    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 205
    throw v3
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
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
    const/4 v2, 0x0

    .line 245
    iget-boolean v3, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v3, :cond_0

    if-lez p3, :cond_0

    .line 246
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Stream Closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_0
    iget-object v3, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 252
    .local v1, "traceContext":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 254
    .local v0, "bytesRead":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_0
    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 256
    return v0

    :cond_1
    move v2, v0

    .line 254
    goto :goto_0

    .line 253
    .end local v0    # "bytesRead":I
    :catchall_0
    move-exception v3

    .line 254
    int-to-long v4, v2

    invoke-static {v1, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    .line 253
    throw v3
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/io/FileInputStream;->skip0(J)J
    :try_end_0
    .catch Ljava/io/FileInputStream$UseManualSkipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/FileInputStream$UseManualSkipException;
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    return-wide v2
.end method
