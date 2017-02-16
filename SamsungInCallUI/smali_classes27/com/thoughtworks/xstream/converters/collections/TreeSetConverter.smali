.class public Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;
.super Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;
.source "TreeSetConverter.java"


# static fields
.field private static final sortedMapField:Ljava/lang/reflect/Field;


# instance fields
.field private transient treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/util/TreeSet;

    const-class v1, Ljava/util/SortedMap;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 48
    const-class v0, Ljava/util/TreeSet;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 49
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->readResolve()Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    .line 125
    return-object p0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    .line 54
    .local v0, "sortedSet":Ljava/util/SortedSet;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 56
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 11
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v5, 0x0

    .line 61
    .local v5, "result":Ljava/util/TreeSet;
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-virtual {v9, p1, p2, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v8

    .line 62
    .local v8, "unmarshalledComparator":Ljava/util/Comparator;
    instance-of v3, v8, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    .line 63
    .local v3, "inFirstElement":Z
    if-eqz v3, :cond_2

    .line 64
    .local v1, "comparator":Ljava/util/Comparator;
    :goto_0
    sget-object v9, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    if-eqz v9, :cond_5

    .line 65
    if-nez v1, :cond_3

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 66
    .local v4, "possibleResult":Ljava/util/TreeSet;
    :goto_1
    const/4 v0, 0x0

    .line 68
    .local v0, "backingMap":Ljava/lang/Object;
    :try_start_0
    sget-object v9, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    instance-of v9, v0, Ljava/util/TreeMap;

    if-eqz v9, :cond_4

    move-object v7, v0

    .line 73
    check-cast v7, Ljava/util/TreeMap;

    .line 74
    .local v7, "treeMap":Ljava/util/TreeMap;
    move-object v5, v4

    .line 81
    .end local v0    # "backingMap":Ljava/lang/Object;
    .end local v4    # "possibleResult":Ljava/util/TreeSet;
    :goto_2
    if-nez v7, :cond_7

    .line 82
    new-instance v6, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v6, v1}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    .line 83
    .local v6, "set":Lcom/thoughtworks/xstream/core/util/PresortedSet;
    if-nez v1, :cond_6

    new-instance v5, Ljava/util/TreeSet;

    .end local v5    # "result":Ljava/util/TreeSet;
    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 84
    .restart local v5    # "result":Ljava/util/TreeSet;
    :goto_3
    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->addCurrentElementToCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 87
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 90
    invoke-virtual {v6}, Lcom/thoughtworks/xstream/core/util/PresortedSet;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 91
    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 96
    .end local v6    # "set":Lcom/thoughtworks/xstream/core/util/PresortedSet;
    :cond_1
    :goto_4
    return-object v5

    .end local v1    # "comparator":Ljava/util/Comparator;
    .end local v7    # "treeMap":Ljava/util/TreeMap;
    :cond_2
    move-object v1, v8

    .line 63
    goto :goto_0

    .line 65
    .restart local v1    # "comparator":Ljava/util/Comparator;
    :cond_3
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_1

    .line 69
    .restart local v0    # "backingMap":Ljava/lang/Object;
    .restart local v4    # "possibleResult":Ljava/util/TreeSet;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v10, "Cannot get backing map of TreeSet"

    invoke-direct {v9, v10, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 76
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "treeMap":Ljava/util/TreeMap;
    goto :goto_2

    .line 79
    .end local v0    # "backingMap":Ljava/lang/Object;
    .end local v4    # "possibleResult":Ljava/util/TreeSet;
    .end local v7    # "treeMap":Ljava/util/TreeMap;
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "treeMap":Ljava/util/TreeMap;
    goto :goto_2

    .line 83
    .restart local v6    # "set":Lcom/thoughtworks/xstream/core/util/PresortedSet;
    :cond_6
    new-instance v5, Ljava/util/TreeSet;

    .end local v5    # "result":Ljava/util/TreeSet;
    invoke-direct {v5, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_3

    .line 94
    .end local v6    # "set":Lcom/thoughtworks/xstream/core/util/PresortedSet;
    .restart local v5    # "result":Ljava/util/TreeSet;
    :cond_7
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-virtual {v9, p1, p2, v7, v8}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    goto :goto_4
.end method
