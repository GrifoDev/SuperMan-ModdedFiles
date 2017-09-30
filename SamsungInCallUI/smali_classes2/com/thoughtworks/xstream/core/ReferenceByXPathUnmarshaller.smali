.class public Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;
.super Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;


# instance fields
.field protected isNameEncoding:Z

.field private pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    new-instance v0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-direct {v0, p2, v1}, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/io/path/PathTracker;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    instance-of v0, v0, Lcom/thoughtworks/xstream/io/AbstractReader;

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->isNameEncoding:Z

    return-void
.end method


# virtual methods
.method protected getCurrentReferenceKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/thoughtworks/xstream/io/path/Path;

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->isNameEncoding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/AbstractReader;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/AbstractReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/path/Path;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;->apply(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
