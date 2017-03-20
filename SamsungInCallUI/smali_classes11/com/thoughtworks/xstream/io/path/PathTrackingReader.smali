.class public Lcom/thoughtworks/xstream/io/path/PathTrackingReader;
.super Lcom/thoughtworks/xstream/io/ReaderWrapper;
.source "PathTrackingReader.java"


# instance fields
.field private final pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/io/path/PathTracker;)V
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "pathTracker"    # Lcom/thoughtworks/xstream/io/path/PathTracker;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/ReaderWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    .line 32
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    .line 33
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 2
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .prologue
    .line 47
    const-string v0, "path"

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/path/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/ReaderWrapper;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 49
    return-void
.end method

.method public moveDown()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/ReaderWrapper;->moveDown()V

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public moveUp()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/ReaderWrapper;->moveUp()V

    .line 43
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingReader;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->popElement()V

    .line 44
    return-void
.end method
