.class public Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
.super Ljava/lang/Object;
.source "XppDom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private attributes:Ljava/util/Map;

.field private childList:Ljava/util/List;

.field private transient childMap:Ljava/util/Map;

.field private name:Ljava/lang/String;

.field private parent:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    return-void
.end method

.method public static build(Lorg/xmlpull/v1/XmlPullParser;)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_5

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;

    invoke-direct {v3, v13}, Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v12, v3}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V

    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_2

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v10, v14}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/StringBuffer;

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    :cond_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setValue(Ljava/lang/String;)V

    if-nez v4, :cond_2

    move-object v11, v7

    goto :goto_2

    :cond_4
    move-object v8, v1

    goto :goto_3

    :cond_5
    return-object v11
.end method


# virtual methods
.method public addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 2

    invoke-virtual {p1, p0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setParent(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getChildren()[Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast v0, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    goto :goto_0
.end method

.method public getChildren(Ljava/lang/String;)[Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    if-nez v4, :cond_0

    new-array v4, v5, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-array v4, v5, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast v4, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->parent:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->value:Ljava/lang/String;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setParent(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->parent:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->value:Ljava/lang/String;

    return-void
.end method
