.class public Lcom/thoughtworks/xstream/mapper/AnnotationMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "AnnotationMapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;
    }
.end annotation


# instance fields
.field private final annotatedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private transient arguments:[Ljava/lang/Object;

.field private transient attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

.field private transient classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

.field private final converterCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/thoughtworks/xstream/converters/Converter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

.field private transient defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

.field private transient fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

.field private transient implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

.field private transient localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

.field private locked:Z


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterRegistry;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterCache:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->setupMappers()V

    iput-boolean v3, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    invoke-virtual {p4}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    aput-object p4, v1, v3

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/thoughtworks/xstream/core/JVM;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/JVM;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    :goto_0
    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/core/util/TypedNull;

    const-class v3, Ljava/lang/ClassLoader;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/core/util/TypedNull;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterRegistry;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/JVM;)V
    .locals 6

    new-instance v4, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v4, p4}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterRegistry;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    return-void
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    return-object v0
.end method

.method private addParametrizedTypes(Ljava/lang/reflect/Type;Ljava/util/Set;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1, v15}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;-><init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Ljava/util/Set;Ljava/util/Set;)V

    :goto_0
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/Class;

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v16

    move-object/from16 v4, v16

    array-length v12, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v17, v4, v9

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v12, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_4

    aget-object v10, v4, v9

    invoke-interface {v13, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v17, p1

    check-cast v17, Ljava/lang/reflect/TypeVariable;

    invoke-interface/range {v17 .. v17}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    move-object v4, v7

    array-length v12, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_4

    aget-object v6, v4, v9

    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v14, p1

    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v4, v3

    array-length v12, v4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v12, :cond_4

    aget-object v2, v4, v9

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v5, p1

    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v5}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    const/16 p1, 0x0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private cacheConverter(Lcom/thoughtworks/xstream/annotations/XStreamConverter;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 23

    const/16 v16, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->useImplicitType()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->booleans()[Z

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->bytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->chars()[C

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->doubles()[D

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->floats()[F

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->ints()[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->longs()[J

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->shorts()[S

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->strings()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->types()[Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_1

    invoke-static {v5, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->value()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterCache:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_4

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/thoughtworks/xstream/converters/Converter;

    :cond_4
    if-nez v16, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    :try_start_0
    const-class v19, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-class v19, Lcom/thoughtworks/xstream/converters/Converter;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_8

    invoke-static {v9, v4}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    new-instance v7, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v8, :cond_5

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterCache:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v8, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v7

    :cond_6
    return-object v16

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    goto :goto_1

    :cond_8
    :try_start_1
    invoke-static {v9, v4}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thoughtworks/xstream/converters/Converter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    new-instance v20, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot instantiate converter "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz p2, :cond_9

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " for type "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :cond_9
    const-string v19, ""

    goto :goto_3
.end method

.method private getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method private processAliasAnnotation(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAlias;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAlias;->impl()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAlias;->impl()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAlias;->impl()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private processAliasTypeAnnotation(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamAliasType;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAliasType;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAliasType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addTypeAlias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method private processAnnotations(Ljava/lang/Class;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;-><init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processTypes(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private processAsAttributeAnnotation(Ljava/lang/reflect/Field;)V
    .locals 4

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/reflect/Field;)V

    :cond_1
    return-void
.end method

.method private processConverterAnnotations(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v6, :cond_6

    const-class v6, Lcom/thoughtworks/xstream/annotations/XStreamConverters;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/thoughtworks/xstream/annotations/XStreamConverters;

    const-class v6, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    if-eqz v4, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/annotations/XStreamConverters;->value()[Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    if-eqz v3, :cond_4

    move-object v6, p1

    :goto_2
    invoke-direct {p0, v0, v6}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->cacheConverter(Lcom/thoughtworks/xstream/annotations/XStreamConverter;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    invoke-interface {v2, p1}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->priority()I

    move-result v7

    invoke-interface {v6, v2, v7}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    new-instance v6, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Converter "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot handle annotated class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    return-void
.end method

.method private processFieldAliasAnnotation(Ljava/lang/reflect/Field;)V
    .locals 5

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAlias;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->addFieldAlias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processImplicitAnnotation(Ljava/lang/reflect/Field;)V
    .locals 14

    const/4 v5, 0x0

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " available"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;->itemFieldName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;->keyFieldName()Ljava/lang/String;

    move-result-object v11

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    instance-of v0, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    if-eqz v9, :cond_4

    const/4 v0, 0x1

    :goto_0
    aget-object v12, v6, v0

    invoke-direct {p0, v12}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    :cond_1
    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v10, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v10

    :goto_1
    if-eqz v11, :cond_2

    const-string v13, ""

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object v5, v11

    :cond_2
    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move-object v3, v5

    goto :goto_1

    :cond_6
    if-eqz v10, :cond_7

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v10, v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_2
.end method

.method private processImplicitCollectionAnnotation(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const-class v8, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;

    if-eqz v4, :cond_2

    iget-object v8, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    if-nez v8, :cond_0

    new-instance v8, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " available"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-interface {v4}, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;->item()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v8, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v7, v8, v9

    invoke-direct {p0, v7}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    :cond_1
    if-nez v6, :cond_3

    iget-object v8, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    const-class v9, Ljava/lang/Object;

    invoke-virtual {v8, p1, v2, v10, v9}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v8, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not have a field named \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' as required by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v8, p1, v2, v10, v6}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v8, p1, v2, v5, v6}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private processLocalConverterAnnotation(Ljava/lang/reflect/Field;)V
    .locals 5

    const-class v2, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->cacheConverter(Lcom/thoughtworks/xstream/annotations/XStreamConverter;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    if-nez v2, :cond_0

    new-instance v2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    :cond_1
    return-void
.end method

.method private processOmitFieldAnnotation(Ljava/lang/reflect/Field;)V
    .locals 4

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamOmitField;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamOmitField;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processTypes(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    :try_start_2
    iget-object v5, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0, v4, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->addParametrizedTypes(Ljava/lang/reflect/Type;Ljava/util/Set;)V

    invoke-direct {p0, v4}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processConverterAnnotations(Ljava/lang/Class;)V

    invoke-direct {p0, v4, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAliasAnnotation(Ljava/lang/Class;Ljava/util/Set;)V

    invoke-direct {p0, v4}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAliasTypeAnnotation(Ljava/lang/Class;)V

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    :try_start_4
    iget-object v5, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-direct {p0, v4}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processImplicitCollectionAnnotation(Ljava/lang/Class;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_5

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit16 v5, v5, 0x88

    if-lez v5, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->addParametrizedTypes(Ljava/lang/reflect/Type;Ljava/util/Set;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processFieldAliasAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAsAttributeAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processImplicitAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processOmitFieldAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processLocalConverterAnnotation(Ljava/lang/reflect/Field;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_6
    iget-object v6, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    throw v5

    :cond_5
    iget-object v5, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->setupMappers()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    aput-object v2, v3, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    new-instance v3, Lcom/thoughtworks/xstream/core/JVM;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/JVM;-><init>()V

    aput-object v3, v2, v1

    return-void
.end method

.method private setupMappers()V
    .locals 1

    const-class v0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    const-class v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    const-class v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    const-class v0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    const-class v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    const-class v0, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x2

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public autodetectAnnotations(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAnnotations(Ljava/lang/Class;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAnnotations(Ljava/lang/Class;)V

    :cond_1
    return-object v0
.end method

.method public getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 1

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAnnotations(Ljava/lang/Class;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    return-object v0
.end method

.method public processAnnotations([Ljava/lang/Class;)V
    .locals 6

    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    new-instance v4, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;-><init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;)V

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v4}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processTypes(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAnnotations(Ljava/lang/Class;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAnnotations(Ljava/lang/Class;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
