.class public Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;
.super Lcom/thoughtworks/xstream/io/WriterWrapper;
.source "PathTrackingWriter.java"


# instance fields
.field private final isNameEncoding:Z

.field private final pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/io/path/PathTracker;)V
    .locals 1
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p2, "pathTracker"    # Lcom/thoughtworks/xstream/io/path/PathTracker;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 33
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    instance-of v0, v0, Lcom/thoughtworks/xstream/io/AbstractWriter;

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->isNameEncoding:Z

    .line 34
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    .line 35
    return-void
.end method


# virtual methods
.method public endNode()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->endNode()V

    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->popElement()V

    .line 50
    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->isNameEncoding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/AbstractWriter;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;)V

    .line 40
    return-void

    :cond_0
    move-object v0, p1

    .line 38
    goto :goto_0
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->isNameEncoding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/AbstractWriter;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    return-void

    :cond_0
    move-object v0, p1

    .line 43
    goto :goto_0
.end method
