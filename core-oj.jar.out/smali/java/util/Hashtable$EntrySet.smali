.class Ljava/util/Hashtable$EntrySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
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
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 677
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Hashtable;

    .prologue
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 682
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Hashtable$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 732
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 731
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    const/4 v8, 0x0

    .line 687
    instance-of v6, p1, Ljava/util/Map$Entry;

    if-nez v6, :cond_0

    .line 688
    return v8

    :cond_0
    move-object v1, p1

    .line 689
    check-cast v1, Ljava/util/Map$Entry;

    .line 690
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 691
    .local v4, "key":Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v5

    .line 692
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v4}, Ljava/util/Hashtable;->-wrap0(Ljava/lang/Object;)I

    move-result v2

    .line 693
    .local v2, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v2

    array-length v7, v5

    rem-int v3, v6, v7

    .line 695
    .local v3, "index":I
    aget-object v0, v5, v3

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;
    :goto_0
    if-eqz v0, :cond_2

    .line 696
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 697
    const/4 v6, 0x1

    return v6

    .line 695
    :cond_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 698
    :cond_2
    return v8
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
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
    .line 679
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Hashtable;->-wrap1(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 702
    instance-of v7, p1, Ljava/util/Map$Entry;

    if-nez v7, :cond_0

    .line 703
    return v10

    :cond_0
    move-object v1, p1

    .line 704
    check-cast v1, Ljava/util/Map$Entry;

    .line 705
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 706
    .local v4, "key":Ljava/lang/Object;, "TK;"
    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    .line 707
    .local v6, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v4}, Ljava/util/Hashtable;->-wrap0(Ljava/lang/Object;)I

    move-result v2

    .line 708
    .local v2, "hash":I
    const v7, 0x7fffffff

    and-int/2addr v7, v2

    array-length v8, v6

    rem-int v3, v7, v8

    .line 710
    .local v3, "index":I
    aget-object v0, v6, v3

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v5, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 712
    iget v7, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v7, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 713
    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Ljava/util/Hashtable;->-set1(Ljava/util/Hashtable;I)I

    .line 714
    if-eqz v5, :cond_1

    .line 715
    iget-object v7, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v7, v5, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 719
    :goto_1
    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Hashtable;->-set0(Ljava/util/Hashtable;I)I

    .line 720
    iput-object v9, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 721
    const/4 v7, 0x1

    return v7

    .line 717
    :cond_1
    iget-object v7, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v7, v6, v3

    goto :goto_1

    .line 711
    :cond_2
    move-object v5, v0

    .local v5, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 724
    .end local v5    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    return v10
.end method

.method public size()I
    .locals 1

    .prologue
    .line 728
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method
