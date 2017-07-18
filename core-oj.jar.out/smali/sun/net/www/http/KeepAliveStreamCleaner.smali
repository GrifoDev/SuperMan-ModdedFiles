.class Lsun/net/www/http/KeepAliveStreamCleaner;
.super Ljava/util/LinkedList;
.source "KeepAliveStreamCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/http/KeepAliveStreamCleaner$1;,
        Lsun/net/www/http/KeepAliveStreamCleaner$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lsun/net/www/http/KeepAliveCleanerEntry;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field protected static MAX_CAPACITY:I = 0x0

.field protected static MAX_DATA_REMAINING:I = 0x0

.field private static final MAX_RETRIES:I = 0x5

.field protected static final TIMEOUT:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x200

    sput v4, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_DATA_REMAINING:I

    const/16 v4, 0xa

    sput v4, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_CAPACITY:I

    const-string/jumbo v3, "http.KeepAlive.remainingData"

    new-instance v4, Lsun/net/www/http/KeepAliveStreamCleaner$1;

    invoke-direct {v4}, Lsun/net/www/http/KeepAliveStreamCleaner$1;-><init>()V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v2, v4, 0x400

    sput v2, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_DATA_REMAINING:I

    const-string/jumbo v1, "http.KeepAlive.queuedConnections"

    new-instance v4, Lsun/net/www/http/KeepAliveStreamCleaner$2;

    invoke-direct {v4}, Lsun/net/www/http/KeepAliveStreamCleaner$2;-><init>()V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_CAPACITY:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lsun/net/www/http/KeepAliveCleanerEntry;

    invoke-virtual {p0, p1}, Lsun/net/www/http/KeepAliveStreamCleaner;->offer(Lsun/net/www/http/KeepAliveCleanerEntry;)Z

    move-result v0

    return v0
.end method

.method public offer(Lsun/net/www/http/KeepAliveCleanerEntry;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_CAPACITY:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 26

    const/4 v13, 0x0

    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v22, 0x1388

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lsun/net/www/http/KeepAliveCleanerEntry;

    move-object v13, v0

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v6

    cmp-long v21, v8, v22

    if-lez v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lsun/net/www/http/KeepAliveCleanerEntry;

    move-object v13, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    if-nez v13, :cond_4

    :cond_1
    return-void

    :cond_2
    move-wide v6, v4

    sub-long v22, v22, v8

    goto :goto_1

    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    :catch_0
    move-exception v11

    :cond_3
    :goto_2
    if-eqz v13, :cond_1

    goto :goto_0

    :cond_4
    invoke-virtual {v13}, Lsun/net/www/http/KeepAliveCleanerEntry;->getKeepAliveStream()Lsun/net/www/http/KeepAliveStream;

    move-result-object v14

    if-eqz v14, :cond_3

    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v13}, Lsun/net/www/http/KeepAliveCleanerEntry;->getHttpClient()Lsun/net/www/http/HttpClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    if-eqz v10, :cond_5

    :try_start_4
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->isInKeepAliveCache()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v21

    if-eqz v21, :cond_6

    :cond_5
    :goto_3
    :try_start_5
    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->setClosed()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_6
    :try_start_7
    invoke-virtual {v10}, Lsun/net/NetworkClient;->getReadTimeout()I

    move-result v15

    const/16 v21, 0x1388

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->remainingToRead()J

    move-result-wide v18

    const-wide/16 v24, 0x0

    cmp-long v21, v18, v24

    if-lez v21, :cond_9

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    :cond_7
    :goto_5
    cmp-long v21, v16, v18

    if-gez v21, :cond_8

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lsun/net/www/MeteredStream;->skip(J)J

    move-result-wide v16

    const-wide/16 v24, 0x0

    cmp-long v21, v16, v24

    if-nez v21, :cond_7

    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_8
    sub-long v18, v18, v16

    :cond_9
    const-wide/16 v24, 0x0

    cmp-long v21, v18, v24

    if-nez v21, :cond_a

    invoke-virtual {v10, v15}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->finished()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v12

    :try_start_8
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->setClosed()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v21

    :try_start_a
    monitor-exit v14

    throw v21
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    :cond_a
    :try_start_b
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v21

    :try_start_c
    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->setClosed()V

    throw v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method
