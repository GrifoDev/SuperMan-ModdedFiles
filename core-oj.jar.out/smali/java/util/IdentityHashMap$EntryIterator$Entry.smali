.class Ljava/util/IdentityHashMap$EntryIterator$Entry;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap$EntryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Ljava/util/IdentityHashMap$EntryIterator;


# direct methods
.method static synthetic -get0(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return v0
.end method

.method static synthetic -set0(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)I
    .locals 0

    iput p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return p1
.end method

.method private constructor <init>(Ljava/util/IdentityHashMap$EntryIterator;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 863
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "this$1":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    iput p2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    .line 863
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap$EntryIterator$Entry;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/IdentityHashMap$EntryIterator;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;I)V

    return-void
.end method

.method private checkIndexForEntryUse()V
    .locals 2

    .prologue
    .line 918
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_0

    .line 919
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    const/4 v1, 0x0

    .line 891
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v2, :cond_0

    .line 892
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 894
    :cond_0
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 895
    return v1

    :cond_1
    move-object v0, p1

    .line 896
    check-cast v0, Ljava/util/Map$Entry;

    .line 897
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 898
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 897
    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 869
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 870
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 876
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 902
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    if-gez v0, :cond_0

    .line 903
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 905
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 906
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 905
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 882
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    .line 883
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aput-object p1, v1, v2

    .line 885
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v2}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 886
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 910
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_0

    .line 911
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 914
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
