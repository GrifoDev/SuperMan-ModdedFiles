.class public Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;
.super Ljava/lang/Object;
.source "StaticNameCoder.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/naming/NameCoder;


# instance fields
.field private transient attribute2Java:Ljava/util/Map;

.field private final java2Attribute:Ljava/util/Map;

.field private final java2Node:Ljava/util/Map;

.field private transient node2Java:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "java2Node"    # Ljava/util/Map;
    .param p2, "java2Attribute"    # Ljava/util/Map;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    .line 47
    if-eq p1, p2, :cond_0

    if-nez p2, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->readResolve()Ljava/lang/Object;

    .line 53
    return-void

    .line 50
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    goto :goto_0
.end method

.method private invertMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 99
    .local v1, "inverseMap":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->invertMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->node2Java:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->node2Java:Ljava/util/Map;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->attribute2Java:Ljava/util/Map;

    .line 94
    :goto_0
    return-object p0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->invertMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->attribute2Java:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->attribute2Java:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "attributeName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "attributeName":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->node2Java:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "nodeName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "nodeName":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "friendlyName":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "friendlyName":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
