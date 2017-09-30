.class public Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;
.super Lcom/thoughtworks/xstream/io/WriterWrapper;


# instance fields
.field private final isNameEncoding:Z

.field private final pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/io/path/PathTracker;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    instance-of v0, v0, Lcom/thoughtworks/xstream/io/AbstractWriter;

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->isNameEncoding:Z

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    return-void
.end method


# virtual methods
.method public endNode()V
    .locals 1

    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->endNode()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->popElement()V

    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 2

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

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

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

    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
