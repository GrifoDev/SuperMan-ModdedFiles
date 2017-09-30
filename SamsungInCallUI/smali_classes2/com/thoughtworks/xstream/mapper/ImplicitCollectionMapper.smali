.class public Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;,
        Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;,
        Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    }
.end annotation


# instance fields
.field private final classNameToMapper:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->classNameToMapper:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v0

    return-object v0
.end method

.method private getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->classNameToMapper:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getOrCreateMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->classNameToMapper:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    invoke-direct {v0, p0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;-><init>(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->classNameToMapper:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    move-object v0, p1

    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_7

    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" for implicit collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/InitializationException;

    const-string v2, "Access denied for field with implicit collection"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v1, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    const-class p4, Ljava/util/Map$Entry;

    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getOrCreateMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;

    invoke-direct {v1, p2, p4, p3, p5}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->add(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;)V

    return-void

    :cond_2
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" declares no collection or array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_4
    if-nez p4, :cond_5

    move-object p4, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p4}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    :cond_6
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" declares an array, but the array type is not compatible with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getImplicitCollectionDefForFieldName(Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getItemTypeForItemFieldName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
