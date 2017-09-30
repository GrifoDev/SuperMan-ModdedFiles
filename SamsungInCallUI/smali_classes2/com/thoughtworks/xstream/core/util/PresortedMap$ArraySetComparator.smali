.class Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/PresortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArraySetComparator"
.end annotation


# instance fields
.field private array:[Ljava/util/Map$Entry;

.field private final list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v1, 0x0

    const v3, 0x7fffffff

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v2, v2

    if-eq v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v2, v2

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v0, v0

    goto :goto_0

    :cond_3
    iput-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    :cond_4
    move v0, v3

    move v2, v3

    :goto_2
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v4, v4

    if-ge v1, v4, :cond_8

    if-ge v2, v3, :cond_5

    if-lt v0, v3, :cond_8

    :cond_5
    if-ne v2, v3, :cond_6

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_6

    move v2, v1

    :cond_6
    if-ne v0, v3, :cond_7

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_7

    move v0, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    sub-int v0, v2, v0

    return v0
.end method
