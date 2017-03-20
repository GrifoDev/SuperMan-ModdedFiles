.class public Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;
.super Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;
.source "ReferenceByIdMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;
    }
.end annotation


# instance fields
.field private final idGenerator:Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p2, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p3, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/core/SequenceGenerator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/SequenceGenerator;-><init>(I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;)V
    .locals 0
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p2, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p3, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p4, "idGenerator"    # Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 32
    iput-object p4, p0, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;->idGenerator:Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;

    .line 33
    return-void
.end method


# virtual methods
.method protected createReference(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "currentPath"    # Lcom/thoughtworks/xstream/io/path/Path;
    .param p2, "existingReferenceKey"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createReferenceKey(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "currentPath"    # Lcom/thoughtworks/xstream/io/path/Path;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;->idGenerator:Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;->next(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fireValidReference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "referenceKey"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "attributeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
