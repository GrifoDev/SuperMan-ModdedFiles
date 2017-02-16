.class Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.super Ljava/util/Collections$UnmodifiableSet;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$-java_util_function_Consumer_entryConsumer_java_util_function_Consumer_action_LambdaImpl0;,
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;,
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6d0066a59f08eab5L


# direct methods
.method static synthetic -java_util_Collections$UnmodifiableMap$UnmodifiableEntrySet_lambda$1(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .locals 1
    .param p0, "action"    # Ljava/util/function/Consumer;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .prologue
    .line 1559
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v0, p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 0
    return-void
.end method

.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1555
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    .line 1553
    return-void
.end method

.method static entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1559
    .local p0, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$-java_util_function_Consumer_entryConsumer_java_util_function_Consumer_action_LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$-java_util_function_Consumer_entryConsumer_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1690
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 1691
    const/4 v0, 0x0

    return v0

    .line 1692
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    .line 1693
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 1692
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1702
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1703
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1704
    const/4 v2, 0x0

    return v2

    .line 1706
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    const/4 v3, 0x0

    .line 1709
    if-ne p1, p0, :cond_0

    .line 1710
    const/4 v1, 0x1

    return v1

    .line 1712
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 1713
    return v3

    :cond_1
    move-object v0, p1

    .line 1714
    check-cast v0, Ljava/util/Set;

    .line 1715
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1716
    return v3

    .line 1717
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1564
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1563
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1639
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;-><init>(Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;)V

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1635
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1624
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;

    .line 1625
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    .line 1624
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1630
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1658
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    iget-object v2, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1659
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1660
    new-instance v3, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v3, v2}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    .line 1659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1661
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 1669
    iget-object v3, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    array-length v2, p1

    if-nez v2, :cond_0

    move-object v2, p1

    :goto_0
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1671
    .local v0, "arr":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1672
    new-instance v3, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v3, v2}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    .line 1671
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1669
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1674
    .restart local v0    # "arr":[Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_1
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 1675
    return-object v0

    .line 1677
    :cond_2
    array-length v2, v0

    invoke-static {v0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1678
    array-length v2, p1

    array-length v3, v0

    if-le v2, v3, :cond_3

    .line 1679
    array-length v2, v0

    const/4 v3, 0x0

    aput-object v3, p1, v2

    .line 1680
    :cond_3
    return-object p1
.end method
