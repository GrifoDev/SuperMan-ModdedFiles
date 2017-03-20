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

    .prologue
    .line 43
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ImmutableFieldKeySorter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/ImmutableFieldKeySorter;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;)V
    .locals 0
    .param p1, "sorter"    # Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    .line 48
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->init()V

    .line 49
    return-void
.end method

.method private buildMap(Ljava/lang/Class;Z)Ljava/util/Map;
    .locals 19
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "tupleKeyed"    # Z

    .prologue
    .line 121
    move-object/from16 v2, p1

    .line 122
    .local v2, "cls":Ljava/lang/Class;
    monitor-enter p0

    .line 123
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 124
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v16, "superClasses":Ljava/util/List;
    :goto_0
    const-class v17, Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v2, :cond_0

    .line 126
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 127
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 129
    :cond_0
    sget-object v14, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 130
    .local v14, "lastKeyedByFieldName":Ljava/util/Map;
    sget-object v13, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 131
    .local v13, "lastKeyedByFieldKey":Ljava/util/Map;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 132
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 134
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 135
    .local v12, "keyedByFieldName":Ljava/util/Map;
    new-instance v11, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v11, v13}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>(Ljava/util/Map;)V

    .line 136
    .local v11, "keyedByFieldKey":Ljava/util/Map;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 137
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->reverseFieldDefinition()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 138
    array-length v0, v6

    move/from16 v17, v0

    shr-int/lit8 v7, v17, 0x1

    .local v7, "i":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_2
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    if-lez v8, :cond_1

    .line 139
    array-length v0, v6

    move/from16 v17, v0

    sub-int v17, v17, v7

    add-int/lit8 v9, v17, -0x1

    .line 140
    .local v9, "idx":I
    aget-object v4, v6, v7

    .line 141
    .local v4, "field":Ljava/lang/reflect/Field;
    aget-object v17, v6, v9

    aput-object v17, v6, v7

    .line 142
    aput-object v4, v6, v9

    move v8, v7

    .line 143
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    .line 145
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "i":I
    .end local v9    # "idx":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 146
    aget-object v4, v6, v7

    .line 147
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v17

    if-nez v17, :cond_2

    .line 148
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    :cond_2
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1, v7}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 152
    .local v5, "fieldKey":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 153
    .local v3, "existent":Ljava/lang/reflect/Field;
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

    .line 158
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_4
    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 162
    .end local v3    # "existent":Ljava/lang/reflect/Field;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldKey":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v11}, Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    .line 163
    .local v15, "sortedFieldKeys":Ljava/util/Map;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object v14, v12

    .line 166
    move-object v13, v15

    .line 167
    goto/16 :goto_1

    .line 168
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "i":I
    .end local v11    # "keyedByFieldKey":Ljava/util/Map;
    .end local v12    # "keyedByFieldName":Ljava/util/Map;
    .end local v15    # "sortedFieldKeys":Ljava/util/Map;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "lastKeyedByFieldName":Ljava/util/Map;
    check-cast v14, Ljava/util/Map;

    .line 169
    .restart local v14    # "lastKeyedByFieldName":Ljava/util/Map;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lastKeyedByFieldKey":Ljava/util/Map;
    check-cast v13, Ljava/util/Map;

    .restart local v13    # "lastKeyedByFieldKey":Ljava/util/Map;
    goto/16 :goto_1

    .line 172
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v17, v13

    :goto_4
    monitor-exit p0

    .line 175
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v13    # "lastKeyedByFieldKey":Ljava/util/Map;
    .end local v14    # "lastKeyedByFieldName":Ljava/util/Map;
    .end local v16    # "superClasses":Ljava/util/List;
    :goto_5
    return-object v17

    .restart local v10    # "iter":Ljava/util/Iterator;
    .restart local v13    # "lastKeyedByFieldKey":Ljava/util/Map;
    .restart local v14    # "lastKeyedByFieldName":Ljava/util/Map;
    .restart local v16    # "superClasses":Ljava/util/List;
    :cond_8
    move-object/from16 v17, v14

    .line 172
    goto :goto_4

    .line 174
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v13    # "lastKeyedByFieldKey":Ljava/util/Map;
    .end local v14    # "lastKeyedByFieldName":Ljava/util/Map;
    .end local v16    # "superClasses":Ljava/util/List;
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
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

    .line 174
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 175
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

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 93
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    return-object v0
.end method

.method public fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .prologue
    .line 113
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->buildMap(Ljava/lang/Class;Z)Ljava/util/Map;

    move-result-object v1

    .line 114
    .local v1, "fields":Ljava/util/Map;
    if-eqz p3, :cond_0

    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    const/4 v3, -0x1

    invoke-direct {v2, p2, p3, v3}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    move-object p2, v2

    .end local p2    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 117
    .local v0, "field":Ljava/lang/reflect/Field;
    return-object v0

    .line 113
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fields":Ljava/util/Map;
    .restart local p2    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public fieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 76
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

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 182
    .local v0, "objectTypeSet":Ljava/util/Set;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldNameCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->keyedByFieldKeyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    instance-of v1, v1, Lcom/thoughtworks/xstream/core/Caching;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    check-cast v1, Lcom/thoughtworks/xstream/core/Caching;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/Caching;->flushCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "objectTypeSet":Ljava/util/Set;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->init()V

    .line 191
    return-object p0
.end method

.method public serializableFieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
