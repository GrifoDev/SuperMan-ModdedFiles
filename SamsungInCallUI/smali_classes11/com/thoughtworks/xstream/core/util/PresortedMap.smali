.class public Lcom/thoughtworks/xstream/core/util/PresortedMap;
.super Ljava/lang/Object;
.source "PresortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;,
        Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private final set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/PresortedMap$1;)V

    invoke-direct {p0, v1, v0}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .param p1, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 33
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/PresortedMap$1;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;)V
    .locals 0
    .param p1, "comparator"    # Ljava/util/Comparator;
    .param p2, "set"    # Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .end local p1    # "comparator":Ljava/util/Comparator;
    :goto_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->comparator:Ljava/util/Comparator;

    .line 38
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    .line 39
    return-void

    .line 37
    .restart local p1    # "comparator":Ljava/util/Comparator;
    :cond_0
    new-instance p1, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;

    .end local p1    # "comparator":Ljava/util/Comparator;
    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;-><init>(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4

    .prologue
    .line 58
    new-instance v2, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/PresortedMap$1;)V

    .line 59
    .local v2, "keySet":Ljava/util/Set;
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    invoke-virtual {v3}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-object v2
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/PresortedMap$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/thoughtworks/xstream/core/util/PresortedMap$1;-><init>(Lcom/thoughtworks/xstream/core/util/PresortedMap;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    .line 125
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4

    .prologue
    .line 79
    new-instance v2, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/PresortedMap$1;)V

    .line 80
    .local v2, "values":Ljava/util/Set;
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap;->set:Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;

    invoke-virtual {v3}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-object v2
.end method
