.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private mode:I

.field private final path:Ljava/lang/String;

.field private rw:Z

.field private final scratch:[B

.field private syncMetadata:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    .line 69
    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/io/RandomAccessFile;->scratch:[B

    .line 70
    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    .line 74
    iput-object v4, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 80
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->closed:Z

    .line 210
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 211
    :goto_0
    iput v5, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 212
    const-string/jumbo v2, "r"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 230
    :cond_0
    :goto_1
    iget v2, p0, Ljava/io/RandomAccessFile;->mode:I

    if-gez v2, :cond_5

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal mode \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    const-string/jumbo v4, "\" must be one of "

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 233
    const-string/jumbo v4, "\"r\", \"rw\", \"rws\","

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    const-string/jumbo v4, " or \"rwd\""

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_1
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    .line 214
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "rw"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 217
    iput-boolean v6, p0, Ljava/io/RandomAccessFile;->rw:Z

    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 219
    const-string/jumbo v2, "rws"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    iput-boolean v6, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    goto :goto_1

    .line 221
    :cond_3
    const-string/jumbo v2, "rwd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    iget v2, p0, Ljava/io/RandomAccessFile;->mode:I

    sget v3, Landroid/system/OsConstants;->O_SYNC:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    goto :goto_1

    .line 225
    :cond_4
    iput v5, p0, Ljava/io/RandomAccessFile;->mode:I

    goto :goto_1

    .line 237
    :cond_5
    if-nez v1, :cond_6

    .line 238
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "file == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 242
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_7
    iput-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Ljava/io/RandomAccessFile;->mode:I

    invoke-static {v2, v3}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 248
    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v2, :cond_8

    .line 250
    :try_start_0
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_8
    :goto_2
    iget-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 208
    return-void

    .line 251
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private readBytes([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method private writeBytes([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 480
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 477
    :cond_0
    return-void
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
    .line 620
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 621
    iget-object v1, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 623
    return-void

    .line 625
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljava/io/RandomAccessFile;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 628
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 631
    :cond_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 619
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1157
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1160
    :cond_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1155
    return-void

    .line 1161
    :catchall_0
    move-exception v0

    .line 1162
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1161
    throw v0
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .locals 4

    .prologue
    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->rw:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 294
    :cond_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 290
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
    .line 267
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public getFilePointer()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public length()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 314
    iget-object v1, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    :cond_0
    return v0
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
    .line 377
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 652
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 653
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 654
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 655
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 678
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 679
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 680
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 781
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 782
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 783
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 784
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 392
    return-void
.end method

.method public final readFully([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "n":I
    :cond_0
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 414
    .local v0, "count":I
    if-gez v0, :cond_1

    .line 415
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 416
    :cond_1
    add-int/2addr v1, v0

    .line 417
    if-lt v1, p3, :cond_0

    .line 410
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 809
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 810
    .local v1, "ch2":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 811
    .local v2, "ch3":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 812
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 813
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 814
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public final readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 921
    .local v4, "input":Ljava/lang/StringBuffer;
    const/4 v0, -0x1

    .line 922
    .local v0, "c":I
    const/4 v1, 0x0

    .line 924
    .local v1, "eol":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 925
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 938
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 928
    :sswitch_0
    const/4 v1, 0x1

    .line 929
    goto :goto_0

    .line 931
    :sswitch_1
    const/4 v1, 0x1

    .line 932
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 933
    .local v2, "cur":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 934
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 943
    .end local v2    # "cur":J
    :cond_1
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 944
    const/4 v5, 0x0

    return-object v5

    .line 946
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 925
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 725
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 726
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 727
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 728
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 698
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 699
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 700
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 753
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 754
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 755
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 756
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public seek(J)V
    .locals 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 542
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public setLength(J)V
    .locals 7
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    .line 586
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newLength < 0"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v4, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 595
    .local v2, "filePointer":J
    cmp-long v1, v2, p1

    if-lez v1, :cond_1

    .line 596
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 599
    :cond_1
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 584
    :cond_2
    return-void

    .line 590
    .end local v2    # "filePointer":J
    :catch_0
    move-exception v0

    .line 591
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public skipBytes(I)I
    .locals 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 441
    if-gtz p1, :cond_0

    .line 442
    return v6

    .line 444
    :cond_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 445
    .local v4, "pos":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 446
    .local v0, "len":J
    int-to-long v6, p1

    add-long v2, v4, v6

    .line 447
    .local v2, "newpos":J
    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    .line 448
    move-wide v2, v0

    .line 450
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 453
    sub-long v6, v2, v4

    long-to-int v6, v6

    return v6
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 467
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 465
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
    .line 493
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 492
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 505
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 989
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 988
    return-void

    .line 989
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 0
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1000
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1107
    .local v1, "len":I
    new-array v0, v1, [B

    .line 1108
    .local v0, "b":[B
    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 1109
    invoke-direct {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 1105
    return-void
.end method

.method public final writeChar(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1027
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1028
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1026
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1124
    .local v3, "clen":I
    mul-int/lit8 v1, v3, 0x2

    .line 1125
    .local v1, "blen":I
    new-array v0, v1, [B

    .line 1126
    .local v0, "b":[B
    new-array v2, v3, [C

    .line 1127
    .local v2, "c":[C
    invoke-virtual {p1, v8, v3, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1128
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1129
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-char v7, v2, v4

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 1130
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget-char v7, v2, v4

    ushr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 1128
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1132
    :cond_0
    invoke-direct {p0, v0, v8, v1}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 1122
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1092
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1077
    return-void
.end method

.method public final writeInt(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1040
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1041
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1042
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1043
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1039
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1056
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1057
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1058
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1059
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1060
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1061
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1062
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1054
    return-void
.end method

.method public final writeShort(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1014
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1012
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    .line 1151
    return-void
.end method
