.class Lsun/net/www/http/ClientVector;
.super Ljava/util/Stack;
.source "KeepAliveCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Stack",
        "<",
        "Lsun/net/www/http/KeepAliveEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x787771f5fd0f5e73L


# instance fields
.field nap:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    iput p1, p0, Lsun/net/www/http/ClientVector;->nap:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method


# virtual methods
.method declared-synchronized get()Lsun/net/www/http/HttpClient;
    .locals 8

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit p0

    return-object v5

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/www/http/KeepAliveEntry;

    iget-wide v4, v2, Lsun/net/www/http/KeepAliveEntry;->idleStartTime:J

    sub-long v4, v0, v4

    iget v6, p0, Lsun/net/www/http/ClientVector;->nap:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, v2, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;

    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->closeServer()V

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    monitor-exit p0

    return-object v3

    :cond_3
    :try_start_2
    iget-object v3, v2, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized put(Lsun/net/www/http/HttpClient;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {}, Lsun/net/www/http/KeepAliveCache;->getMaxConnections()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lsun/net/www/http/KeepAliveEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lsun/net/www/http/KeepAliveEntry;-><init>(Lsun/net/www/http/HttpClient;J)V

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
