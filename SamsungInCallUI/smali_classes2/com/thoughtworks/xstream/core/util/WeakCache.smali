.class public Lcom/thoughtworks/xstream/core/util/WeakCache;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    return-void
.end method

.method private iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    if-nez v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    move-object v0, v2

    :goto_1
    move-object v2, v0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/thoughtworks/xstream/core/util/WeakCache$1;

    invoke-direct {v0, p0, p1}, Lcom/thoughtworks/xstream/core/util/WeakCache$1;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/core/util/WeakCache$4;

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$4;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Set;)V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    new-instance v2, Lcom/thoughtworks/xstream/core/util/WeakCache$2;

    invoke-direct {v2, p0, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache$2;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;[I)V

    invoke-direct {p0, v2, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    aget v0, v1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/core/util/WeakCache$3;

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$3;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
