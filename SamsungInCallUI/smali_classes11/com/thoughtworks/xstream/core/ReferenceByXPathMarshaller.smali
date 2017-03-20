.class public Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;
.super Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;
.source "ReferenceByXPathMarshaller.java"


# instance fields
.field private final mode:I


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;I)V
    .locals 0
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p2, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p3, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p4, "mode"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 25
    iput p4, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    .line 26
    return-void
.end method


# virtual methods
.method protected createReference(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "currentPath"    # Lcom/thoughtworks/xstream/io/path/Path;
    .param p2, "existingReferenceKey"    # Ljava/lang/Object;

    .prologue
    .line 29
    move-object v0, p2

    check-cast v0, Lcom/thoughtworks/xstream/io/path/Path;

    .line 30
    .local v0, "existingPath":Lcom/thoughtworks/xstream/io/path/Path;
    iget v2, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    sget v3, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    move-object v1, v0

    .line 31
    .local v1, "referencePath":Lcom/thoughtworks/xstream/io/path/Path;
    :goto_0
    iget v2, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    sget v3, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    and-int/2addr v2, v3

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/path/Path;->explicit()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 30
    .end local v1    # "referencePath":Lcom/thoughtworks/xstream/io/path/Path;
    :cond_0
    invoke-virtual {p1, v0}, Lcom/thoughtworks/xstream/io/path/Path;->relativeTo(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v1

    goto :goto_0

    .line 31
    .restart local v1    # "referencePath":Lcom/thoughtworks/xstream/io/path/Path;
    :cond_1
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/path/Path;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected createReferenceKey(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "currentPath"    # Lcom/thoughtworks/xstream/io/path/Path;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 35
    return-object p1
.end method

.method protected fireValidReference(Ljava/lang/Object;)V
    .locals 0
    .param p1, "referenceKey"    # Ljava/lang/Object;

    .prologue
    .line 40
    return-void
.end method
