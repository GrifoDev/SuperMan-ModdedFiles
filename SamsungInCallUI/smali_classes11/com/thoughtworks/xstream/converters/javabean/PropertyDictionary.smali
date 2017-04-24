.class public Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;
.super Ljava/lang/Object;
.source "PropertyDictionary.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field private transient propertyNameCache:Ljava/util/Map;

.field private final sorter:Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->sorter:Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;

    return-void
.end method

.method private buildMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 9

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    :try_start_0
    const-class v6, Ljava/lang/Object;

    invoke-static {p1, v6}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;Ljava/lang/Class;)Ljava/beans/BeanInfo;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v4, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v4}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get BeanInfo of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->sorter:Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;

    invoke-interface {v6, p1, v4}, Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v4
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public propertiesFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->buildMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public property(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->buildMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyDescriptor;

    if-nez v1, :cond_0

    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    return-object v0
.end method

.method public propertyDescriptor(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 3

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->buildMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    if-nez v0, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public serializablePropertiesFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->buildMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyDescriptor;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    return-object v4
.end method
