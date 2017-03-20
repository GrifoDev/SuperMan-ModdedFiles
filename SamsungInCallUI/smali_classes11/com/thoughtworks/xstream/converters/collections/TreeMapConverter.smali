.class public Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;
.source "TreeMapConverter.java"


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

    .prologue
    .line 49
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$1;)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    .line 50
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
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 53
    const-class v0, Ljava/util/TreeMap;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 54
    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/SortedMap;

    .line 58
    .local v0, "sortedMap":Ljava/util/SortedMap;
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 60
    return-void
.end method

.method protected marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3
    .param p1, "comparator"    # Ljava/util/Comparator;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string v0, "comparator"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 66
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

    .line 68
    invoke-interface {p3, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 69
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 71
    :cond_0
    return-void
.end method

.method protected populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V
    .locals 5
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "result"    # Ljava/util/TreeMap;
    .param p4, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 106
    sget-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    if-ne p4, v3, :cond_3

    const/4 v1, 0x1

    .line 107
    .local v1, "inFirstElement":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 108
    const/4 p4, 0x0

    .line 110
    :cond_0
    new-instance v2, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p4

    :goto_1
    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    .line 111
    .local v2, "sortedMap":Ljava/util/SortedMap;
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->putCurrentEntryIntoMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    .line 114
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 116
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    .line 118
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 119
    if-eqz p4, :cond_2

    sget-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    .line 120
    sget-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_2
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 133
    :goto_2
    return-void

    .line 106
    .end local v1    # "inFirstElement":Z
    .end local v2    # "sortedMap":Ljava/util/SortedMap;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 110
    .restart local v1    # "inFirstElement":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 123
    .restart local v2    # "sortedMap":Ljava/util/SortedMap;
    :cond_5
    sget-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_6

    .line 124
    sget-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 126
    sget-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v4, "Cannot set comparator of TreeMap"

    invoke-direct {v3, v4, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 128
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_6
    :try_start_1
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .prologue
    .line 74
    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 75
    .local v1, "result":Ljava/util/TreeMap;
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    .line 76
    .local v0, "comparator":Ljava/util/Comparator;
    if-nez v1, :cond_0

    .line 77
    if-nez v0, :cond_2

    new-instance v1, Ljava/util/TreeMap;

    .end local v1    # "result":Ljava/util/TreeMap;
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 79
    .restart local v1    # "result":Ljava/util/TreeMap;
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    .line 80
    return-object v1

    .line 74
    .end local v0    # "comparator":Ljava/util/Comparator;
    .end local v1    # "result":Ljava/util/TreeMap;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    .restart local v0    # "comparator":Ljava/util/Comparator;
    .restart local v1    # "result":Ljava/util/TreeMap;
    :cond_2
    new-instance v1, Ljava/util/TreeMap;

    .end local v1    # "result":Ljava/util/TreeMap;
    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method protected unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;
    .locals 4
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "result"    # Ljava/util/TreeMap;

    .prologue
    .line 86
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 88
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "comparator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v1

    .line 90
    .local v1, "comparatorClass":Ljava/lang/Class;
    invoke-interface {p2, p3, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 97
    .end local v1    # "comparatorClass":Ljava/lang/Class;
    .local v0, "comparator":Ljava/util/Comparator;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 101
    .end local v0    # "comparator":Ljava/util/Comparator;
    :goto_1
    return-object v0

    .line 91
    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no-comparator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const/4 v0, 0x0

    .restart local v0    # "comparator":Ljava/util/Comparator;
    goto :goto_0

    .line 95
    .end local v0    # "comparator":Ljava/util/Comparator;
    :cond_1
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    goto :goto_1

    .line 99
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "comparator":Ljava/util/Comparator;
    goto :goto_1
.end method
