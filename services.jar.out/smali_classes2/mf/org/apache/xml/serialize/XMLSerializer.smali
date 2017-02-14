.class public Lmf/org/apache/xml/serialize/XMLSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "XMLSerializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field private fPreserveSpace:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    invoke-direct {p2, v0, v2, v1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    invoke-direct {p2, v0, v2, v1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    invoke-direct {p1, v0, v2, v1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method private extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x5

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const-string/jumbo v2, ""

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "=\""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_1
    const-string/jumbo v0, "xml:space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->features:S

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p4}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :cond_4
    const-string/jumbo v0, "preserve"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "=\""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_3
    :goto_2
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    :cond_4
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_3
    move-object v3, v4

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The replacement text of the entity node \'"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\' contains an element node \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\' with an undeclared prefix \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    move v1, v2

    :goto_4
    invoke-interface {v5}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    :cond_9
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "The replacement text of the entity node \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' contains an element node \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' with an attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' an undeclared prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    goto/16 :goto_3
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v1, :cond_2

    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-nez v1, :cond_3

    :cond_0
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "</"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object v0, v0, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "/>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "]]>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    :cond_5
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto :goto_3
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "lt"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "gt"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "quot"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "apos"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "amp"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    :cond_0
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_3
    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_5

    const/16 v4, 0x26

    if-eq v3, v4, :cond_6

    const/16 v4, 0x22

    if-eq v3, v4, :cond_7

    const/16 v4, 0x20

    if-ge v3, v4, :cond_8

    :cond_4
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_9
    return-void
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez p2, :cond_1

    :goto_0
    if-ge v0, v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p3, :cond_6

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-ge v0, v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is an invalid XML character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is an invalid XML character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method protected printText([CIIZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    if-nez p4, :cond_1

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_7

    add-int/lit8 v1, p2, 0x1

    aget-char v2, p1, p2

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p5, :cond_6

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    move p3, v0

    move p2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v1, 0x1

    aget-char v0, p1, v1

    invoke-virtual {p0, v2, v0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :cond_1
    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_7

    add-int/lit8 v1, p2, 0x1

    aget-char v2, p1, p2

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p5, :cond_3

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    move p3, v0

    move p2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, v0, -0x1

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The character \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' is an invalid XML character"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move p2, v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move p3, v0

    move p2, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p3, v0, -0x1

    if-gtz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The character \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' is an invalid XML character"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move p2, v1

    goto :goto_0

    :cond_5
    add-int/lit8 p2, v1, 0x1

    aget-char v0, p1, v1

    invoke-virtual {p0, v2, v0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move p3, v0

    move p2, v1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x26

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&lt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&amp;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&gt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_6

    :goto_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public reset()Z
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-nez v0, :cond_2

    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v9

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v0, :cond_4

    :goto_1
    iget-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_5

    :goto_2
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-nez v0, :cond_6

    :cond_0
    :goto_3
    iget-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasAttributes()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v1

    move-object v1, v0

    :goto_4
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    move v5, v0

    :goto_5
    if-ge v5, v2, :cond_12

    invoke-interface {v1, v5}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    :cond_1
    :goto_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "]]>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    goto :goto_2

    :cond_6
    iget-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_3

    :cond_8
    iget-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v0, :cond_7

    iget-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-nez v0, :cond_7

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    move v2, v1

    move-object v1, v0

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    const/4 v0, 0x0

    move v4, v0

    :goto_7
    if-ge v4, v2, :cond_35

    invoke-interface {v1, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    :goto_8
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v6

    invoke-direct {p0, v5, v3, v6, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_b
    const-string/jumbo v3, ""

    goto :goto_8

    :cond_c
    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    :goto_9
    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    :cond_d
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_a
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v4, v6, :cond_11

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_e
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_9

    :cond_f
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "CantBindXMLNS"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string/jumbo v2, "SerializationStopped"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_11
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v0, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_12
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_17

    :cond_13
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    :goto_b
    if-nez v3, :cond_18

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    :cond_14
    :goto_c
    const/4 v0, 0x0

    move v5, v0

    :goto_d
    if-ge v5, v2, :cond_35

    invoke-interface {v1, v5}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    :cond_15
    move-object v7, v3

    :goto_e
    if-eqz v6, :cond_20

    :goto_f
    if-nez v7, :cond_21

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v3

    invoke-direct {p0, v4, v6, v3, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    :cond_16
    :goto_10
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_d

    :cond_17
    if-eqz v0, :cond_13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v0, 0x0

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    goto :goto_b

    :cond_18
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1a

    :cond_19
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_11
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v4, v3, :cond_14

    iget-boolean v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-nez v4, :cond_1b

    :goto_12
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v0, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v0, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_1b
    invoke-direct {p0, v0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "NullLocalElementName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string/jumbo v2, "SerializationStopped"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-nez v0, :cond_1e

    :goto_13
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    :cond_1e
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_15

    const/4 v3, 0x0

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object v7, v3

    goto/16 :goto_e

    :cond_20
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_f

    :cond_21
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    iget-object v10, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v10, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_14
    iget-object v10, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v7, :cond_27

    :cond_22
    iget-object v11, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v11, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v11, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v12, :cond_2c

    :cond_23
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v11, v7}, Lmf/org/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2d

    :cond_24
    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v11, :cond_2e

    :cond_25
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NS"

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v3, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_15
    iget-object v11, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v11, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2f

    iget-object v11, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NS"

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v13, v4

    move-object v4, v3

    move v3, v13

    goto :goto_15

    :cond_26
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_14

    :cond_27
    sget-object v11, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_29

    :cond_28
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_16
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v4, :cond_2a

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v0, :cond_16

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_2a
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    if-nez v3, :cond_16

    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-nez v3, :cond_2b

    :goto_17
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3, v0, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_10

    :cond_2b
    invoke-direct {p0, v0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    if-ne v11, v7, :cond_23

    move-object v3, v6

    :goto_18
    if-eqz v3, :cond_31

    :goto_19
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v6

    invoke-direct {p0, v4, v3, v6, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_10

    :cond_2d
    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v11, v12, :cond_24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v6

    goto :goto_18

    :cond_2e
    iget-object v11, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v11, v3}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_25

    :goto_1a
    iget-boolean v10, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-nez v10, :cond_30

    :goto_1b
    iget-object v10, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v10, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v10, v3, v6}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v10, v3, v7}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object v3, v6

    goto :goto_18

    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    goto :goto_1a

    :cond_30
    invoke-direct {p0, v3, v7}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_31
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_19

    :cond_32
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v3, :cond_34

    :cond_33
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v3

    invoke-direct {p0, v4, v6, v3, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_10

    :cond_34
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NullLocalAttrName"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v3, v7, v10}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    const/4 v10, 0x0

    invoke-virtual {p0, v3, v7, v10, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v3, v7}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v3

    if-nez v3, :cond_33

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string/jumbo v2, "SerializationStopped"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-nez v0, :cond_39

    :goto_1c
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "/>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 v0, 0x0

    iput-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    const/4 v0, 0x0

    iput-boolean v0, v9, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_3a

    :goto_1d
    return-void

    :cond_36
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v8, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1, v8}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1, v8}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_1e
    if-eqz v0, :cond_37

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1e

    :cond_37
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-nez v0, :cond_38

    :goto_1f
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_38
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    goto :goto_1f

    :cond_39
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    goto :goto_1c

    :cond_3a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto :goto_1d
.end method

.method public setNamespaces(Z)V
    .locals 1

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    goto :goto_0
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x22

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializePreRoot()V

    return-void

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitXMLDeclaration()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v2, :cond_7

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "<!DOCTYPE "

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, " ["

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "]>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "<?xml version=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getStandalone()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    :goto_4
    const-string/jumbo v3, "?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string/jumbo v4, " encoding=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string/jumbo v3, " standalone=\"yes\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "<!DOCTYPE "

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, " SYSTEM "

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_5
    if-nez v1, :cond_c

    :cond_8
    :goto_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, " PUBLIC "

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-nez v2, :cond_b

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, " ["

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v0, :cond_9

    :goto_0
    iget-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_a

    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-nez v0, :cond_b

    :cond_0
    :goto_2
    iget-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    invoke-direct {p0, p4}, Lmf/org/apache/xml/serialize/XMLSerializer;->extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object v5

    if-nez p3, :cond_e

    :cond_1
    if-eqz p2, :cond_f

    if-nez p1, :cond_10

    :cond_2
    move-object v2, p2

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-nez v5, :cond_15

    move v3, v0

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_20

    :cond_3
    invoke-virtual {p0, p1, p2, v2, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    if-nez p2, :cond_22

    :cond_4
    move-object v0, v2

    :goto_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_5
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "NoWriterSupplied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_6
    :try_start_1
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_8

    :cond_7
    move-object v0, p3

    :goto_6
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p2

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "]]>"

    invoke-virtual {v0, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    goto :goto_1

    :cond_b
    iget-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_2

    :cond_d
    iget-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v0, :cond_c

    iget-boolean v0, v2, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-nez v0, :cond_c

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p3

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "NoName"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    :cond_11
    move-object v2, p2

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_13
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {v5, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    :cond_14
    move-object v4, v3

    :goto_7
    invoke-interface {v5, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    :goto_8
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v7, "=\""

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    const-string/jumbo v6, "xml:space"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    :goto_9
    add-int/lit8 v1, v1, 0x1

    :cond_15
    invoke-interface {v5}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_13

    move v3, v0

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v5, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    :cond_17
    move-object v4, v3

    goto :goto_7

    :cond_18
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_17

    if-nez p1, :cond_1b

    :cond_19
    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    :cond_1a
    move-object v4, v3

    goto :goto_7

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move-object v4, v3

    goto :goto_7

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_7

    :cond_1d
    const-string/jumbo v3, ""

    goto :goto_8

    :cond_1e
    const-string/jumbo v0, "preserve"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v0

    goto :goto_9

    :cond_1f
    const/4 v0, 0x1

    goto :goto_9

    :cond_20
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v6, "xmlns:"

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "=\""

    invoke-virtual {v0, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_a

    :cond_21
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "xmlns=\""

    invoke-virtual {v0, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_a

    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_5
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_4

    :goto_0
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v2, :cond_5

    :goto_1
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-nez v2, :cond_6

    :cond_0
    :goto_2
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-nez p2, :cond_9

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_2
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "NoWriterSupplied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "]]>"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    goto :goto_1

    :cond_6
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_2

    :cond_8
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v2, :cond_7

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-nez v2, :cond_7

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    :goto_4
    const-string/jumbo v4, "xml:space"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_5
    add-int/lit8 v1, v1, 0x1

    :cond_9
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "=\""

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_b
    const-string/jumbo v0, "preserve"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method
