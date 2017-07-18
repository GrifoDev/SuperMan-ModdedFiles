.class public Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;
.super Ljava/lang/Object;
.source "FieldDictionary.java"

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
    .locals 19

    move-object/from16 v2, p1

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-class v17, Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v2, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v14, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v13, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v11, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v11, v13}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->reverseFieldDefinition()Z

    move-result v17

    if-eqz v17, :cond_1

    array-length v0, v6

    move/from16 v17, v0

    shr-int/lit8 v7, v17, 0x1

    move v8, v7

    :goto_2
    add-int/lit8 v7, v8, -0x1

    if-lez v8, :cond_1

    array-length v0, v6

    move/from16 v17, v0

    sub-int v17, v17, v7

    add-int/lit8 v9, v17, -0x1

    aget-object v4, v6, v7

    aget-object v17, v6, v9

    aput-object v17, v6, v7

    aput-object v4, v6, v9

    move v8, v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_3
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    aget-object v4, v6, v7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1, v7}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    and-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    and-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v11}, Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v12

    move-object v13, v15

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    goto/16 :goto_1

    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v17, v13

    :goto_4
    monitor-exit p0

    :goto_5
    return-object v17

    :cond_8
    move-object/from16 v17, v14

    goto :goto_4

    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    :goto_6
    check-cast v17, Ljava/util/Map;

    check-cast v17, Ljava/util/Map;

    goto :goto_5

    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

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
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 4

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->buildMap(Ljava/lang/Class;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz p3, :cond_0

    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    const/4 v3, -0x1

    invoke-direct {v2, p2, p3, v3}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    move-object p2, v2

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0

    :cond_1
    const/4 v2, 0x0

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
    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    instance-of v1, v1, Lcom/thoughtworks/xstream/core/Caching;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    check-cast v1, Lcom/thoughtworks/xstream/core/Caching;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/Caching;->flushCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
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
