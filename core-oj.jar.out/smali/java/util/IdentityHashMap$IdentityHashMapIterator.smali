.class abstract Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IdentityHashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field index:I

.field indexValid:Z

.field lastReturnedIndex:I

.field final synthetic this$0:Ljava/util/IdentityHashMap;

.field traversalTable:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 718
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 720
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v0

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 721
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 723
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 718
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    const/4 v4, 0x1

    .line 726
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 727
    .local v2, "tab":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 728
    aget-object v1, v2, v0

    .line 729
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 730
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 731
    iput-boolean v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    return v4

    .line 727
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 734
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    array-length v3, v2

    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 735
    const/4 v3, 0x0

    return v3
.end method

.method protected nextIndex()I
    .locals 2

    .prologue
    .line 739
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v0

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 740
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 741
    :cond_0
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    .line 745
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 746
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 747
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    return v0

    .line 742
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 15

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 751
    iget v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    if-ne v10, v14, :cond_0

    .line 752
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    .line 753
    :cond_0
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v10

    iget v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-eq v10, v11, :cond_1

    .line 754
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 756
    :cond_1
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/util/IdentityHashMap;->-set0(Ljava/util/IdentityHashMap;I)I

    move-result v10

    iput v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 757
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 758
    .local v1, "deletedSlot":I
    iput v14, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 760
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 761
    iput-boolean v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    .line 775
    iget-object v9, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 776
    .local v9, "tab":[Ljava/lang/Object;
    array-length v5, v9

    .line 778
    .local v5, "len":I
    move v0, v1

    .line 779
    .local v0, "d":I
    aget-object v4, v9, v1

    .line 780
    .local v4, "key":Ljava/lang/Object;
    aput-object v12, v9, v1

    .line 781
    add-int/lit8 v10, v1, 0x1

    aput-object v12, v9, v10

    .line 785
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_2

    .line 786
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v10

    iput v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 788
    return-void

    .line 791
    :cond_2
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/util/IdentityHashMap;->-set1(Ljava/util/IdentityHashMap;I)I

    .line 794
    invoke-static {v1, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    move-result v2

    .local v2, "i":I
    :goto_0
    aget-object v3, v9, v2

    .local v3, "item":Ljava/lang/Object;
    if-eqz v3, :cond_7

    .line 796
    invoke-static {v3, v5}, Ljava/util/IdentityHashMap;->-wrap2(Ljava/lang/Object;I)I

    move-result v7

    .line 798
    .local v7, "r":I
    if-ge v2, v7, :cond_6

    if-le v7, v0, :cond_3

    if-gt v0, v2, :cond_6

    .line 808
    :cond_3
    :goto_1
    if-ge v2, v1, :cond_4

    if-lt v0, v1, :cond_4

    .line 809
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v11}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_4

    .line 810
    sub-int v8, v5, v1

    .line 811
    .local v8, "remaining":I
    new-array v6, v8, [Ljava/lang/Object;

    .line 812
    .local v6, "newTable":[Ljava/lang/Object;
    invoke-static {v9, v1, v6, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iput-object v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 815
    iput v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 818
    .end local v6    # "newTable":[Ljava/lang/Object;
    .end local v8    # "remaining":I
    :cond_4
    aput-object v3, v9, v0

    .line 819
    add-int/lit8 v10, v0, 0x1

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v9, v11

    aput-object v11, v9, v10

    .line 820
    aput-object v12, v9, v2

    .line 821
    add-int/lit8 v10, v2, 0x1

    aput-object v12, v9, v10

    .line 822
    move v0, v2

    .line 795
    :cond_5
    invoke-static {v2, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    move-result v2

    goto :goto_0

    .line 799
    :cond_6
    if-gt v7, v0, :cond_5

    if-gt v0, v2, :cond_5

    goto :goto_1

    .line 750
    .end local v7    # "r":I
    :cond_7
    return-void
.end method
