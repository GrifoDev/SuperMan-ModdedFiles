.class public Lcom/thoughtworks/xstream/XStream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/XStream$InitializationException;
    }
.end annotation


# static fields
.field private static final ANNOTATION_MAPPER_TYPE:Ljava/lang/String; = "com.thoughtworks.xstream.mapper.AnnotationMapper"

.field public static final ID_REFERENCES:I = 0x3ea

.field private static final IGNORE_ALL:Ljava/util/regex/Pattern;

.field public static final NO_REFERENCES:I = 0x3e9

.field public static final PRIORITY_LOW:I = -0xa

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_VERY_HIGH:I = 0x2710

.field public static final PRIORITY_VERY_LOW:I = -0x14

.field public static final SINGLE_NODE_XPATH_ABSOLUTE_REFERENCES:I = 0x3ee

.field public static final SINGLE_NODE_XPATH_RELATIVE_REFERENCES:I = 0x3ed

.field public static final XPATH_ABSOLUTE_REFERENCES:I = 0x3ec

.field public static final XPATH_RELATIVE_REFERENCES:I = 0x3eb


# instance fields
.field private annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

.field private attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

.field private attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

.field private classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

.field private classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

.field private converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

.field private defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

.field private fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

.field private hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

.field private immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

.field private implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

.field private localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

.field private packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

.field private reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field private securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

