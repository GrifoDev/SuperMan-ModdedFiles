.class public Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;
.super Lmf/org/apache/xerces/parsers/XML11Configuration;
.source "XIncludeAwareParserConfiguration.java"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"


# instance fields
.field protected fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fXIncludeEnabled:Z

.field protected fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field protected fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/xinclude-handler"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/namespace-context"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    const-string/jumbo v0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-ne v0, v1, :cond_7

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-ne v0, v1, :cond_3

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eqz v0, :cond_4

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected configureXML11Pipeline()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-ne v0, v1, :cond_7

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-ne v0, v1, :cond_3

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eqz v0, :cond_4

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->getFeature0(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    return v0

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    return v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    return-void
.end method
