.class Ljava/util/IdentityHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntrySet;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-wrap0(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$EntryIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntryIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/IdentityHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->size()I

    move-result v3

    array-length v7, p1

    if-ge v7, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_3

    aget-object v1, v4, v2

    if-eqz v1, :cond_2

    if-lt v5, v3, :cond_1

    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_1
    add-int/lit8 v6, v5, 0x1

    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v4, v9

    invoke-direct {v7, v8, v9}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v5

    move v5, v6

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    if-lt v5, v3, :cond_4

    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v7

    if-eq v0, v7, :cond_5

    :cond_4
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_5
    array-length v7, p1

    if-ge v5, v7, :cond_6

    aput-object v10, p1, v5

    :cond_6
    return-object p1
.end method
