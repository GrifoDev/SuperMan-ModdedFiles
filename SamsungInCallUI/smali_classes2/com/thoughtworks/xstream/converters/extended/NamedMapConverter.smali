.class public Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;


# instance fields
.field private final entryName:Ljava/lang/String;

.field private final enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final keyAsAttribute:Z

.field private final keyName:Ljava/lang/String;

.field private final keyType:Ljava/lang/Class;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private final valueAsAttribute:Z

.field private final valueName:Ljava/lang/String;

.field private final valueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    iput-object p7, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    iput-boolean p8, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    iput-boolean p9, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    iput-object p10, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    if-eqz p5, :cond_1

    if-nez p7, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class types of key and value are mandatory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p3

    goto :goto_0

    :cond_3
    move-object v0, p4

    goto :goto_1

    :cond_4
    move-object v0, p6

    goto :goto_2

    :cond_5
    if-nez p3, :cond_8

    if-nez p8, :cond_6

    if-eqz p9, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write attributes to map entry, if map entry must be omitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez p6, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as text of entry, if entry must be omitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez p4, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write key without name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-nez p6, :cond_b

    if-eqz p9, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as attribute without name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p8, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as text of entry, if key is also child element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz p8, :cond_c

    if-eqz p9, :cond_c

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write key and value with same attribute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, v1, p1, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    instance-of v1, v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-interface {v0, v1, p1, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "No SingleValueConverter for key available"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 10

    const/4 v1, 0x0

    check-cast p1, Ljava/util/Map;

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    move-object v6, v0

    :goto_0
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v0, :cond_8

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    move-object v7, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {v6, v3}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-interface {v7, v9}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v6, :cond_4

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    move-object v0, p0

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    :cond_4
    if-nez v7, :cond_6

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    move-object v0, p0

    move-object v3, v9

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-interface {v7, v9}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    move-object v7, v1

    goto :goto_1

    :cond_9
    move-object v6, v1

    goto/16 :goto_0
.end method

.method protected populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v2, :cond_b

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v0, v3}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    iget-boolean v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-interface {p1, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v2, v4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_3
    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_4
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    :cond_2
    if-nez v2, :cond_6

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_5
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    :cond_3
    :goto_6
    invoke-interface {p4, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :cond_6
    iget-boolean v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v5, :cond_3

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    return-void

    :cond_8
    move-object v4, v3

    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v3, v1

    goto :goto_2

    :cond_a
    move-object v3, v1

    move-object v4, v1

    goto :goto_3

    :cond_b
    move-object v2, v1

    goto/16 :goto_1

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p3, p4, p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 3

    if-nez p3, :cond_2

    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    :goto_0
    invoke-static {p5, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p4, p3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
