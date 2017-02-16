.class public Lcom/thoughtworks/xstream/core/util/WeakCache;
.super Ljava/util/AbstractMap;
.source "WeakCache.java"


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

    .prologue
    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache;-><init>(Ljava/util/Map;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    .line 56
    return-void
.end method

.method private iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;
    .locals 6
    .param p1, "visitor"    # Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;
    .param p2, "type"    # I

    .prologue
    .line 151
    const/4 v4, 0x0

    .line 152
    .local v4, "result":Ljava/lang/Object;
    iget-object v5, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "result":Ljava/lang/Object;
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 155
    .local v3, "reference":Ljava/lang/ref/Reference;
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, "element":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 160
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 163
    .restart local v4    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 165
    .end local v4    # "result":Ljava/lang/Object;
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 166
    .restart local v4    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 168
    .end local v4    # "result":Ljava/lang/Object;
    :pswitch_2
    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 173
    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "reference":Ljava/lang/ref/Reference;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1
    return-object v4

    .line 160
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

    .prologue
    .line 185
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 186
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v2, Lcom/thoughtworks/xstream/core/util/WeakCache$1;

    invoke-direct {v2, p0, p1}, Lcom/thoughtworks/xstream/core/util/WeakCache$1;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 85
    .local v0, "result":Ljava/lang/Boolean;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/thoughtworks/xstream/core/util/WeakCache$4;

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$4;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Set;)V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    .line 147
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 60
    .local v0, "reference":Ljava/lang/ref/Reference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 65
    .local v0, "ref":Ljava/lang/ref/Reference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 70
    .local v0, "ref":Ljava/lang/ref/Reference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :goto_0
    return v1

    .line 92
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 93
    .local v0, "i":[I
    aput v1, v0, v1

    .line 94
    new-instance v2, Lcom/thoughtworks/xstream/core/util/WeakCache$2;

    invoke-direct {v2, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$2;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;[I)V

    invoke-direct {p0, v2, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    .line 102
    aget v1, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "collection":Ljava/util/Collection;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lcom/thoughtworks/xstream/core/util/WeakCache$3;

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$3;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    .line 117
    :cond_0
    return-object v0
.end method
