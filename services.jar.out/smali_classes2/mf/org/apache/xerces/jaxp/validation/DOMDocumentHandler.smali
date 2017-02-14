.class interface abstract Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;
.super Ljava/lang/Object;
.source "DOMDocumentHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDocumentHandler;


# virtual methods
.method public abstract cdata(Lmf/org/w3c/dom/CDATASection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract characters(Lmf/org/w3c/dom/Text;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract comment(Lmf/org/w3c/dom/Comment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract doctypeDecl(Lmf/org/w3c/dom/DocumentType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Lmf/org/w3c/dom/ProcessingInstruction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V
.end method

.method public abstract setIgnoringCharacters(Z)V
.end method
