.class interface abstract Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
.super Ljava/lang/Object;
.source "StAXDocumentHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDocumentHandler;


# virtual methods
.method public abstract cdata(Lmf/javax/xml/stream/events/Characters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract characters(Lmf/javax/xml/stream/events/Characters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract comment(Lmf/javax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract comment(Lmf/javax/xml/stream/events/Comment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract endDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract endDocument(Lmf/javax/xml/stream/events/EndDocument;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract entityReference(Lmf/javax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract entityReference(Lmf/javax/xml/stream/events/EntityReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Lmf/javax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract setIgnoringCharacters(Z)V
.end method

.method public abstract setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V
.end method

.method public abstract startDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract startDocument(Lmf/javax/xml/stream/events/StartDocument;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
