.class public Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
