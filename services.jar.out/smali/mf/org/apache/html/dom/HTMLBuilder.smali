.class public Lmf/org/apache/html/dom/HTMLBuilder;
.super Ljava/lang/Object;
.source "HTMLBuilder.java"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field protected _current:Lmf/org/apache/xerces/dom/ElementImpl;

.field protected _document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

.field private _done:Z

.field private _ignoreWhitespace:Z

.field protected _preRootNodes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_ignoreWhitespace:Z

    iput-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM009 State error: character data found outside of root element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM010 State error: character data found outside of root element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-nez v0, :cond_1

    iput-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM002 State error: document never started or missing document element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM003 State error: document ended before end of document element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM007 State error: endElement called with no current node."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HTM008 State error: mismatch in closing tag name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v2, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    goto :goto_0
.end method

.method public getHTMLDocument()Lmf/org/w3c/dom/html/HTMLDocument;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_ignoreWhitespace:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    new-instance v1, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;

    invoke-direct {v1, v2, p1, p2}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    iput-boolean v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM001 State error: startDocument fired twice on one builder."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_7

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM004 Argument \'tagName\' is null."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM005 State error: Document.getDocumentElement returns null."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_5

    iget-object v4, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Node;

    invoke-virtual {v4, v1, v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move v1, v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    move-object v1, v0

    goto :goto_0

    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM006 State error: startElement called after end of document element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
