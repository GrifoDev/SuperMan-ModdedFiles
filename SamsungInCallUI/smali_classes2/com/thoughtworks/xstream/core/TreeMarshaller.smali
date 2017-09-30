.class public Lcom/thoughtworks/xstream/core/TreeMarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/MarshallingContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/TreeMarshaller$CircularReferenceException;
    }
.end annotation


# instance fields
.field protected converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

.field protected writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iput-object p3, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void
.end method

.method private lazilyCreateDataHolder()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    :cond_0
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->containsId(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/core/TreeMarshaller$CircularReferenceException;

    const-string v1, "Recursive reference to parent object"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/TreeMarshaller$CircularReferenceException;-><init>(Ljava/lang/String;)V

    const-string v1, "item-type"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "converter-type"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->associateId(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {p2, p1, v0, p0}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->removeId(Ljava/lang/Object;)V

    return-void
.end method

.method public convertAnother(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method public convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 3

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->convert(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Explicit selected converter cannot handle item"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v1, "item-type"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "converter-type"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->lazilyCreateDataHolder()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/DataHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->lazilyCreateDataHolder()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->lazilyCreateDataHolder()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 3

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->convertAnother(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0
.end method
