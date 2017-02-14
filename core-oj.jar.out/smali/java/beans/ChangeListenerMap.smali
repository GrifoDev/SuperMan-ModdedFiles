.class abstract Ljava/beans/ChangeListenerMap;
.super Ljava/lang/Object;
.source "ChangeListenerMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Ljava/util/EventListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Ljava/lang/String;Ljava/util/EventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    :cond_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    if-eqz v0, :cond_2

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    aput-object p2, v1, v2

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public abstract extract(Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public final declared-synchronized get(Ljava/lang/String;)[Ljava/util/EventListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized getListeners()[Ljava/util/EventListener;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[T",
            "L;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/EventListener;

    if-eqz v4, :cond_1

    array-length v7, v4

    move v6, v8

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/EventListener;

    array-length v9, v6

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v3, v6, v7

    invoke-virtual {p0, v5, v3}, Ljava/beans/ChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/EventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public final getListeners(Ljava/lang/String;)[Ljava/util/EventListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/beans/ChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/EventListener;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    return-object v1
.end method

.method public final declared-synchronized hasListeners(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract newArray(I)[Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[T",
            "L;"
        }
    .end annotation
.end method

.method protected abstract newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public final declared-synchronized remove(Ljava/lang/String;Ljava/util/EventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    if-lez v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v3, v2

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final set(Ljava/lang/String;[Ljava/util/EventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    goto :goto_0
.end method
