.class public Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;
.super Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;
.source "ReferenceByXPathUnmarshaller.java"


# instance fields
.field protected isNameEncoding:Z

.field private pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 24
    new-instance v0, Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    .line 30
    new-instance v0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-direct {v0, p2, v1}, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/io/path/PathTracker;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .line 31
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    instance-of v0, v0, Lcom/thoughtworks/xstream/io/AbstractReader;

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->isNameEncoding:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected getCurrentReferenceKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->isNameEncoding:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/AbstractReader;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/io/AbstractReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "path":Lcom/thoughtworks/xstream/io/path/Path;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/io/path/Path;->apply(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v0

    .end local v0    # "path":Lcom/thoughtworks/xstream/io/path/Path;
    :cond_0
    return-object v0

    :cond_1
    move-object v1, p1

    .line 35
    goto :goto_0
.end method
