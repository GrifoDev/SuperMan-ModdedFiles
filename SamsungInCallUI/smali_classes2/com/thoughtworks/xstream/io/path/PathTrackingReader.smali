.class public Lcom/thoughtworks/xstream/io/path/PathTrackingReader;
.super Lcom/thoughtworks/xstream/io/ReaderWrapper;


# instance fields
.field private final pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/io/path/PathTracker;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/ReaderWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 2

    const-string v0, "path"

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/path/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/ReaderWrapper;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    return-void
.end method

.method public moveDown()V
    .locals 2

    invoke-super {p0}, Lcom/thoughtworks/xstream/io/ReaderWrapper;->moveDown()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    return-void
.end method

.method public moveUp()V
    .locals 1

    invoke-super {p0}, Lcom/thoughtworks/xstream/io/ReaderWrapper;->moveUp()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->popElement()V

    return-void
.end method
