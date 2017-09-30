.class public Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public registerFieldOrder(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;

    invoke-direct {v1, p0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;[Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    check-cast v0, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    aget-object v4, v0, v1

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v2

    :cond_1
    return-object p2
.end method
