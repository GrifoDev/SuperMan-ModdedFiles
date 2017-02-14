.class final Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;
.super Ljava/lang/Object;
.source "DOMValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lmf/org/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fCharBuffer:[C

.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fCurrentElement:Lmf/org/w3c/dom/Node;

.field private final fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

.field private final fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

.field private final fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

.field private fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

.field final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private fEntities:Lmf/org/w3c/dom/NamedNodeMap;

.field private final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

.field private fRoot:Lmf/org/w3c/dom/Node;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final fTempString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;-><init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;-><init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/SymbolTable;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-object v0
.end method

.method private beginNode(Lmf/org/w3c/dom/Node;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->processAttributes(Lmf/org/w3c/dom/NamedNodeMap;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/Text;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->characters(Lmf/org/w3c/dom/Text;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/CDATASection;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->cdata(Lmf/org/w3c/dom/CDATASection;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->processingInstruction(Lmf/org/w3c/dom/ProcessingInstruction;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/Comment;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->comment(Lmf/org/w3c/dom/Comment;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->doctypeDecl(Lmf/org/w3c/dom/DocumentType;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v2, :cond_2

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v3, :cond_3

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-nez v4, :cond_4

    :cond_0
    move-object v0, v1

    :goto_3
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private finishNode(Lmf/org/w3c/dom/Node;)V
    .locals 3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    goto :goto_0
.end method

.method private processAttributes(Lmf/org/w3c/dom/NamedNodeMap;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_5

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v5, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    invoke-virtual {v5, v3, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v0, v5, :cond_1

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    :goto_3
    invoke-virtual {v5, v6, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    :goto_4
    invoke-virtual {v5, v6, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    return-void
.end method

.method private sendCharactersToValidator(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    and-int/lit16 v0, v2, 0x3ff

    if-gtz v0, :cond_2

    :goto_0
    if-ge v0, v2, :cond_0

    add-int/lit16 v1, v0, 0x400

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {p1, v0, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v5, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v3, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {p1, v5, v0, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {v1, v3, v5, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v3, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method private setupDOMResultHandler(Lmf/javax/xml/transform/dom/DOMSource;Lmf/javax/xml/transform/dom/DOMResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p2}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newInstance()Lmf/javax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Lmf/javax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmf/javax/xml/parsers/DocumentBuilder;->newDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V
    :try_end_0
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private setupEntityMap(Lmf/org/w3c/dom/Document;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    return-void

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    return-void
.end method

.method private useIsSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v0, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    :cond_0
    return v3

    :cond_1
    return v3

    :cond_2
    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string/jumbo v1, "Core"

    const-string/jumbo v2, "3.0"

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private validate(Lmf/org/w3c/dom/Node;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->useIsSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    move-object v0, p1

    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->beginNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :cond_1
    :goto_1
    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->finishNode(Lmf/org/w3c/dom/Node;)V

    if-eq p1, v2, :cond_0

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    if-nez v2, :cond_5

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_4
    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Node;->isSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->finishNode(Lmf/org/w3c/dom/Node;)V

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method getCurrentElement()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Entity;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    instance-of v1, p2, Lmf/javax/xml/transform/dom/DOMResult;

    if-eqz v1, :cond_2

    :cond_0
    check-cast p1, Lmf/javax/xml/transform/dom/DOMSource;

    check-cast p2, Lmf/javax/xml/transform/dom/DOMResult;

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "SourceResultMismatch"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->reset()V

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    :try_start_0
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->setupEntityMap(Lmf/org/w3c/dom/Document;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->setupDOMResultHandler(Lmf/javax/xml/transform/dom/DOMSource;Lmf/javax/xml/transform/dom/DOMResult;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v4, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Lmf/org/w3c/dom/Node;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v1, v7}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Document;

    move-object v1, v0
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-nez v2, :cond_5

    :goto_2
    throw v1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v2, v7}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    goto :goto_2
.end method
