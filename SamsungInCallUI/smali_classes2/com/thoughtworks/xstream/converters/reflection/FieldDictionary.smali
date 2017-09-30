.class public Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field private transient keyedByFieldKeyCache:Ljava/util/Map;

.field private transient keyedByFieldNameCache:Ljava/util/Map;

.field private final sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ImmutableFieldKeySorter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/ImmutableFieldKeySorter;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->init()V

    return-void
.end method

.method private buildMap(Ljava/lang/Class;Z)Ljava/util/Map;
    .locals 11

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v6, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v6, v1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->reverseFieldDefinition()Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v7

    shr-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    array-length v1, v7

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v8, v7, v2

    aget-object v9, v7, v1

    aput-object v9, v7, v2

    aput-object v8, v7, v1

    move v1, v2

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_3
    array-length v1, v7

    if-ge v2, v1, :cond_5

    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    new-instance v9, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v1, v10, v2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_3

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    invoke-interface {v1, v0, v6}, Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    if-eqz p2, :cond_8

    move-object v0, v1

    :goto_4
    monitor-exit p0

    :goto_5
    return-object v0

    :cond_8
    move-object v0, v2

    goto :goto_4

    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    check-cast v0, Ljava/util/Map;

    check-cast v0, Ljava/util/Map;

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method private init()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->buildMap(Ljava/lang/Class;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    const/4 v2, -0x1

    invoke-direct {v0, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    move-object p2, v0

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->buildMap(Ljava/lang/Class;Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flushCache()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    instance-of v0, v0, Lcom/thoughtworks/xstream/core/Caching;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    check-cast v0, Lcom/thoughtworks/xstream/core/Caching;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/Caching;->flushCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->init()V

    return-object p0
.end method

.method public serializableFieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
