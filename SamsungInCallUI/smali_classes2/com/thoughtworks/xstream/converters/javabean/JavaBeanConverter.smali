.class public Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;,
        Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicateFieldException;
    }
.end annotation


# instance fields
.field protected final beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

.field private classAttributeIdentifier:Ljava/lang/String;

.field protected final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->type:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    return-void
.end method

.method private determineType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "class"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v1, p2, p3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2
.end method

.method private instantiateNewInstance(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->currentObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->type:Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->canInstantiate(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 7

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    :goto_0
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-interface {v6, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->visitSerializableProperties(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "class"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 6

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->instantiateNewInstance(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;

    invoke-direct {v1, p0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v4, v3, v2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->propertyDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v0, v3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->determineType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v5, v0, v3, v4}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->writeProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v4, v2, v3}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method
