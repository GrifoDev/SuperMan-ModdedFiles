.class public Lsun/net/www/protocol/http/AuthCacheImpl;
.super Ljava/lang/Object;
.source "AuthCacheImpl.java"

# interfaces
.implements Lsun/net/www/protocol/http/AuthCache;


# instance fields
.field hashtable:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;
    .locals 6
    .param p1, "pkey"    # Ljava/lang/String;
    .param p2, "skey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, "result":Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 78
    .local v2, "list":Ljava/util/LinkedList;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    monitor-exit p0

    .line 79
    return-object v5

    .line 81
    :cond_1
    if-nez p2, :cond_2

    .line 83
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    .line 85
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 86
    .local v1, "iter":Ljava/util/ListIterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 88
    .local v0, "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    iget-object v4, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit p0

    .line 89
    return-object v0

    .end local v0    # "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_4
    monitor-exit p0

    .line 92
    return-object v5

    .end local v1    # "iter":Ljava/util/ListIterator;
    .end local v2    # "list":Ljava/util/LinkedList;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized put(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V
    .locals 5
    .param p1, "pkey"    # Ljava/lang/String;
    .param p2, "value"    # Lsun/net/www/protocol/http/AuthCacheValue;

    .prologue
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 56
    .local v2, "list":Ljava/util/LinkedList;
    invoke-virtual {p2}, Lsun/net/www/protocol/http/AuthCacheValue;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "skey":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "list":Ljava/util/LinkedList;
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .restart local v2    # "list":Ljava/util/LinkedList;
    iget-object v4, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 63
    .local v1, "iter":Ljava/util/ListIterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 65
    .local v0, "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    iget-object v4, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v1    # "iter":Ljava/util/ListIterator;
    .end local v2    # "list":Ljava/util/LinkedList;
    .end local v3    # "skey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 69
    .restart local v1    # "iter":Ljava/util/ListIterator;
    .restart local v2    # "list":Ljava/util/LinkedList;
    .restart local v3    # "skey":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 54
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V
    .locals 4
    .param p1, "pkey"    # Ljava/lang/String;
    .param p2, "entry"    # Lsun/net/www/protocol/http/AuthCacheValue;

    .prologue
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .local v2, "list":Ljava/util/LinkedList;
    if-nez v2, :cond_0

    monitor-exit p0

    .line 98
    return-void

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    :try_start_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 102
    return-void

    .line 104
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 105
    .local v1, "iter":Ljava/util/ListIterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 107
    .local v0, "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v1    # "iter":Ljava/util/ListIterator;
    .end local v2    # "list":Ljava/util/LinkedList;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "iter":Ljava/util/ListIterator;
    .restart local v2    # "list":Ljava/util/LinkedList;
    :cond_3
    monitor-exit p0

    .line 95
    return-void
.end method

.method public setMap(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    .line 48
    iput-object p1, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    .line 47
    return-void
.end method
