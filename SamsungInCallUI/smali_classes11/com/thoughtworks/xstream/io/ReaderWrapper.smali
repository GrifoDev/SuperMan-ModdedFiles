.class public abstract Lcom/thoughtworks/xstream/io/ReaderWrapper;
.super Ljava/lang/Object;
.source "ReaderWrapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;


# instance fields
.field protected wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;


# direct methods
.method protected constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V
    .locals 0
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .line 29
    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 1
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 73
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    .line 77
    return-void
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    return v0
.end method

.method public moveDown()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 37
    return-void
.end method

.method public moveUp()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 41
    return-void
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    instance-of v0, v0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "peekNextChild"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    check-cast v0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;->peekNextChild()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method
