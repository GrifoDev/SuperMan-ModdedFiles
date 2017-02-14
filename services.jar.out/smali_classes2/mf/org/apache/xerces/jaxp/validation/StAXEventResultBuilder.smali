.class final Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.super Ljava/lang/Object;
.source "StAXEventResultBuilder.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;,
        Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;


# instance fields
.field private final fAttrName:Lmf/org/apache/xerces/xni/QName;

.field private final fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

.field private fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

.field private fIgnoreChars:Z

.field private fInCDATA:Z

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private final fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-static {}, Lmf/javax/xml/stream/XMLEventFactory;->newInstance()Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-object v0
.end method

.method private getAttributeIterator(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;
    .locals 1

    if-gtz p2, :cond_0

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;Lmf/org/apache/xerces/xni/XMLAttributes;I)V

    goto :goto_0
.end method

.method private getNamespaceIterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;I)V

    goto :goto_0
.end method


# virtual methods
.method public cdata(Lmf/javax/xml/stream/events/Characters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public characters(Lmf/javax/xml/stream/events/Characters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/javax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/javax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public comment(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/javax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Lmf/javax/xml/stream/events/Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public comment(Lmf/javax/xml/stream/events/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-virtual {v1}, Lmf/javax/xml/stream/XMLEventFactory;->createEndDocument()Lmf/javax/xml/stream/events/EndDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventWriter;->flush()V

    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/events/EndDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventWriter;->flush()V

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->getCurrentEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getNamespaceIterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/javax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v1, v0}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->getEntityDeclaration(Ljava/lang/String;)Lmf/javax/xml/stream/events/EntityDeclaration;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lmf/javax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Lmf/javax/xml/stream/events/EntityDeclaration;)Lmf/javax/xml/stream/events/EntityReference;

    move-result-object v0

    invoke-interface {v1, v0}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/events/EntityReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-virtual {v2, v3, v0}, Lmf/javax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/ProcessingInstruction;

    move-result-object v0

    invoke-interface {v1, v0}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    return-void
.end method

.method public setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    return-void

    :cond_0
    invoke-virtual {p1}, Lmf/javax/xml/transform/stax/StAXResult;->getXMLEventWriter()Lmf/javax/xml/stream/XMLEventWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    if-nez v1, :cond_0

    const-string/jumbo v1, "UTF-8"

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "1.0"

    :cond_1
    invoke-virtual {v4, v1, v0, v2}, Lmf/javax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lmf/javax/xml/stream/events/StartDocument;

    move-result-object v0

    invoke-interface {v3, v0}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/events/StartDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getAttributeIterator(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getNamespaceIterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lmf/javax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;)Lmf/javax/xml/stream/events/StartElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->getCurrentEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v1, v0}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    return-void

    :cond_2
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
