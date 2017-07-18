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

    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap$EntryIterator$Entry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;I)V

    return-void
.end method

.method private checkIndexForEntryUse()V
    .locals 2

    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v2, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

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

    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

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

    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    if-gez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

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

    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aput-object p1, v1, v2

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v2}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

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

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
