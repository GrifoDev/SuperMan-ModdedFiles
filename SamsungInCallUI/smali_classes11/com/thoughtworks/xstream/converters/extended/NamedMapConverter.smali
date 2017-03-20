.class public Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;
.source "NamedMapConverter.java"


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
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .param p4, "keyType"    # Ljava/lang/Class;
    .param p5, "valueName"    # Ljava/lang/String;
    .param p6, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 138
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

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 11
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .param p4, "keyType"    # Ljava/lang/Class;
    .param p5, "valueName"    # Ljava/lang/String;
    .param p6, "valueType"    # Ljava/lang/Class;
    .param p7, "keyAsAttribute"    # Z
    .param p8, "valueAsAttribute"    # Z
    .param p9, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .prologue
    .line 178
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

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "entryName"    # Ljava/lang/String;
    .param p4, "keyName"    # Ljava/lang/String;
    .param p5, "keyType"    # Ljava/lang/Class;
    .param p6, "valueName"    # Ljava/lang/String;
    .param p7, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 156
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

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "entryName"    # Ljava/lang/String;
    .param p4, "keyName"    # Ljava/lang/String;
    .param p5, "keyType"    # Ljava/lang/Class;
    .param p6, "valueName"    # Ljava/lang/String;
    .param p7, "valueType"    # Ljava/lang/Class;
    .param p8, "keyAsAttribute"    # Z
    .param p9, "valueAsAttribute"    # Z
    .param p10, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 203
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    .line 204
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    .line 205
    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    .line 206
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    .line 207
    iput-object p7, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    .line 208
    iput-boolean p8, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    .line 209
    iput-boolean p9, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    .line 210
    iput-object p10, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 211
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 213
    if-eqz p5, :cond_1

    if-nez p7, :cond_5

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class types of key and value are mandatory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p3

    .line 203
    goto :goto_0

    :cond_3
    move-object v0, p4

    .line 204
    goto :goto_1

    :cond_4
    move-object v0, p6

    .line 206
    goto :goto_2

    .line 216
    :cond_5
    if-nez p3, :cond_8

    .line 217
    if-nez p8, :cond_6

    if-eqz p9, :cond_7

    .line 218
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write attributes to map entry, if map entry must be omitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_7
    if-nez p6, :cond_8

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as text of entry, if entry must be omitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_8
    if-nez p4, :cond_9

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write key without name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_9
    if-nez p6, :cond_b

    .line 230
    if-eqz p9, :cond_a

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as attribute without name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_a
    if-nez p8, :cond_b

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as text of entry, if key is also child element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_b
    if-eqz p8, :cond_c

    if-eqz p9, :cond_c

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write key and value with same attribute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_c
    return-void
.end method

.method private getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x0

    .line 351
    invoke-static {p1}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v3, p1, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 354
    .local v0, "conv":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :goto_0
    if-nez v0, :cond_0

    .line 355
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v2, p1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    .line 356
    .local v1, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    instance-of v2, v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 357
    check-cast v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 362
    .end local v1    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :cond_0
    return-object v0

    .line 351
    .end local v0    # "conv":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :cond_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v3, p1, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    goto :goto_0

    .line 359
    .restart local v0    # "conv":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .restart local v1    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :cond_2
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "No SingleValueConverter for key available"

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 16
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .prologue
    .line 246
    move-object/from16 v14, p1

    check-cast v14, Ljava/util/Map;

    .line 247
    .local v14, "map":Ljava/util/Map;
    const/4 v13, 0x0

    .line 248
    .local v13, "keyConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    const/4 v15, 0x0

    .line 249
    .local v15, "valueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    if-eqz v1, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v13

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 253
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v15

    .line 255
    :cond_2
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 256
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 257
    .local v11, "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 258
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 259
    .local v8, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 262
    if-eqz v13, :cond_4

    if-eqz v4, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {v13, v4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v15, :cond_5

    if-eqz v8, :cond_5

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-interface {v15, v8}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_5
    if-nez v13, :cond_6

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 273
    :cond_6
    if-nez v15, :cond_8

    .line 274
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 279
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 280
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0

    .line 275
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 276
    invoke-interface {v15, v8}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v4    # "key":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v11    # "entry":Ljava/util/Map$Entry;
    :cond_9
    return-void
.end method

.method protected populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "target"    # Ljava/util/Map;

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "keyConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    const/4 v4, 0x0

    .line 289
    .local v4, "valueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    iget-boolean v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    if-eqz v5, :cond_0

    .line 290
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-direct {p0, v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v2

    .line 292
    :cond_0
    iget-boolean v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 293
    :cond_1
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-direct {p0, v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v4

    .line 296
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "key":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 300
    .local v3, "value":Ljava/lang/Object;
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 301
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 303
    if-eqz v2, :cond_3

    .line 304
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "attribute":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 306
    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 310
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/Object;
    :cond_3
    iget-boolean v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 311
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .restart local v0    # "attribute":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 313
    invoke-interface {v4, v0}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 318
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    if-nez v2, :cond_5

    .line 319
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 320
    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 323
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 327
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 330
    :cond_5
    if-nez v4, :cond_9

    .line 331
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 332
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    if-eqz v3, :cond_8

    .line 333
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 337
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 342
    :cond_6
    :goto_3
    invoke-interface {p4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 345
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 325
    :cond_7
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "key":Ljava/lang/Object;
    goto :goto_1

    .line 335
    .end local v1    # "key":Ljava/lang/Object;
    :cond_8
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 338
    .end local v3    # "value":Ljava/lang/Object;
    :cond_9
    iget-boolean v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v5, :cond_6

    .line 339
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_3

    .line 348
    .end local v3    # "value":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method protected readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p4, "current"    # Ljava/lang/Object;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p1

    .line 385
    .local v1, "itemType":Ljava/lang/Class;
    :goto_0
    const-class v2, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    const/4 v2, 0x0

    .line 388
    :goto_1
    return-object v2

    .line 384
    .end local v1    # "itemType":Ljava/lang/Class;
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 388
    .restart local v1    # "itemType":Ljava/lang/Class;
    :cond_1
    invoke-interface {p3, p4, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method protected writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "item"    # Ljava/lang/Object;
    .param p4, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p5, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .prologue
    .line 367
    if-nez p3, :cond_2

    const-class v1, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    .line 368
    .local v1, "itemType":Ljava/lang/Class;
    :goto_0
    invoke-static {p5, p1, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 369
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "attributeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v0, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 376
    invoke-interface {p4, p3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 378
    :cond_1
    invoke-interface {p5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 379
    return-void

    .line 367
    .end local v1    # "itemType":Ljava/lang/Class;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
