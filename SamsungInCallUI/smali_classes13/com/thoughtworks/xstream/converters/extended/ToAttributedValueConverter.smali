.class public Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;
.super Ljava/lang/Object;
.source "ToAttributedValueConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field private static final STRUCTURE_MARKER:Ljava/lang/String; = ""


# instance fields
.field private final enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field private final type:Ljava/lang/Class;

.field private final valueField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->type:Ljava/lang/Class;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    if-nez p5, :cond_1

    iput-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    :goto_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p6, :cond_3

    :goto_1
    :try_start_0
    invoke-virtual {p6, p5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iput-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    goto :goto_0

    :cond_3
    move-object p6, p1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Lcom/thoughtworks/xstream/core/util/FastField;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method private fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getDeclaringClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->type:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    iget-object v14, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    new-instance v1, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;

    move-object v2, p0

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/String;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    const/4 v1, 0x0

    aget-object v1, v8, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v10}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v13}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v8, v1

    const-string v2, ""

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    aget-object v1, v8, v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v20, v0

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v13

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    const-string v21, "class"

    invoke-interface/range {v20 .. v21}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v7

    :goto_0
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v7

    :cond_1
    instance-of v0, v7, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move/from16 v20, v0

    if-nez v20, :cond_3

    new-instance v10, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v20, "Cannot read field as a single value for object"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v20, "field"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "type"

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v7

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_0

    check-cast v7, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static/range {v18 .. v18}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v18

    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_5

    new-instance v10, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v20, "Cannot assign object to type"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v20, "object type"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "target type"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v14, v12, v1, v8}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v20, Lcom/thoughtworks/xstream/core/util/FastField;

    move-object/from16 v0, v20

    invoke-direct {v0, v8, v12}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    new-instance v20, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    const/4 v11, 0x0

    :goto_1
    if-eqz v12, :cond_7

    if-nez v11, :cond_9

    :cond_7
    new-instance v10, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v20, "Cannot assign value to field of type"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v20, "element"

    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "field"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "target type"

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v14, v1, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v12, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-nez v20, :cond_a

    move-object/from16 v18, v9

    :cond_a
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_c

    new-instance v10, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v20, "Cannot assign object to type"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v20, "object type"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "target type"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14, v12, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v18

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v14, v12, v1, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v20, Lcom/thoughtworks/xstream/core/util/FastField;

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v12}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    new-instance v20, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_d
    return-object v14
.end method
