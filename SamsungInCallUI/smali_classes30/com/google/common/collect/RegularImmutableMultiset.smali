.class Lcom/google/common/collect/RegularImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMultiset$1;,
        Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;,
        Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/RegularImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMultiset",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient elementSet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private final transient hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMultiset;->EMPTY:Lcom/google/common/collect/RegularImmutableMultiset;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/common/collect/Multiset$Entry",
            "<+TE;>;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v9, v6, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v20

    add-int/lit8 v16, v20, -0x1

    move/from16 v0, v20

    new-array v12, v0, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    const/4 v14, 0x0

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v8}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v21

    and-int v2, v21, v16

    aget-object v3, v12, v2

    if-nez v3, :cond_3

    instance-of v0, v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    instance-of v0, v8, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    move/from16 v21, v0

    if-nez v21, :cond_1

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    check-cast v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-object/from16 v17, v8

    :goto_3
    xor-int v21, v10, v5

    add-int v11, v11, v21

    add-int/lit8 v15, v14, 0x1

    aput-object v17, v9, v14

    aput-object v17, v12, v2

    int-to-long v0, v5

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    move v14, v15

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    new-instance v17, Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v5}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_3
    new-instance v17, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v5, v3}, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/Multisets$ImmutableEntry;)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-static/range {v18 .. v19}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMultiset;)[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    return-object v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    array-length v5, v2

    add-int/lit8 v3, v5, -0x1

    and-int v5, v1, v3

    aget-object v0, v2, v5

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getCount()I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-result-object v0

    goto :goto_1
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;-><init>(Lcom/google/common/collect/RegularImmutableMultiset;Lcom/google/common/collect/RegularImmutableMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method
