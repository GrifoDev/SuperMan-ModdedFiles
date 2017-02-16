.class public abstract Lcom/thoughtworks/xstream/io/WriterWrapper;
.super Ljava/lang/Object;
.source "WriterWrapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;


# instance fields
.field protected wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method protected constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 25
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->close()V

    .line 54
    return-void
.end method

.method public endNode()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 38
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 50
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    check-cast v0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/WriterWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    return-object v0
.end method
