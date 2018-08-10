.class public abstract Landroid/net/util/BlockingSocketReader;
.super Ljava/lang/Object;
.source "BlockingSocketReader.java"


# static fields
.field public static final DEFAULT_RECV_BUF_SIZE:I = 0x800


# instance fields
.field private final mPacket:[B

.field private volatile mPacketsReceived:J

.field private volatile mRunning:Z

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/net/util/BlockingSocketReader;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    const/16 p1, 0x800

    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/util/-$Lambda$uJqW9o1MiZ5yyXhSTG2zE-YhRn0;

    invoke-direct {v1, p0}, Landroid/net/util/-$Lambda$uJqW9o1MiZ5yyXhSTG2zE-YhRn0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/util/BlockingSocketReader;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public static final closeSocket(Ljava/io/FileDescriptor;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final mainLoop()V
    .locals 8

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    iget-object v5, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    iget-object v6, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Socket closed, exiting"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->stop()V

    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->onExit()V

    return-void

    :cond_2
    :try_start_1
    iget-wide v4, p0, Landroid/net/util/BlockingSocketReader;->mPacketsReceived:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/net/util/BlockingSocketReader;->mPacketsReceived:J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v4, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    invoke-virtual {p0, v4, v0}, Landroid/net/util/BlockingSocketReader;->handlePacket([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "Unexpected exception: "

    invoke-virtual {p0, v4, v2}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "read error: "

    invoke-virtual {p0, v4, v3}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v1

    iget v4, v1, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EINTR:I

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "read error: "

    invoke-virtual {p0, v4, v1}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract createSocket()Ljava/io/FileDescriptor;
.end method

.method protected handlePacket([BI)V
    .locals 0

    return-void
.end method

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/util/BlockingSocketReader;->mRunning:Z

    return v0
.end method

.method synthetic lambda$-android_net_util_BlockingSocketReader_2194()V
    .locals 0

    invoke-direct {p0}, Landroid/net/util/BlockingSocketReader;->mainLoop()V

    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final numPacketsReceived()J
    .locals 2

    iget-wide v0, p0, Landroid/net/util/BlockingSocketReader;->mPacketsReceived:J

    return-wide v0
.end method

.method protected onExit()V
    .locals 0

    return-void
.end method

.method public final start()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->createSocket()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to create socket: "

    invoke-virtual {p0, v1, v0}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2

    :cond_1
    iput-boolean v3, p0, Landroid/net/util/BlockingSocketReader;->mRunning:Z

    iget-object v1, p0, Landroid/net/util/BlockingSocketReader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v3
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/util/BlockingSocketReader;->mRunning:Z

    iget-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/util/BlockingSocketReader;->closeSocket(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    return-void
.end method
