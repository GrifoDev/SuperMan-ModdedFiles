.class public Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;
.super Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;


# static fields
.field private static final sortedMapField:Ljava/lang/reflect/Field;


# instance fields
.field private transient treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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

    const-class v0, Ljava/util/TreeSet;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->readResolve()Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    return-object p0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-virtual {v0, p1, p2, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v3

    instance-of v5, v3, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-eqz v5, :cond_2

    move-object v1, v2

    :goto_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v4, v0

    :goto_1
    :try_start_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    instance-of v6, v0, Ljava/util/TreeMap;

    if-eqz v6, :cond_4

    check-cast v0, Ljava/util/TreeMap;

    :goto_2
    move-object v2, v0

    move-object v0, v4

    :goto_3
    if-nez v2, :cond_7

    new-instance v2, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    if-nez v1, :cond_6

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :goto_4
    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->addCurrentElementToCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    :cond_0
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/PresortedSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_5
    return-object v0

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot get backing map of TreeSet"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v0, v2

    move-object v4, v2

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    goto :goto_5
.end method
