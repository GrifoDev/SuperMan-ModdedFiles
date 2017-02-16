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

    .prologue
    .line 47
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Ljava/lang/String;Ljava/util/EventListener;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    .line 81
    :cond_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 82
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_2

    .line 83
    array-length v2, v0

    .line 86
    .local v2, "size":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    .line 87
    .local v1, "clone":[Ljava/util/EventListener;, "[TL;"
    aput-object p2, v1, v2

    .line 88
    if-eqz v0, :cond_1

    .line 89
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :cond_1
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 77
    return-void

    .line 84
    .end local v1    # "clone":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "size":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "size":I
    goto :goto_0

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "size":I
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
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v0, 0x0

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 135
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

    .prologue
    .line 229
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 231
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

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v8, 0x0

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v6, :cond_0

    .line 168
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6

    .line 170
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/EventListener;

    .line 173
    .local v4, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v4, :cond_1

    .line 174
    array-length v7, v4

    move v6, v8

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 175
    .local v3, "listener":Ljava/util/EventListener;, "TL;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "listener":Ljava/util/EventListener;, "TL;"
    :cond_1
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/EventListener;

    array-length v9, v6

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v3, v6, v7

    .line 182
    .restart local v3    # "listener":Ljava/util/EventListener;, "TL;"
    invoke-virtual {p0, v5, v3}, Ljava/beans/ChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    .end local v3    # "listener":Ljava/util/EventListener;, "TL;"
    .end local v5    # "name":Ljava/lang/String;
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

    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .end local v4    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public final getListeners(Ljava/lang/String;)[Ljava/util/EventListener;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Ljava/beans/ChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    .line 198
    .local v0, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/EventListener;

    return-object v1

    .line 202
    .end local v0    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    return-object v1
.end method

.method public final declared-synchronized hasListeners(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    .line 215
    return v2

    .line 217
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 218
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
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

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
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
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 105
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_0

    .line 106
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 107
    aget-object v4, v0, v2

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .line 109
    .local v3, "size":I
    if-lez v3, :cond_1

    .line 110
    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    .line 111
    .local v1, "clone":[Ljava/util/EventListener;, "[TL;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/lit8 v4, v2, 0x1

    sub-int v5, v3, v2

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v1    # "clone":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    :goto_1
    monitor-exit p0

    .line 102
    return-void

    .line 116
    .restart local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 106
    .restart local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final set(Ljava/lang/String;[Ljava/util/EventListener;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listeners":[Ljava/util/EventListener;, "[TL;"
    const/4 v1, 0x0

    .line 147
    if-eqz p2, :cond_2

    .line 148
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    .line 151
    :cond_0
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iput-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    goto :goto_0
.end method
