.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 62
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    .line 68
    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    iget-object v3, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    iget-object v4, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public forceClose()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 80
    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 81
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 78
    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    .line 95
    const/16 v5, 0x2000

    new-array v4, v5, [B

    .line 97
    .local v4, "temp":[B
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 98
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 99
    .local v0, "cmd":I
    if-ne v0, v9, :cond_2

    .line 101
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    .line 102
    .local v2, "len":I
    :goto_1
    if-lez v2, :cond_0

    .line 103
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    array-length v6, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v4, v7, v6}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 104
    .local v3, "n":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 105
    new-instance v5, Ljava/io/IOException;

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected EOF; still expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v0    # "cmd":I
    .end local v2    # "len":I
    .end local v3    # "n":I
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "FileBridge"

    const-string/jumbo v6, "Failed during bridge"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 108
    .restart local v0    # "cmd":I
    .restart local v2    # "len":I
    .restart local v3    # "n":I
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 109
    sub-int/2addr v2, v3

    goto :goto_1

    .line 112
    .end local v2    # "len":I
    .end local v3    # "n":I
    :cond_2
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 114
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 115
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 129
    .end local v0    # "cmd":I
    :catchall_0
    move-exception v5

    .line 130
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 129
    throw v5

    .line 117
    .restart local v0    # "cmd":I
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 119
    :try_start_3
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 120
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 121
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 122
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .end local v0    # "cmd":I
    :cond_4
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_2
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "target"    # Ljava/io/FileDescriptor;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 85
    return-void
.end method
