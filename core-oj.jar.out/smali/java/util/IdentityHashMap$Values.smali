.class Ljava/util/IdentityHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$Values;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$ValueIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$ValueIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

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
            "<TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/IdentityHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$ValueSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$Values;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v6}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->size()I

    move-result v2

    array-length v6, p1

    if-ge v6, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v6}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_3

    aget-object v6, v3, v1

    if-eqz v6, :cond_2

    if-lt v4, v2, :cond_1

    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_1
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v3, v6

    aput-object v6, p1, v4

    move v4, v5

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    if-lt v4, v2, :cond_4

    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v6}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v6

    if-eq v0, v6, :cond_5

    :cond_4
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_5
    array-length v6, p1

    if-ge v4, v6, :cond_6

    aput-object v7, p1, v4

    :cond_6
    return-object p1
.end method
