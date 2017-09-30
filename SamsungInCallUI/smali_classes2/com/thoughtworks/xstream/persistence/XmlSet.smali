.class public Lcom/thoughtworks/xstream/persistence/XmlSet;
.super Ljava/util/AbstractSet;


# instance fields
.field private final map:Lcom/thoughtworks/xstream/persistence/XmlMap;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/persistence/XmlMap;-><init>(Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlSet;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    return-void
.end method

.method private findEmptyKey()Ljava/lang/Long;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/persistence/XmlSet;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/persistence/XmlMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlSet;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/persistence/XmlMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlSet;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/persistence/XmlSet;->findEmptyKey()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlSet;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/persistence/XmlMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlSet;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/persistence/XmlMap;->size()I

    move-result v0

    return v0
.end method
