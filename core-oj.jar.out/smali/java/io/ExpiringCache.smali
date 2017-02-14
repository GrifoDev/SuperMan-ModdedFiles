.class Ljava/io/ExpiringCache;
.super Ljava/lang/Object;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ExpiringCache$Entry;
    }
.end annotation


# instance fields
.field private MAX_ENTRIES:I

.field private map:Ljava/util/Map;

.field private millisUntilExpiration:J

.field private queryCount:I

.field private queryOverflow:I


# direct methods
.method static synthetic -get0(Ljava/io/ExpiringCache;)I
    .locals 1

    iget v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    return v0
.end method

.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Ljava/io/ExpiringCache;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    const/16 v0, 0xc8

    iput v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    iput-wide p1, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    new-instance v0, Ljava/io/ExpiringCache$1;

    invoke-direct {v0, p0}, Ljava/io/ExpiringCache$1;-><init>(Ljava/io/ExpiringCache;)V

    iput-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    return-void
.end method

.method private cleanup()V
    .locals 8

    iget-object v7, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v4, v6, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_1

    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/ExpiringCache;->queryCount:I

    return-void
.end method

.method private entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;
    .locals 8

    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ExpiringCache$Entry;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/ExpiringCache$Entry;->timestamp()J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    iget-wide v4, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    :cond_0
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ExpiringCache$Entry;->val()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/ExpiringCache$Entry;->setTimestamp(J)V

    invoke-virtual {v0, p2}, Ljava/io/ExpiringCache$Entry;->setVal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    new-instance v2, Ljava/io/ExpiringCache$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, p2}, Ljava/io/ExpiringCache$Entry;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
