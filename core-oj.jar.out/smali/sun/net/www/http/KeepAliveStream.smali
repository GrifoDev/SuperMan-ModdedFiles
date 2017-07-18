.class public Lsun/net/www/http/KeepAliveStream;
.super Lsun/net/www/MeteredStream;
.source "KeepAliveStream.java"

# interfaces
.implements Lsun/net/www/http/Hurryable;


# static fields
.field private static cleanerThread:Ljava/lang/Thread;

.field private static final queue:Lsun/net/www/http/KeepAliveStreamCleaner;


# instance fields
.field hc:Lsun/net/www/http/HttpClient;

.field hurried:Z

.field protected queuedForCleanup:Z


# direct methods
.method static synthetic -get0()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get1()Lsun/net/www/http/KeepAliveStreamCleaner;
    .locals 1

    sget-object v0, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    sput-object p0, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/net/www/http/KeepAliveStreamCleaner;

    invoke-direct {v0}, Lsun/net/www/http/KeepAliveStreamCleaner;-><init>()V

    sput-object v0, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lsun/net/ProgressSource;JLsun/net/www/http/HttpClient;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    iput-object p5, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    return-void
.end method

.method private static queueForCleanup(Lsun/net/www/http/KeepAliveCleanerEntry;)V
    .locals 3

    sget-object v2, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCleanerEntry;->getQueuedForCleanup()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    invoke-virtual {v1, p0}, Lsun/net/www/http/KeepAliveStreamCleaner;->offer(Lsun/net/www/http/KeepAliveCleanerEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCleanerEntry;->getHttpClient()Lsun/net/www/http/HttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCleanerEntry;->setQueuedForCleanup()V

    sget-object v1, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    sget-object v1, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    sget-object v1, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lsun/net/www/http/KeepAliveStream$1;

    invoke-direct {v1}, Lsun/net/www/http/KeepAliveStream$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v4, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v6, p0, Lsun/net/www/MeteredStream;->count:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v6, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long v2, v4, v6

    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->available()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lsun/net/www/MeteredStream;->skip(J)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    sget v6, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_DATA_REMAINING:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->hurried:Z

    if-eqz v4, :cond_8

    :cond_3
    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->closeServer()V

    :cond_4
    :goto_1
    iget-boolean v4, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->hurried:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_b

    :cond_5
    :goto_2
    iget-object v4, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v4}, Lsun/net/ProgressSource;->finishTracking()V

    :cond_6
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    if-nez v4, :cond_7

    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    iput-boolean v9, p0, Lsun/net/www/MeteredStream;->closed:Z

    :cond_7
    return-void

    :cond_8
    :try_start_1
    new-instance v4, Lsun/net/www/http/KeepAliveCleanerEntry;

    iget-object v5, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    invoke-direct {v4, p0, v5}, Lsun/net/www/http/KeepAliveCleanerEntry;-><init>(Lsun/net/www/http/KeepAliveStream;Lsun/net/www/http/HttpClient;)V

    invoke-static {v4}, Lsun/net/www/http/KeepAliveStream;->queueForCleanup(Lsun/net/www/http/KeepAliveCleanerEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v5}, Lsun/net/ProgressSource;->finishTracking()V

    :cond_9
    iget-boolean v5, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    if-nez v5, :cond_a

    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    iput-boolean v9, p0, Lsun/net/www/MeteredStream;->closed:Z

    :cond_a
    throw v4

    :cond_b
    :try_start_2
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->finished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized hurry()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-nez v4, :cond_0

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v6, p0, Lsun/net/www/MeteredStream;->expected:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    monitor-exit p0

    return v10

    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v8, p0, Lsun/net/www/MeteredStream;->count:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    monitor-exit p0

    return v10

    :cond_2
    :try_start_2
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v6, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    new-array v0, v3, [B

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->hurried:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v11

    :catch_0
    move-exception v2

    monitor-exit p0

    return v10

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected remainingToRead()J
    .locals 4

    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setClosed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    return-void
.end method
