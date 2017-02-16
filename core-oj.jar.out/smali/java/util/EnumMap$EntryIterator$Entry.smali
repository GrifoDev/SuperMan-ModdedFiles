.class Ljava/util/EnumMap$EntryIterator$Entry;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap$EntryIterator;
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

.field final synthetic this$1:Ljava/util/EnumMap$EntryIterator;


# direct methods
.method static synthetic -get0(Ljava/util/EnumMap$EntryIterator$Entry;)I
    .locals 1

    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return v0
.end method

.method static synthetic -set0(Ljava/util/EnumMap$EntryIterator$Entry;I)I
    .locals 0

    iput p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return p1
.end method

.method private constructor <init>(Ljava/util/EnumMap$EntryIterator;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 585
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "this$1":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput p2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap$EntryIterator$Entry;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/EnumMap$EntryIterator;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;I)V

    return-void
.end method

.method private checkIndexForEntryUse()V
    .locals 2

    .prologue
    .line 637
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 607
    iget v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v5, :cond_1

    .line 608
    if-ne p1, p0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 610
    :cond_1
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-nez v5, :cond_2

    .line 611
    return v4

    :cond_2
    move-object v0, p1

    .line 613
    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v5, v5, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v6

    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 615
    .local v2, "ourValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 616
    .local v1, "hisValue":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v6

    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_3

    .line 617
    if-eq v2, v1, :cond_4

    .line 618
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 616
    :cond_3
    :goto_1
    return v4

    :cond_4
    move v4, v3

    .line 617
    goto :goto_1
.end method

.method public getKey()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 591
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 589
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->getKey()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 596
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 622
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_0

    .line 623
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 625
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap2(Ljava/util/EnumMap;I)I

    move-result v0

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
    .line 600
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 601
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    iget-object v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v3, v3, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v3, p1}, Ljava/util/EnumMap;->-wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 603
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 629
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_0

    .line 630
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 633
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
