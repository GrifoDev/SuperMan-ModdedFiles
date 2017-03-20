.class public Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;
.super Ljava/lang/Object;
.source "JavaBeanConverter.java"

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
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 51
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "beanProvider"    # Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "beanProvider"    # Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 64
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    .line 65
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->type:Ljava/lang/Class;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 55
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;Ljava/lang/Class;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "classAttributeIdentifier"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;)V

    .line 73
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private determineType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    .line 157
    .local v1, "classAttributeName":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 158
    .local v0, "classAttribute":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    .line 159
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 161
    :goto_2
    return-object v2

    .line 156
    .end local v0    # "classAttribute":Ljava/lang/String;
    .end local v1    # "classAttributeName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v3, "class"

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    .restart local v1    # "classAttributeName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    .restart local v0    # "classAttribute":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v3, p2, p3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_2
.end method

.method private instantiateNewInstance(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .prologue
    .line 148
    invoke-interface {p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 81
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
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->classAttributeIdentifier:Ljava/lang/String;

    .line 86
    .local v4, "classAttributeName":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-interface {v6, p1, v0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->visitSerializableProperties(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;)V

    .line 110
    return-void

    .line 85
    .end local v4    # "classAttributeName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "class"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .prologue
    .line 113
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->instantiateNewInstance(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v2

    .line 114
    .local v2, "result":Ljava/lang/Object;
    new-instance v4, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;

    invoke-direct {v4, p0}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;)V

    .line 123
    .local v4, "seenProperties":Ljava/util/Set;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 124
    .local v3, "resultType":Ljava/lang/Class;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 127
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "propertyName":Ljava/lang/String;
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v7, v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v7, v1, v3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->propertyDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    .line 132
    .local v0, "propertyExistsInClass":Z
    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, p1, v2, v1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->determineType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 134
    .local v5, "type":Ljava/lang/Class;
    invoke-interface {p2, v2, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 135
    .local v6, "value":Ljava/lang/Object;
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->beanProvider:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-interface {v7, v2, v1, v6}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;->writeProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    new-instance v7, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v7, v3, v1}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v0    # "propertyExistsInClass":Z
    .end local v5    # "type":Ljava/lang/Class;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 138
    .restart local v0    # "propertyExistsInClass":Z
    :cond_1
    new-instance v7, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 144
    .end local v0    # "propertyExistsInClass":Z
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_2
    return-object v2
.end method
