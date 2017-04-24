.class Lcom/google/common/collect/Collections2$PermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermutationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final c:[I

.field j:I

.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final o:[I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    return-void
.end method


# virtual methods
.method calculateNextPermutation()V
    .locals 6

    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v3, v3, v4

    add-int v0, v2, v3

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_3

    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    iget-object v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v5, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aput v0, v2, v3

    goto :goto_0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->computeNext()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->calculateNextPermutation()V

    move-object v1, v0

    goto :goto_0
.end method

.method switchDirection()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v2, v3

    neg-int v2, v2

    aput v2, v0, v1

    iget v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    return-void
.end method
