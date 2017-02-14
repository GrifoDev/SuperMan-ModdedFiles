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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-interface {v7, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v7

    const-string v8, "reference"

    invoke-interface {v7, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-virtual {p0, v5}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v7, "Invalid reference"

    invoke-direct {v3, v7}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v7, "reference"

    invoke-virtual {v3, v7, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    if-ne v1, v7, :cond_3

    :goto_1
    return-object v6

    :cond_3
    move-object v6, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getCurrentReferenceKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v2, :cond_5

    iget-object v8, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    if-nez v6, :cond_6

    sget-object v7, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    :goto_2
    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    goto :goto_1

    :cond_6
    move-object v7, v6

    goto :goto_2
.end method

.method protected abstract getCurrentReferenceKey()Ljava/lang/Object;
.end method

.method protected abstract getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;
.end method
