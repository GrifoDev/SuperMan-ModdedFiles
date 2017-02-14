.class public abstract Lmf/org/apache/xerces/util/ErrorHandlerProxy;
.super Ljava/lang/Object;
.source "ErrorHandlerProxy.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    iget-object v0, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    iget-object v0, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0
.end method

.method protected abstract getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    iget-object v0, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0
.end method
