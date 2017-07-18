.class final Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;
.super Ljava/lang/Object;
.source "StAXValidatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StreamHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v3, v3, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v3, v3, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v3, v3, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :cond_0
    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final validate(Lmf/javax/xml/stream/XMLStreamReader;Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Lmf/javax/xml/stream/XMLStreamReader;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v4, "javax.xml.stream.isInterning"

    invoke-interface {p1, v4}, Lmf/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, p2, v3}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->setup(Lmf/javax/xml/stream/Location;Lmf/javax/xml/transform/stax/StAXResult;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :goto_1
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v1

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->endDocument(Lmf/javax/xml/stream/XMLStreamReader;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/xml/sax/SAXException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "StAXIllegalInitialState"

    invoke-static {v1, v2, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v2, v2, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v2

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v2

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->startDocument(Lmf/javax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->processingInstruction(Lmf/javax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->comment(Lmf/javax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_2

    :pswitch_8
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->entityReference(Lmf/javax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_2

    :pswitch_9
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    const-string/jumbo v0, "javax.xml.stream.entities"

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->processEntityDeclarations(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v1

    if-lez v1, :cond_4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method
