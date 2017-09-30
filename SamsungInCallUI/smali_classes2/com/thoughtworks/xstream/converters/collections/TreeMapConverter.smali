.class public Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$1;,
        Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;
    }
.end annotation


# static fields
.field private static final NULL_MARKER:Ljava/util/Comparator;

.field private static final comparatorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$1;)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    const-class v0, Ljava/util/TreeMap;

    const-class v1, Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    const-class v0, Ljava/util/TreeMap;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method protected marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "comparator"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    const-string v1, "class"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :cond_0
    return-void
.end method

.method protected populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    if-ne p4, v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    move-object p4, v0

    :cond_0
    new-instance v2, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p4

    :cond_1
    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->putCurrentEntryIntoMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    :cond_2
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p4, :cond_3

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot set comparator of TreeMap"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :try_start_1
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method protected unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "comparator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no-comparator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    goto :goto_0
.end method
