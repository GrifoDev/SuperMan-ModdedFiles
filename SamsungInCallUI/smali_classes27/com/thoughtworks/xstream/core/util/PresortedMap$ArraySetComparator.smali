.class Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;
.super Ljava/lang/Object;
.source "PresortedMap.java"

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
    .locals 7

    const/4 v1, 0x0

    const v6, 0x7fffffff

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v5, v5

    if-eq v4, v5, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v5, v5

    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-nez v4, :cond_2

    :goto_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v1, v4

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    :cond_4
    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v4, v4

    if-ge v1, v4, :cond_8

    if-ge v2, v6, :cond_5

    if-lt v3, v6, :cond_8

    :cond_5
    if-ne v2, v6, :cond_6

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_6

    move v2, v1

    :cond_6
    if-ne v3, v6, :cond_7

    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_7

    move v3, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    sub-int v4, v2, v3

    return v4
.end method
