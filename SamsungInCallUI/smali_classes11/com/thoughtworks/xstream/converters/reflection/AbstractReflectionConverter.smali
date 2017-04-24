.class public abstract Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.super Ljava/lang/Object;
.source "AbstractReflectionConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$UnknownFieldException;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;
    }
.end annotation


# instance fields
.field protected final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private transient pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field protected final reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field protected transient serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    return-void
.end method

.method private handleUnknownField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v0, p4}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$UnknownFieldException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$UnknownFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private readDeclaringClass(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Class;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v4, "defined-in"

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v2

    :cond_0
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    return-object p0
.end method

.method private writeValueToImplicitCollection(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v5, p3, p4, v7}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;

    invoke-direct {v0, v4}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;-><init>(Ljava/lang/Class;)V

    :goto_0
    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is configured for an implicit Collection or Map, but field is of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    if-nez v5, :cond_3

    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;-><init>()V

    iput-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    :cond_3
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v5, v1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_4

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    :goto_1
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v5, p3, p4, v3, v7}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6, p4}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v2

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;

    move-object v5, v3

    check-cast v5, Ljava/util/Map;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getKeyFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v5, v6}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected canAccess(Ljava/lang/Class;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    const-string v1, "%"

    invoke-interface {v0, p1, v1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Ljava/util/Map;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/util/List;)V

    invoke-interface {v6, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Ljava/util/List;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/util/Map;)V

    return-void
.end method

.method public doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 34

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    new-instance v27, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$3;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;)V

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->attributeForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v7}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalField(Ljava/lang/reflect/Field;)Z

    move-result v31

    if-eqz v31, :cond_0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v9, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v9, v7, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v10

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v28

    if-eqz v10, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v10, v0}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->isPrimitive()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-static/range {v28 .. v28}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v28

    :cond_1
    if-eqz v30, :cond_2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v31

    if-nez v31, :cond_2

    new-instance v31, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cannot convert type "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " to type "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_2
    new-instance v31, Lcom/thoughtworks/xstream/core/util/FastField;

    move-object/from16 v0, v31

    invoke-direct {v0, v9, v7}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v7, v2, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_3
    const/16 v19, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v31

    if-eqz v31, :cond_1b

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->readDeclaringClass(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Class;

    move-result-object v13

    if-nez v13, :cond_6

    move-object/from16 v16, v26

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v18

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v28, 0x0

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    :cond_4
    :goto_3
    if-nez v28, :cond_a

    const/16 v30, 0x0

    :cond_5
    :goto_4
    if-eqz v30, :cond_15

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v31

    if-nez v31, :cond_15

    new-instance v31, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cannot convert type "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " to type "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_6
    move-object/from16 v16, v13

    goto/16 :goto_2

    :cond_7
    move-object/from16 v28, v22

    goto :goto_3

    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    invoke-interface/range {p3 .. p3}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/thoughtworks/xstream/mapper/CannotResolveClassException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    :goto_5
    if-eqz v28, :cond_9

    if-eqz v28, :cond_4

    if-nez v20, :cond_4

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->handleUnknownField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_3

    :cond_a
    const-class v31, Ljava/util/Map$Entry;

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v29

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v30

    goto/16 :goto_4

    :cond_c
    const/4 v15, 0x0

    if-nez v13, :cond_e

    :goto_6
    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalField(Ljava/lang/reflect/Field;)Z

    move-result v31

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    const/4 v15, 0x1

    :goto_7
    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    goto :goto_6

    :cond_d
    const/4 v15, 0x0

    goto :goto_7

    :cond_e
    if-eqz v14, :cond_11

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalField(Ljava/lang/reflect/Field;)Z

    move-result v31

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->unmarshallField(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v31

    if-nez v31, :cond_5

    move-object/from16 v28, v11

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v28

    goto :goto_8

    :cond_11
    const/16 v30, 0x0

    goto/16 :goto_4

    :cond_12
    invoke-interface/range {v18 .. v18}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getFieldName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v18}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemType()Ljava/lang/Class;

    move-result-object v28

    if-nez v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v31, v0

    if-eqz v8, :cond_14

    :goto_9
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    :cond_13
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v30

    goto/16 :goto_4

    :cond_14
    move-object/from16 v8, v25

    goto :goto_9

    :cond_15
    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v30

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v31, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_a
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto/16 :goto_1

    :cond_17
    if-eqz v28, :cond_16

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v32, v0

    invoke-interface/range {p3 .. p3}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v33

    if-eqz v30, :cond_1a

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    :goto_b
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :cond_18
    if-nez v19, :cond_19

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->writeValueToImplicitCollection(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    const-class v31, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    goto :goto_b

    :cond_1b
    if-eqz v19, :cond_1d

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1c
    :goto_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;

    move/from16 v31, v0

    if-eqz v31, :cond_1c

    check-cast v30, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;

    invoke-virtual/range {v30 .. v30}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;->toPhysicalArray()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v32, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v5, v3}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_c

    :cond_1d
    return-object p1

    :catch_0
    move-exception v31

    goto/16 :goto_5
.end method

.method public flushCache()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->flushCache()V

    return-void
.end method

.method protected instantiateNewInstance(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 5

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v4, "resolves-to"

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->currentObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_1
    return-object v1

    :cond_0
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 4

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-virtual {v2, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    instance-of v2, p3, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    invoke-interface {v2, p1, v1}, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;->replace(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v3, "resolves-to"

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p3, v1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    goto :goto_0
.end method

.method protected marshallField(Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method protected shouldUnmarshalField(Ljava/lang/reflect/Field;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalTransientFields()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldUnmarshalTransientFields()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->instantiateNewInstance(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->callReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected unmarshallField(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
