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

    .prologue
    .line 61
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Ljava/io/ExpiringCache;-><init>(J)V

    .line 60
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "millisUntilExpiration"    # J

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x12c

    iput v0, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    .line 42
    const/16 v0, 0xc8

    iput v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    .line 65
    iput-wide p1, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    .line 66
    new-instance v0, Ljava/io/ExpiringCache$1;

    invoke-direct {v0, p0}, Ljava/io/ExpiringCache$1;-><init>(Ljava/io/ExpiringCache;)V

    iput-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    .line 64
    return-void
.end method

.method private cleanup()V
    .locals 8

    .prologue
    .line 114
    iget-object v7, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 116
    .local v5, "keySet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 117
    .local v6, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 118
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v4, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 122
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 123
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_1
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/ExpiringCache;->queryCount:I

    .line 113
    return-void
.end method

.method private entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ExpiringCache$Entry;

    .line 103
    .local v2, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v2, :cond_1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/ExpiringCache$Entry;->timestamp()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 105
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    iget-wide v4, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    .line 106
    :cond_0
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v2, 0x0

    .line 110
    .end local v0    # "delta":J
    .end local v2    # "entry":Ljava/io/ExpiringCache$Entry;
    :cond_1
    return-object v2
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 97
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 74
    :try_start_0
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v1, v2, :cond_0

    .line 75
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    .line 78
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/ExpiringCache$Entry;->val()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    .line 81
    return-object v3

    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 85
    :try_start_0
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v1, v2, :cond_0

    .line 86
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    .line 89
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/ExpiringCache$Entry;->setTimestamp(J)V

    .line 91
    invoke-virtual {v0, p2}, Ljava/io/ExpiringCache$Entry;->setVal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 84
    return-void

    .line 93
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

    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
