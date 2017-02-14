.class public Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;
.super Ljava/lang/Object;
.source "DOMErrorHandlerWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
.implements Lmf/org/w3c/dom/DOMErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;
    }
.end annotation


# instance fields
.field eStatus:Z

.field public fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected final fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected final fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    new-instance v0, Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-direct {v0, v1, v1}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DOMErrorHandler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    new-instance v0, Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-direct {v0, v1, v1}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method private printError(Lmf/org/w3c/dom/DOMError;)V
    .locals 4

    invoke-interface {p1}, Lmf/org/w3c/dom/DOMError;->getSeverity()S

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "FatalError"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/DOMError;->getLocation()Lmf/org/w3c/dom/DOMLocator;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lmf/org/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "Warning"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "Error"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lmf/org/w3c/dom/DOMLocator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lmf/org/w3c/dom/DOMLocator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lmf/org/w3c/dom/DOMLocator;->getByteOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lmf/org/w3c/dom/DOMLocator;->getUtf16Offset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-interface {v0}, Lmf/org/w3c/dom/DOMLocator;->getRelatedNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_2
    invoke-interface {v0}, Lmf/org/w3c/dom/DOMLocator;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    const/4 v1, 0x2

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_1
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/XMLErrorCode;->setValues(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->getDOMErrorType(Lmf/org/apache/xerces/util/XMLErrorCode;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    if-nez v0, :cond_0

    :goto_0
    iput-object p2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    move-object p2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_2
.end method

.method public getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    return-object v0
.end method

.method public handleError(Lmf/org/w3c/dom/DOMError;)Z
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->printError(Lmf/org/w3c/dom/DOMError;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    return v0
.end method

.method public setErrorHandler(Lmf/org/w3c/dom/DOMErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    const/4 v1, 0x1

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_1
.end method
