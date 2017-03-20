.class public Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;
.source "AttributeAliasingMapper.java"


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 27
    return-void
.end method


# virtual methods
.method public aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, "alias":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->attributeForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
