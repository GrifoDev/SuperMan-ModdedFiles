.class public Lcom/thoughtworks/xstream/converters/extended/FontConverter;
.super Ljava/lang/Object;
.source "FontConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# instance fields
.field private final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final textAttributeConverter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/FontConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->textAttributeConverter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->textAttributeConverter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    goto :goto_0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.awt.Font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.swing.plaf.FontUIResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 10

    move-object v3, p1

    check-cast v3, Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v0

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v9, "class"

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->textAttributeConverter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    :goto_1
    invoke-static {p2, v5, v6}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v8, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v1, v8}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-interface {p3, v7}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0

    :cond_1
    const-class v6, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    goto :goto_1

    :cond_2
    const-string v8, "attributes"

    invoke-interface {p2, v8}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :cond_3
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 10

    const/4 v7, 0x0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "attributes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v9, "class"

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    :cond_1
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {p1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;->textAttributeConverter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/font/TextAttribute;

    const-class v8, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-ne v5, v8, :cond_3

    move-object v6, v7

    :goto_0
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is16()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    invoke-interface {p2, v7, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-class v8, Ljava/util/Map;

    invoke-interface {p2, v7, v8}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    :cond_5
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ljava/awt/Font;->getFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object v3

    invoke-interface {p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljavax/swing/plaf/FontUIResource;

    if-ne v7, v8, :cond_7

    new-instance v7, Ljavax/swing/plaf/FontUIResource;

    invoke-direct {v7, v3}, Ljavax/swing/plaf/FontUIResource;-><init>(Ljava/awt/Font;)V

    move-object v3, v7

    :cond_7
    return-object v3
.end method
