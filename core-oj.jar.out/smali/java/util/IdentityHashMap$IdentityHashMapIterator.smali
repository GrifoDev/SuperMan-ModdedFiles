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

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v0

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iput-boolean v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    array-length v3, v2

    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    const/4 v3, 0x0

    return v3
.end method

.method protected nextIndex()I
    .locals 2

    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v0

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    return v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 15

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    iget v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    if-ne v10, v14, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    :cond_0
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v10

    iget v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-eq v10, v11, :cond_1

    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    :cond_1
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/util/IdentityHashMap;->-set0(Ljava/util/IdentityHashMap;I)I

    move-result v10

    iput v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    iput v14, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iput-boolean v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    iget-object v9, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    array-length v5, v9

    move v0, v1

    aget-object v4, v9, v1

    aput-object v12, v9, v1

    add-int/lit8 v10, v1, 0x1

    aput-object v12, v9, v10

    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_2

    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v10

    iput v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    return-void

    :cond_2
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/util/IdentityHashMap;->-set1(Ljava/util/IdentityHashMap;I)I

    invoke-static {v1, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    move-result v2

    :goto_0
    aget-object v3, v9, v2

    if-eqz v3, :cond_7

    invoke-static {v3, v5}, Ljava/util/IdentityHashMap;->-wrap2(Ljava/lang/Object;I)I

    move-result v7

    if-ge v2, v7, :cond_6

    if-le v7, v0, :cond_3

    if-gt v0, v2, :cond_6

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_4

    if-lt v0, v1, :cond_4

    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v11}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_4

    sub-int v8, v5, v1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v9, v1, v6, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    iput v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    :cond_4
    aput-object v3, v9, v0

    add-int/lit8 v10, v0, 0x1

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v9, v11

    aput-object v11, v9, v10

    aput-object v12, v9, v2

    add-int/lit8 v10, v2, 0x1

    aput-object v12, v9, v10

    move v0, v2

    :cond_5
    invoke-static {v2, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    move-result v2

    goto :goto_0

    :cond_6
    if-gt v7, v0, :cond_5

    if-gt v0, v2, :cond_5

    goto :goto_1

    :cond_7
    return-void
.end method
