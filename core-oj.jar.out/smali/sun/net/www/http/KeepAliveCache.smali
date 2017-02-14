.class public Lsun/net/www/http/KeepAliveCache;
.super Ljava/util/HashMap;
.source "KeepAliveCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lsun/net/www/http/KeepAliveKey;",
        "Lsun/net/www/http/ClientVector;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final LIFETIME:I = 0x1388

.field static final MAX_CONNECTIONS:I = 0x5

.field static result:I = 0x0

.field private static final serialVersionUID:J = -0x28c2ef2efb6a2b7dL


# instance fields
.field private keepAliveTimer:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -set0(Lsun/net/www/http/KeepAliveCache;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lsun/net/www/http/KeepAliveCache;->result:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    return-void
.end method

.method static getMaxConnections()I
    .locals 3

    const/4 v2, 0x5

    sget v0, Lsun/net/www/http/KeepAliveCache;->result:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v1, "http.maxConnections"

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/net/www/http/KeepAliveCache;->result:I

    sget v0, Lsun/net/www/http/KeepAliveCache;->result:I

    if-gtz v0, :cond_0

    sput v2, Lsun/net/www/http/KeepAliveCache;->result:I

    :cond_0
    sget v0, Lsun/net/www/http/KeepAliveCache;->result:I

    return v0
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
.method public declared-synchronized get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/net/www/http/KeepAliveKey;

    invoke-direct {v0, p1, p2}, Lsun/net/www/http/KeepAliveKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/http/ClientVector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lsun/net/www/http/ClientVector;->get()Lsun/net/www/http/HttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    iget-object v5, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    move-object v0, p0

    new-instance v5, Lsun/net/www/http/KeepAliveCache$1;

    invoke-direct {v5, p0, p0}, Lsun/net/www/http/KeepAliveCache$1;-><init>(Lsun/net/www/http/KeepAliveCache;Lsun/net/www/http/KeepAliveCache;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Lsun/net/www/http/KeepAliveKey;

    invoke-direct {v2, p1, p2}, Lsun/net/www/http/KeepAliveKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    invoke-super {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/net/www/http/ClientVector;

    if-nez v4, :cond_4

    invoke-virtual {p3}, Lsun/net/www/http/HttpClient;->getKeepAliveTimeout()I

    move-result v1

    new-instance v4, Lsun/net/www/http/ClientVector;

    if-lez v1, :cond_3

    mul-int/lit16 v5, v1, 0x3e8

    :goto_1
    invoke-direct {v4, v5}, Lsun/net/www/http/ClientVector;-><init>(I)V

    invoke-virtual {v4, p3}, Lsun/net/www/http/ClientVector;->put(Lsun/net/www/http/HttpClient;)V

    invoke-super {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v5, 0x1388

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v4, p3}, Lsun/net/www/http/ClientVector;->put(Lsun/net/www/http/HttpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized remove(Lsun/net/www/http/HttpClient;Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/net/www/http/KeepAliveKey;

    iget-object v2, p1, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-direct {v0, v2, p2}, Lsun/net/www/http/KeepAliveKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/http/ClientVector;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lsun/net/www/http/KeepAliveCache;->removeVector(Lsun/net/www/http/KeepAliveKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized removeVector(Lsun/net/www/http/KeepAliveKey;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    :cond_0
    const-wide/16 v10, 0x1388

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/net/www/http/KeepAliveKey;

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/net/www/http/ClientVector;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/www/http/KeepAliveEntry;

    iget-wide v10, v3, Lsun/net/www/http/KeepAliveEntry;->idleStartTime:J

    sub-long v10, v0, v10

    iget v12, v9, Lsun/net/www/http/ClientVector;->nap:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    iget-object v4, v3, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;

    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->closeServer()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v9

    throw v10

    :cond_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/net/www/http/KeepAliveKey;

    invoke-virtual {p0, v6}, Lsun/net/www/http/KeepAliveCache;->removeVector(Lsun/net/www/http/KeepAliveKey;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_4
    monitor-exit p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v10

    if-gtz v10, :cond_0

    return-void
.end method
