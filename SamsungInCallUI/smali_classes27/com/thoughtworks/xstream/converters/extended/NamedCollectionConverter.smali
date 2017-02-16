.class public Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;
.super Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;
.source "NamedCollectionConverter.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/Class;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "itemName"    # Ljava/lang/String;
    .param p4, "itemType"    # Ljava/lang/Class;

    .prologue
    .line 60
    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 61
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->name:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->type:Ljava/lang/Class;

    .line 63
    return-void
.end method


# virtual methods
.method protected readItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "current"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->type:Ljava/lang/Class;

    .line 83
    .local v1, "itemType":Ljava/lang/Class;
    :goto_0
    const-class v2, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x0

    .line 86
    :goto_1
    return-object v2

    .line 82
    .end local v1    # "itemType":Ljava/lang/Class;
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 86
    .restart local v1    # "itemType":Ljava/lang/Class;
    :cond_1
    invoke-interface {p2, p3, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method protected writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p3, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .prologue
    .line 66
    if-nez p1, :cond_2

    const-class v1, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    .line 67
    .local v1, "itemType":Ljava/lang/Class;
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->name:Ljava/lang/String;

    invoke-static {p3, v2, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "attributeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 77
    :cond_1
    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 78
    return-void

    .line 66
    .end local v1    # "itemType":Ljava/lang/Class;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
