.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;
.source "AbstractDocumentReader.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/xml/DocumentReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$1;,
        Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;
    }
.end annotation


# instance fields
.field private current:Ljava/lang/Object;

.field private pointers:Lcom/thoughtworks/xstream/core/util/FastStack;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "rootElement"    # Ljava/lang/Object;

    .prologue
    .line 27
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 3
    .param p1, "rootElement"    # Ljava/lang/Object;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 23
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->pointers:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 35
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->current:Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->pointers:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;-><init>(Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$1;)V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->current:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->reassignCurrentElement(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "rootElement"    # Ljava/lang/Object;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 0
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .prologue
    .line 88
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/io/AttributeNameIterator;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    return-object v0
.end method

.method protected abstract getChild(I)Ljava/lang/Object;
.end method

.method protected abstract getChildCount()I
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->current:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getParent()Ljava/lang/Object;
.end method

.method public hasMoreChildren()Z
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->pointers:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;

    .line 60
    .local v0, "pointer":Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;->v:I

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 61
    const/4 v1, 0x1

    .line 63
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveDown()V
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->pointers:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;

    .line 75
    .local v0, "pointer":Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->pointers:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;-><init>(Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$1;)V

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;->v:I

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->getChild(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->current:Ljava/lang/Object;

    .line 79
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader$Pointer;->v:I

    .line 80
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->current:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->reassignCurrentElement(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public moveUp()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->getParent()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->current:Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->pointers:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    .line 70
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->current:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;->reassignCurrentElement(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method protected abstract reassignCurrentElement(Ljava/lang/Object;)V
.end method
