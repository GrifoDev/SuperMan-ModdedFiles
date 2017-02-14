.class public Lmf/org/apache/xml/serialize/HTMLSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "HTMLSerializer.java"


# static fields
.field public static final XHTMLNamespace:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# instance fields
.field private _xhtml:Z

.field private fUserXHTMLNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "html"

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "html"

    const-string/jumbo v1, "ISO-8859-1"

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, v2, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "html"

    const-string/jumbo v1, "ISO-8859-1"

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, v2, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "html"

    const-string/jumbo v1, "ISO-8859-1"

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, v2, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method protected constructor <init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 1

    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x3e

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-object v2, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_0
    iget-object v0, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_c

    :goto_1
    if-nez v0, :cond_d

    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-nez v2, :cond_e

    :cond_3
    :goto_2
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v2, :cond_f

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "</"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object v1, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    if-nez v0, :cond_10

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_5
    :goto_5
    iput-boolean v4, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_6
    return-void

    :cond_6
    iget-object v2, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v0, v1, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    iget-object v3, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_9
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_a

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v2, :cond_b

    :goto_7
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "</"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object v1, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, " />"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "]]>"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_1

    :cond_d
    invoke-static {v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isOnlyOpening(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_e
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_2

    :cond_f
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "]]>"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v2, "A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "TD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto/16 :goto_6
.end method

.method protected escapeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->fromChar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x3e

    const/16 v11, 0x22

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v7

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, v7, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v0, :cond_6

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-nez v0, :cond_7

    :cond_0
    :goto_1
    iget-boolean v4, v7, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v8

    if-nez v8, :cond_b

    :cond_1
    invoke-static {v6}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v4

    :goto_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_2
    invoke-virtual {p0, v10, v10, v6, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const-string/jumbo v1, "A"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_3
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_4
    const-string/jumbo v1, "SCRIPT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_4
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v1, :cond_18

    iput-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    :goto_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_6

    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_7
    iget-boolean v0, v7, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, v7, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    :cond_9
    iget-boolean v0, v7, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v0, :cond_8

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move v2, v3

    :goto_7
    invoke-interface {v8}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v8, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v0, :cond_e

    if-eqz v1, :cond_10

    move-object v0, v1

    :goto_9
    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_d
    invoke-static {v6, v9}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v6, v9}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v9, "=\""

    invoke-virtual {v1, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_8

    :cond_e
    if-eqz v1, :cond_f

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v9, "=\""

    invoke-virtual {v0, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "=\"\""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    const-string/jumbo v0, ""

    goto :goto_9

    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v9, "=\""

    invoke-virtual {v1, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_8

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    move v0, v5

    goto/16 :goto_3

    :cond_15
    invoke-static {v6}, Lmf/org/apache/xml/serialize/HTMLdtd;->isEmptyTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_a
    iput-boolean v5, v7, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v3, v7, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_b
    return-void

    :cond_16
    const-string/jumbo v1, "TD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v1, "STYLE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_5

    :cond_18
    iput-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    goto/16 :goto_5

    :cond_19
    invoke-virtual {p0, v10, v10, v6}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " />"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_a

    :cond_1b
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto :goto_b
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "html"

    const-string/jumbo v1, "ISO-8859-1"

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public setXHTMLNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x3e

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->serializePreRoot()V

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!DOCTYPE HTML SYSTEM "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "-//W3C//DTD HTML 4.01//EN"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string/jumbo v0, "http://www.w3.org/TR/html4/strict.dtd"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "-//W3C//DTD XHTML 1.0 Strict//EN"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string/jumbo v0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!DOCTYPE HTML PUBLIC "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v0, :cond_9

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!DOCTYPE html PUBLIC "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "                      "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!DOCTYPE html SYSTEM "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v3

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, v3, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v0, :cond_c

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-nez v0, :cond_d

    :cond_0
    :goto_1
    iget-boolean v4, v3, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez p1, :cond_10

    :cond_1
    move v0, v2

    :goto_2
    if-nez p3, :cond_11

    :cond_2
    if-nez v0, :cond_12

    move-object v3, p2

    :goto_3
    move v7, v1

    move-object v6, v3

    :goto_4
    if-eqz v0, :cond_15

    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_3
    move-object v5, p2

    :cond_4
    :goto_5
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x3c

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-nez p4, :cond_19

    :cond_5
    if-nez v5, :cond_21

    :cond_6
    move v2, v4

    :goto_7
    if-nez v7, :cond_22

    :cond_7
    invoke-virtual {p0, p1, p2, v6, v2}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    if-nez v5, :cond_24

    :goto_8
    if-nez v5, :cond_27

    :goto_9
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string/jumbo v2, "NoWriterSupplied"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_9
    :try_start_1
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_b

    :cond_a
    move-object v0, p3

    :goto_a
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p2

    goto :goto_a

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_d
    iget-boolean v0, v3, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, v3, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    :cond_f
    iget-boolean v0, v3, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v0, :cond_e

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    move v7, v2

    move-object v6, p3

    goto/16 :goto_4

    :cond_12
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    :cond_13
    move-object v3, p2

    goto/16 :goto_3

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_15
    move-object v5, v6

    goto/16 :goto_5

    :cond_16
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_5

    :cond_17
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_18
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v8, "=\"\""

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v2, v2, 0x1

    :cond_19
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_1b

    :cond_1a
    if-eqz v3, :cond_18

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v9, "=\""

    invoke-virtual {v8, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x22

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_b

    :cond_1b
    if-nez v0, :cond_1a

    if-eqz v3, :cond_1d

    :goto_c
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v9}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v9

    if-eqz v9, :cond_1e

    :cond_1c
    invoke-static {v6, v8}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-static {v6, v8}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v9, "=\""

    invoke-virtual {v8, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x22

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_b

    :cond_1d
    const-string/jumbo v3, ""

    goto :goto_c

    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1c

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_b

    :cond_1f
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v9, "=\""

    invoke-virtual {v8, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x22

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_b

    :cond_20
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_21
    invoke-static {v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    goto/16 :goto_7

    :cond_22
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v7, "xmlns:"

    invoke-virtual {v4, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "=\""

    invoke-virtual {v0, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_d

    :cond_23
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "xmlns=\""

    invoke-virtual {v0, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_d

    :cond_24
    const-string/jumbo v1, "A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_25
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_8

    :cond_26
    const-string/jumbo v1, "TD"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_8

    :cond_27
    const-string/jumbo v1, "SCRIPT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_28
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    goto/16 :goto_9

    :cond_29
    const-string/jumbo v1, "STYLE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_9

    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v3, :cond_6

    :goto_0
    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-nez v3, :cond_7

    :cond_0
    :goto_1
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-nez p2, :cond_c

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const-string/jumbo v1, "A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_4
    const-string/jumbo v1, "SCRIPT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_3
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    :goto_5
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string/jumbo v2, "NoWriterSupplied"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_5
    :try_start_1
    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_7
    iget-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    :cond_9
    iget-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v3, :cond_8

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "=\"\""

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    :cond_c
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p2, v2}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v5, :cond_e

    if-eqz v3, :cond_f

    :goto_7
    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v5}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_d
    invoke-static {p1, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static {p1, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "=\""

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_e
    if-eqz v3, :cond_b

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "=\""

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_f
    const-string/jumbo v3, ""

    goto :goto_7

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_d

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "=\""

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_6

    :cond_12
    iget-object v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    move v0, v1

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v1, "TD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v1, "STYLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method
