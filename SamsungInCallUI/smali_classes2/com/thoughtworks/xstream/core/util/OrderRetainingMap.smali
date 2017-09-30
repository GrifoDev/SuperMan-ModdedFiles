.class public Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;
.super Ljava/util/HashMap;


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

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->clear()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/util/Map$Entry;

    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    aput-object v0, v1, v3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;-><init>(Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->keyOrder:Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;->valueOrder:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
