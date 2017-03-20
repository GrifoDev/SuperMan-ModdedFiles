.class public Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;
.super Ljava/lang/Object;
.source "HierarchicalStreams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;
    .locals 3
    .param p0, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 37
    const-string v2, "resolves-to"

    invoke-interface {p1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "attributeName":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 39
    .local v1, "classAttribute":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 40
    const-string v2, "class"

    invoke-interface {p1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p0, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    return-object v1

    .line 38
    .end local v1    # "classAttribute":Ljava/lang/String;
    :cond_1
    invoke-interface {p0, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;
    .locals 3
    .param p0, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "classAttribute":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 29
    invoke-interface {p0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    .local v1, "type":Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 31
    .end local v1    # "type":Ljava/lang/Class;
    :cond_0
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "type":Ljava/lang/Class;
    goto :goto_0
.end method
