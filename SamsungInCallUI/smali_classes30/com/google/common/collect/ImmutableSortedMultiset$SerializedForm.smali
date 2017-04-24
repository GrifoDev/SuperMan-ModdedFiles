.class final Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field counts:[I

.field elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedMultiset;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 5

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v2, v3

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v3}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    aget v4, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v3

    return-object v3
.end method
