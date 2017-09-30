.class public Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;


# instance fields
.field private final classToName:Ljava/util/Map;

.field private transient nameToType:Ljava/util/Map;

.field private final typeToName:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addClassAttributeAlias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addTypeAlias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aliasIsAttribute(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public itemTypeAsAttribute(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->nameToType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/Primitives;->primitiveType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    :cond_1
    invoke-super {p0, v0}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->classToName:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->typeToName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
