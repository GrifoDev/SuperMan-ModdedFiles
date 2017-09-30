.class public abstract Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;
.super Lcom/thoughtworks/xstream/core/TreeMarshaller;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/MarshallingContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$ReferencedImplicitElementException;,
        Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;
    }
.end annotation


# instance fields
.field private implicitElements:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

.field private lastPath:Lcom/thoughtworks/xstream/io/path/Path;

.field private pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

.field private references:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/TreeMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->references:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->implicitElements:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    new-instance v0, Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    new-instance v0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/io/path/PathTracker;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->references:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/io/path/PathTracker;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->implicitElements:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->isImmutableValueType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {p2, p1, v0, p0}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->references:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->lookupId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    const-string v3, "reference"

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->createReference(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_5

    invoke-virtual {p0, v1, p1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->createReferenceKey(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->lastPath:Lcom/thoughtworks/xstream/io/path/Path;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->lastPath:Lcom/thoughtworks/xstream/io/path/Path;

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/io/path/Path;->isAncestor(Lcom/thoughtworks/xstream/io/path/Path;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->fireValidReference(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->lastPath:Lcom/thoughtworks/xstream/io/path/Path;

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->references:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    new-instance v3, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;

    invoke-direct {v3, v0, v1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V

    invoke-virtual {v2, p1, v3}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->associateId(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    new-instance v3, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;-><init>(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V

    invoke-interface {p2, p1, v2, v3}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->getItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract createReference(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected abstract createReferenceKey(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected abstract fireValidReference(Ljava/lang/Object;)V
.end method
