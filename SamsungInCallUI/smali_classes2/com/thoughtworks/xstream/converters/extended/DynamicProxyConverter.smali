.class public Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field private static final DUMMY:Ljava/lang/reflect/InvocationHandler;

.field private static final HANDLER:Ljava/lang/reflect/Field;


# instance fields
.field private classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/reflect/Proxy;

    const-class v1, Ljava/lang/reflect/InvocationHandler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$1;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->DUMMY:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    const-class v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/ClassLoader;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method

.method private addInterfacesToXml(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    const-string v3, "interface"

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Lcom/thoughtworks/xstream/mapper/DynamicProxyMapper$DynamicProxy;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

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

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->addInterfacesToXml(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string v1, "handler"

    invoke-interface {p2, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p3, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "interface"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    :cond_1
    const-string v2, "handler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "No InvocationHandler specified for dynamic proxy"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/Class;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->DUMMY:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-interface {p2, v1, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/InvocationHandler;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->HANDLER:Ljava/lang/reflect/Field;

    invoke-static {v2, v1, v0}, Lcom/thoughtworks/xstream/core/util/Fields;->write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method
