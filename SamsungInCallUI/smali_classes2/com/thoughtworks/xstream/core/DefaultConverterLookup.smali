.class public Lcom/thoughtworks/xstream/core/DefaultConverterLookup;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ConverterLookup;
.implements Lcom/thoughtworks/xstream/converters/ConverterRegistry;
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field private final converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

.field private transient typeToConverterMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->readResolve()Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public flushCache()V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/Converter;

    instance-of v2, v0, Lcom/thoughtworks/xstream/core/Caching;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/thoughtworks/xstream/core/Caching;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/Caching;->flushCache()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/Converter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No converter specified for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->add(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
