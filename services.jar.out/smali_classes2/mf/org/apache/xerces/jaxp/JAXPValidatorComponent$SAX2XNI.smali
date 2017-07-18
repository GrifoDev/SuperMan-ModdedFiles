.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SAX2XNI"
.end annotation


# instance fields
.field private final fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    return-void
.end method

.method private aug()Lmf/org/apache/xerces/xni/Augmentations;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$2(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$2(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$3(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-object v0
.end method

.method private elementAug()Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    return-object v0
.end method

.method private handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    return-object v0
.end method

.method private toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/QName;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v1, p2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v3, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lmf/org/apache/xerces/xni/QName;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-nez v1, :cond_1

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    return-object v1

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/xml/sax/SAXException;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    new-instance v1, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v0

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v1

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v0

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    new-instance v1, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v0

    throw v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v0, p4}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$0(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$1(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object v2

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->elementAug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v0

    throw v0
.end method
