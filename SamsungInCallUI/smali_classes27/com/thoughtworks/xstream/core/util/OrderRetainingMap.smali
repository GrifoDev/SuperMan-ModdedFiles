.class public Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;
.super Ljava/util/HashMap;
.source "OrderRetainingMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;,
        Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;
    }
.end annotation


# instance fields
.field private keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

.field private valueOrder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    .line 36
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->putAll(Ljava/util/Map;)V

    .line 37
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->clear()V

    .line 68
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 70
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->size()I

    move-result v4

    new-array v0, v4, [Ljava/util/Map$Entry;

    .line 82
    .local v0, "entries":[Ljava/util/Map$Entry;
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "entry":Ljava/util/Map$Entry;
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v4

    aput-object v1, v0, v4

    goto :goto_0

    .line 86
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    new-instance v3, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;)V

    .line 87
    .local v3, "set":Ljava/util/Set;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 48
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    .line 40
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 42
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "idx":I
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->remove(I)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
