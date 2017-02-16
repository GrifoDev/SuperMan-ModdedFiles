.class public Lcom/thoughtworks/xstream/core/TreeUnmarshaller;
.super Ljava/lang/Object;
.source "TreeUnmarshaller.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/UnmarshallingContext;


# instance fields
.field private converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field protected reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

.field private root:Ljava/lang/Object;

.field private types:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    .line 43
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->root:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .line 45
    iput-object p3, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 46
    iput-object p4, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 47
    return-void
.end method

.method private addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V
    .locals 2
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;
    .param p4, "parent"    # Ljava/lang/Object;

    .prologue
    .line 86
    const-string v0, "class"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "required-type"

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->getRequiredType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "converter-type"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    instance-of v0, p3, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    if-eqz v0, :cond_0

    .line 90
    check-cast p3, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    .end local p3    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    invoke-interface {p3, p1}, Lcom/thoughtworks/xstream/converters/ErrorReporter;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 92
    :cond_0
    instance-of v0, p4, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    if-eqz v0, :cond_1

    .line 93
    check-cast p4, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    .end local p4    # "parent":Ljava/lang/Object;
    invoke-interface {p4, p1}, Lcom/thoughtworks/xstream/converters/ErrorReporter;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 96
    return-void
.end method

.method private lazilyCreateDataHolder()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletionCallback(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "work"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->add(Ljava/lang/Object;I)V

    .line 100
    return-void
.end method

.method protected convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 4
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .prologue
    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v3, p2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {p3, v3, p0}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v3}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ConversionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    return-object v2

    .line 75
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "conversionException":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V

    .line 77
    throw v0

    .line 78
    .end local v0    # "conversionException":Lcom/thoughtworks/xstream/converters/ConversionException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/Throwable;)V

    .line 80
    .restart local v0    # "conversionException":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V

    .line 81
    throw v0
.end method

.method public convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 3
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 55
    if-nez p3, :cond_1

    .line 56
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v1, p2}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object p3

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 58
    :cond_1
    invoke-interface {p3, p2}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Explicit selected converter cannot handle type"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "e":Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string v1, "item-type"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "converter-type"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    throw v0
.end method

.method public currentObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->root:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 112
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/DataHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public getRequiredType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 122
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 117
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public start(Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;
    .locals 6
    .param p1, "dataHolder"    # Lcom/thoughtworks/xstream/converters/DataHolder;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 133
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v5, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v4, v5}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v2

    .line 134
    .local v2, "type":Ljava/lang/Class;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "result":Ljava/lang/Object;
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v4}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 136
    .local v3, "validations":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 138
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 140
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return-object v0
.end method
