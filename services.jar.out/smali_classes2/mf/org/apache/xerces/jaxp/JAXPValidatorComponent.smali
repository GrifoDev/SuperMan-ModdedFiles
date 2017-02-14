.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.super Lmf/org/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;
.source "JAXPValidatorComponent.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;,
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;,
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;
    }
.end annotation


# static fields
.field private static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;


# instance fields
.field private fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field private fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

.field private fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

.field private final typeInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

.field private final validator:Lmf/javax/xml/validation/ValidatorHandler;

.field private final xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/validation/ValidatorHandler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {p1}, Lmf/javax/xml/validation/ValidatorHandler;->getTypeInfoProvider()Lmf/javax/xml/validation/TypeInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->typeInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-virtual {v0, v1}, Lmf/javax/xml/validation/ValidatorHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->setSide(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    new-instance v1, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;

    invoke-direct {v1, p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    invoke-virtual {v0, v1}, Lmf/javax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {v1, v0}, Lmf/javax/xml/validation/ValidatorHandler;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->updateAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    return-object v0
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-object v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method private symbolize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAttributes(Lorg/xml/sax/Attributes;)V
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    new-instance v7, Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v8, v4, v9}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v4, v0, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-void
.end method
