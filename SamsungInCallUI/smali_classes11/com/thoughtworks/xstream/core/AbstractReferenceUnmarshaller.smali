.class public abstract Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;
.super Lcom/thoughtworks/xstream/core/TreeUnmarshaller;
.source "AbstractReferenceUnmarshaller.java"


# static fields
.field private static final NULL:Ljava/lang/Object;


# instance fields
.field private parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private values:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 40
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 9
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .prologue
    const/4 v6, 0x0

    .line 43
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 44
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v4

    .line 45
    .local v4, "parentReferenceKey":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 46
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 47
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-interface {v7, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v4    # "parentReferenceKey":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v7

    const-string v8, "reference"

    invoke-interface {v7, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "attributeName":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v5, v6

    .line 54
    .local v5, "reference":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_4

    .line 55
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-virtual {p0, v5}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "cache":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 57
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v7, "Invalid reference"

    invoke-direct {v3, v7}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "ex":Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string v7, "reference"

    invoke-virtual {v3, v7, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    throw v3

    .line 53
    .end local v1    # "cache":Ljava/lang/Object;
    .end local v3    # "ex":Lcom/thoughtworks/xstream/converters/ConversionException;
    .end local v5    # "reference":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 61
    .restart local v1    # "cache":Ljava/lang/Object;
    .restart local v5    # "reference":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    if-ne v1, v7, :cond_3

    .line 71
    .end local v1    # "cache":Ljava/lang/Object;
    .local v6, "result":Ljava/lang/Object;
    :goto_1
    return-object v6

    .end local v6    # "result":Ljava/lang/Object;
    .restart local v1    # "cache":Ljava/lang/Object;
    :cond_3
    move-object v6, v1

    .line 61
    goto :goto_1

    .line 63
    .end local v1    # "cache":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getCurrentReferenceKey()Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "currentReferenceKey":Ljava/lang/Object;
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v6

    .line 66
    .restart local v6    # "result":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 67
    iget-object v8, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    if-nez v6, :cond_6

    sget-object v7, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    :goto_2
    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_5
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    goto :goto_1

    :cond_6
    move-object v7, v6

    .line 67
    goto :goto_2
.end method

.method protected abstract getCurrentReferenceKey()Ljava/lang/Object;
.end method

.method protected abstract getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;
.end method
