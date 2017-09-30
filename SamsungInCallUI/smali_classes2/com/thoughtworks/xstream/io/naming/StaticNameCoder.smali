.class public Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    if-eq p1, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->readResolve()Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    goto :goto_0
.end method

.method private invertMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->invertMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->node2Java:Ljava/util/Map;

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->node2Java:Ljava/util/Map;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->attribute2Java:Ljava/util/Map;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->invertMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->attribute2Java:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->attribute2Java:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->node2Java:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Attribute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/StaticNameCoder;->java2Node:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