.field private systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->IGNORE_ALL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {p0, v1, v0, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 6

    new-instance v5, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->newReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    iput-object p3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    iput-object p5, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iput-object p6, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/XStream;->buildMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/XStream;->setupMappers()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupSecurity()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupAliases()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupDefaultImplementations()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupConverters()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupImmutableTypes()V

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMode(I)V

    return-void
.end method

.method private constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V
    .locals 7

    new-instance v5, Lcom/thoughtworks/xstream/XStream$1;

    invoke-direct {v5, p5}, Lcom/thoughtworks/xstream/XStream$1;-><init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    new-instance v6, Lcom/thoughtworks/xstream/XStream$2;

    invoke-direct {v6, p5}, Lcom/thoughtworks/xstream/XStream$2;-><init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 6

    new-instance v3, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v3, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v5, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V
    .locals 7

    new-instance v3, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v3, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;-><init>()V

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 2

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {p0, v1, v0, p1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method private addImmutableTypeDynamically(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private buildMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/thoughtworks/xstream/mapper/DefaultMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->useXStream11XmlFriendlyMapper()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    :goto_0
    new-instance v1, Lcom/thoughtworks/xstream/mapper/DynamicProxyMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/DynamicProxyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v1, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v1, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v1, Lcom/thoughtworks/xstream/mapper/ArrayMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/ArrayMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v2, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v2, v1, v3}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.mapper.EnumMapper"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v2, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.thoughtworks.xstream.mapper.AnnotationMapper"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v3, v2, v4

    const-class v3, Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    aput-object v3, v2, v5

    const-class v3, Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v3, v2, v6

    const-class v3, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    aput-object v3, v2, v7

    const-class v3, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    aput-object v3, v2, v8

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    aput-object v0, v3, v7

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    aput-object v0, v3, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    :cond_1
    check-cast v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/mapper/CachingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/CachingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-object v1

    :cond_2
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate mapper : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ignoreUnknownElements(Ljava/util/regex/Pattern;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->addFieldsToIgnore(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method private registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/thoughtworks/xstream/converters/Converter;

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate converter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupMappers()V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    return-void
.end method


# virtual methods
.method public addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public addImmutableType(Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;->addImmutableType(Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;->addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;->addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    :cond_0
    return-void
.end method

.method public alias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public alias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, p3, p2}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public aliasAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p3, p1, p2}, Lcom/thoughtworks/xstream/XStream;->aliasField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->useAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public aliasAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;->addAliasFor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aliasField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->addFieldAlias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public aliasPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->addPackageAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aliasSystemAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;->addAliasFor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aliasType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addTypeAlias(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public allowTypeHierarchy(Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypes([Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypes([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypesByRegExp([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypesByRegExp([Ljava/util/regex/Pattern;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypesByWildcard([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public autodetectAnnotations(Z)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;->autodetectAnnotations(Z)V

    :cond_0
    return-void
.end method

.method public createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;
    .locals 3

    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    new-instance v1, Lcom/thoughtworks/xstream/XStream$4;

    invoke-direct {v1, p0, p1}, Lcom/thoughtworks/xstream/XStream$4;-><init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-object v0
.end method

.method public createObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectInputStream(Ljava/io/Reader;)Ljava/io/ObjectInputStream;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)Ljava/io/ObjectOutputStream;
    .locals 1

    const-string v0, "object-stream"

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 3

    new-instance v0, Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StatefulWriter;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/thoughtworks/xstream/io/StatefulWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    new-instance v2, Lcom/thoughtworks/xstream/XStream$3;

    invoke-direct {v2, p0, v0}, Lcom/thoughtworks/xstream/XStream$3;-><init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/StatefulWriter;)V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)V

    return-object v1
.end method

.method public createObjectOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    const-string v1, "object-stream"

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Ljava/io/Writer;)Ljava/io/ObjectOutputStream;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    const-string v1, "object-stream"

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Ljava/io/Writer;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/NoPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/NoPermission;-><init>(Lcom/thoughtworks/xstream/security/TypePermission;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypeHierarchy(Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypes([Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypes([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypesByRegExp([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypesByRegExp([Ljava/util/regex/Pattern;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypesByWildcard([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public fromXML(Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    throw v1
.end method

.method public fromXML(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/net/URL;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/net/URL;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoaderReference()Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    return-object v0
.end method

.method public getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-object v0
.end method

.method public getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method public ignoreUnknownElements()V
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->IGNORE_ALL:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public ignoreUnknownElements(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    return-void
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v4, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/thoughtworks/xstream/MarshallingStrategy;->marshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    return-void
.end method

.method public newDataHolder()Lcom/thoughtworks/xstream/converters/DataHolder;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    return-object v0
.end method

.method public omitField(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public processAnnotations(Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->processAnnotations([Ljava/lang/Class;)V

    return-void
.end method

.method public processAnnotations([Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    const-string v1, "No com.thoughtworks.xstream.mapper.AnnotationMapper available"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;->processAnnotations([Ljava/lang/Class;)V

    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    :cond_0
    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    new-instance v1, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V

    invoke-interface {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    :cond_0
    return-void
.end method

.method public registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method public registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v0, p3}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->setReference(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    return-void
.end method

.method public setMode(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/thoughtworks/xstream/core/TreeMarshallingStrategy;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/TreeMarshallingStrategy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    :goto_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshallingStrategy;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshallingStrategy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->RELATIVE:I

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->RELATIVE:I

    sget v2, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    sget v2, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected setupAliases()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "null"

    const-class v1, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "int"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "float"

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "double"

    const-class v1, Ljava/lang/Double;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "long"

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "short"

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "char"

    const-class v1, Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "byte"

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "boolean"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "number"

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "object"

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "big-int"

    const-class v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "big-decimal"

    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "string-buffer"

    const-class v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "string"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java-class"

    const-class v1, Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "method"

    const-class v1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "constructor"

    const-class v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "field"

    const-class v1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "date"

    const-class v1, Ljava/util/Date;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "uri"

    const-class v1, Ljava/net/URI;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "url"

    const-class v1, Ljava/net/URL;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "bit-set"

    const-class v1, Ljava/util/BitSet;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "map"

    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "entry"

    const-class v1, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "properties"

    const-class v1, Ljava/util/Properties;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "list"

    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "set"

    const-class v1, Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "sorted-set"

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "linked-list"

    const-class v1, Ljava/util/LinkedList;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "vector"

    const-class v1, Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "tree-map"

    const-class v1, Ljava/util/TreeMap;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "tree-set"

    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "hashtable"

    const-class v1, Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "empty-list"

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "empty-map"

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "empty-set"

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "singleton-list"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "singleton-map"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "singleton-set"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "awt-color"

    const-string v1, "java.awt.Color"

    invoke-static {v1, v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "awt-font"

    const-string v1, "java.awt.Font"

    invoke-static {v1, v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "awt-text-attribute"

    const-string v1, "java.awt.font.TextAttribute"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sql-timestamp"

    const-string v1, "java.sql.Timestamp"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "sql-time"

    const-string v1, "java.sql.Time"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "sql-date"

    const-string v1, "java.sql.Date"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_3
    const-string v0, "file"

    const-class v1, Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "locale"

    const-class v1, Ljava/util/Locale;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "gregorian-calendar"

    const-class v1, Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is14()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "auth-subject"

    const-string v1, "javax.security.auth.Subject"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "linked-hash-map"

    const-string v1, "java.util.LinkedHashMap"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "linked-hash-set"

    const-string v1, "java.util.LinkedHashSet"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "trace"

    const-string v1, "java.lang.StackTraceElement"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "currency"

    const-string v1, "java.util.Currency"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "charset"

    const-string v1, "java.nio.charset.Charset"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_4
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "duration"

    const-string v1, "javax.xml.datatype.Duration"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "concurrent-hash-map"

    const-string v1, "java.util.concurrent.ConcurrentHashMap"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "enum-set"

    const-string v1, "java.util.EnumSet"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "enum-map"

    const-string v1, "java.util.EnumMap"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "string-builder"

    const-string v1, "java.lang.StringBuilder"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "uuid"

    const-string v1, "java.util.UUID"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method protected setupConverters()V
    .locals 8

    const/16 v7, -0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    const/16 v1, -0x14

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v7}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v7}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/NullConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/NullConverter;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/IntConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/IntConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/FloatConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/FloatConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/DoubleConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/DoubleConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/LongConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/LongConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ShortConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ShortConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/CharConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/CharConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/StringBufferConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/StringBufferConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/URIConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/URIConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/URLConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/URLConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BigIntegerConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BigIntegerConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BigDecimalConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BigDecimalConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/ArrayConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/ArrayConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/CharArrayConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/CharArrayConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/MapConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/SingletonMapConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/SingletonMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/PropertiesConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/PropertiesConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/FileConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/FileConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimeConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimeConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlDateConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlDateConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaClassConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/JavaClassConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaMethodConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/JavaMethodConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaFieldConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/JavaFieldConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/FontConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    :cond_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/GregorianCalendarConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/GregorianCalendarConverter;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is14()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.thoughtworks.xstream.converters.extended.SubjectConverter"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.ThrowableConverter"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.StackTraceElementConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.CurrencyConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.RegexPatternConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.CharsetConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "javax.xml.datatype.Duration"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "com.thoughtworks.xstream.converters.extended.DurationConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_4
    const-string v0, "com.thoughtworks.xstream.converters.enums.EnumConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.enums.EnumSetConverter"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.enums.EnumMapConverter"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.basic.StringBuilderConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.basic.UUIDConverter"

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_5
    new-instance v0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-direct {v0, v1, p0}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;-><init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    return-void
.end method

.method protected setupDefaultImplementations()V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v0, Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v0, Ljava/util/ArrayList;

    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v0, Ljava/util/HashSet;

    const-class v1, Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v0, Ljava/util/TreeSet;

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v0, Ljava/util/GregorianCalendar;

    const-class v1, Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected setupImmutableTypes()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/net/URI;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/net/URL;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "java.awt.font.TextAttribute"

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is14()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java.nio.charset.Charset"

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;)V

    const-string v0, "java.util.Currency"

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected setupSecurity()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    goto :goto_0
.end method

.method public toXML(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    throw v1
.end method

.method public toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    throw v1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    iget-object v4, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v5, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/thoughtworks/xstream/MarshallingStrategy;->unmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "version"

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "not available"

    goto :goto_1
.end method

.method public useAttributeFor(Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/Class;)V

    return-void
.end method

.method public useAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public useAttributeFor(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

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
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method protected useXStream11XmlFriendlyMapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    .locals 0

    return-object p1
.end method
