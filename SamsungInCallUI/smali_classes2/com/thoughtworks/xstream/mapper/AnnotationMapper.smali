.class public Lcom/thoughtworks/xstream/mapper/AnnotationMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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
    .locals 8
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

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;

    invoke-direct {v4, p0, p2, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;-><init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Ljava/util/Set;Ljava/util/Set;)V

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v5, v2

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_4

    aget-object v6, v2, v0

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v5, v2

    move v0, v1

    :goto_3
    if-ge v0, v5, :cond_4

    aget-object v6, v2, v0

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v5, v2

    move v0, v1

    :goto_4
    if-ge v0, v5, :cond_4

    aget-object v6, v2, v0

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private cacheConverter(Lcom/thoughtworks/xstream/annotations/XStreamConverter;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->useImplicitType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->booleans()[Z

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->bytes()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->chars()[C

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->doubles()[D

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->floats()[F

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->ints()[I

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->longs()[J

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->shorts()[S

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->strings()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->types()[Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_1

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->value()Ljava/lang/Class;

    move-result-object v4

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/Converter;

    :cond_4
    if-nez v1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v1, v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    array-length v7, v7

    invoke-static {v6, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    :try_start_0
    const-class v2, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-class v2, Lcom/thoughtworks/xstream/converters/Converter;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v4, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    new-instance v2, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_2
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterCache:Ljava/util/Map;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v1

    :cond_7
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    goto :goto_1

    :cond_8
    :try_start_1
    invoke-static {v4, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/Converter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate converter "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " for type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    const-string v0, ""

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

    check-cast p1, Ljava/lang/Class;

    move-object v0, p1

    goto :goto_0
.end method

.method private processAliasAnnotation(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 3
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

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

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

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private processAliasTypeAnnotation(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamAliasType;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAliasType;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAliasType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addTypeAlias(Ljava/lang/String;Ljava/lang/Class;)V

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
    .locals 3

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/reflect/Field;)V

    :cond_1
    return-void
.end method

.method private processConverterAnnotations(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v0, :cond_6

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamConverters;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamConverters;

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamConverters;->value()[Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    if-eqz v1, :cond_4

    move-object v2, p1

    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->cacheConverter(Lcom/thoughtworks/xstream/annotations/XStreamConverter;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    invoke-interface {v2, p1}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->priority()I

    move-result v0

    invoke-interface {v4, v2, v0}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cannot handle annotated class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void
.end method

.method private processFieldAliasAnnotation(Ljava/lang/reflect/Field;)V
    .locals 4

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    if-nez v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamAlias;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->addFieldAlias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processImplicitAnnotation(Ljava/lang/reflect/Field;)V
    .locals 8

    const/4 v6, 0x0

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    if-nez v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;->itemFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamImplicit;->keyFieldName()Ljava/lang/String;

    move-result-object v5

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_7

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    aget-object v0, v4, v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    :goto_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v3, :cond_3

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    if-eqz v5, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v6

    goto :goto_2

    :cond_4
    move-object v5, v6

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_4

    :cond_7
    move-object v4, v6

    goto :goto_1
.end method

.method private processImplicitCollectionAnnotation(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    if-nez v2, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;->item()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not have a field named \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as required by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/annotations/XStreamImplicitCollection;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v3, p1, v2, v1, v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private processLocalConverterAnnotation(Ljava/lang/reflect/Field;)V
    .locals 4

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->cacheConverter(Lcom/thoughtworks/xstream/annotations/XStreamConverter;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    if-nez v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    :cond_1
    return-void
.end method

.method private processOmitFieldAnnotation(Ljava/lang/reflect/Field;)V
    .locals 3

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamOmitField;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamOmitField;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processTypes(Ljava/util/Set;)V
    .locals 5
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

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->addParametrizedTypes(Ljava/lang/reflect/Type;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processConverterAnnotations(Ljava/lang/Class;)V

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAliasAnnotation(Ljava/lang/Class;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAliasTypeAnnotation(Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    :try_start_4
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processImplicitCollectionAnnotation(Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit16 v4, v4, 0x88

    if-lez v4, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->addParametrizedTypes(Ljava/lang/reflect/Type;Ljava/util/Set;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processFieldAliasAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processAsAttributeAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processImplicitAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processOmitFieldAnnotation(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processLocalConverterAnnotation(Ljava/lang/reflect/Field;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    throw v1

    :cond_5
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->annotatedTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->setupMappers()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    aput-object v0, v3, v4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    new-instance v1, Lcom/thoughtworks/xstream/core/JVM;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/JVM;-><init>()V

    aput-object v1, v0, v2

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

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->arguments:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x2

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

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    if-nez v0, :cond_0

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
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->locked:Z

    new-instance v1, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;-><init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->processTypes(Ljava/util/Set;)V

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
