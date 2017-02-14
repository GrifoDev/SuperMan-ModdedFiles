.class public Lmf/org/apache/xerces/util/ErrorHandlerWrapper;
.super Ljava/lang/Object;
.source "ErrorHandlerWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fErrorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method protected static createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;
    .locals 7

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v5

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    return-object v0
.end method

.method protected static createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .locals 5

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v3

    new-instance v4, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;

    invoke-direct {v4, v0, v1, v3, v2}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method protected static createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v0

    throw v0
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v0

    throw v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v0

    throw v0
.end method
