.class public Lcom/thoughtworks/xstream/converters/extended/ColorConverter;
.super Ljava/lang/Object;
.source "ColorConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.awt.Color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/awt/Color;

    const-string v1, "red"

    invoke-virtual {v0}, Ljava/awt/Color;->getRed()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string v1, "green"

    invoke-virtual {v0}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string v1, "blue"

    invoke-virtual {v0}, Ljava/awt/Color;->getBlue()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string v1, "alpha"

    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/awt/Color;

    const-string v1, "red"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "green"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v1, "blue"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v1, "alpha"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/awt/Color;-><init>(IIII)V

    return-object v2
.end method
