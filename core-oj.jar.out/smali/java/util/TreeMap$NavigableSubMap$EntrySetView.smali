.class abstract Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySetView"
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
.field private transient size:I

.field private transient sizeModCount:I

.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;)V
    .locals 1

    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v4, v4, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_2
    return v3
.end method

.method public isEmpty()Z
    .locals 3

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v1}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    return v5

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v3, v2}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    const/4 v3, 0x1

    return v3

    :cond_2
    return v5
.end method

.method public size()I
    .locals 3

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-boolean v1, v1, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-boolean v1, v1, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    return v1

    :cond_0
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v2, v2, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    return v1
.end method
