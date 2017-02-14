.class public Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;
.super Lmf/org/apache/xerces/parsers/DOMParserImpl;
.source "DOMASBuilderImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom3/as/DOMASBuilder;


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method private addGrammars(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 4

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/ASModelImpl;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/ASModelImpl;->setGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/dom/ASModelImpl;->addASModel(Lmf/org/apache/xerces/dom3/as/ASModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initGrammarBucket()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucketRecurse(Lmf/org/apache/xerces/dom/ASModelImpl;)V

    goto :goto_0
.end method

.method private initGrammarBucketRecurse(Lmf/org/apache/xerces/dom/ASModelImpl;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getGrammar()Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucketRecurse(Lmf/org/apache/xerces/dom/ASModelImpl;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getGrammar()Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initGrammarPool(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getGrammar()Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    aput-object v2, v1, v0

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarPool(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    aget-object v2, v1, v0

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAbstractSchema()Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    return-object v0
.end method

.method parseASInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucket()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->lockGrammarPool()V

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseXMLSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->unlockGrammarPool()V

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/ASModelImpl;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->addGrammars(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    goto :goto_1
.end method

.method public parseASInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->parseASInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/dom3/as/ASModel;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public parseASURI(Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->parseASInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/dom3/as/ASModel;

    move-result-object v0

    return-object v0
.end method

.method public setAbstractSchema(Lmf/org/apache/xerces/dom3/as/ASModel;)V
    .locals 3

    check-cast p1, Lmf/org/apache/xerces/dom/ASModelImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v1, v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarPool(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_1
.end method
