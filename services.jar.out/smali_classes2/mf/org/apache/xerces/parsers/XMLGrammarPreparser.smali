.class public Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;
.super Ljava/lang/Object;
.source "XMLGrammarPreparser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    }
.end annotation


# static fields
.field private static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field private static final KNOWN_LOADERS:Ljava/util/Hashtable;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private final fLoaders:Ljava/util/Hashtable;

.field protected fLocale:Ljava/util/Locale;

.field private fModCount:I

.field protected final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "mf.org.apache.xerces.impl.xs.XMLSchemaLoader"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string/jumbo v1, "http://www.w3.org/TR/REC-xml"

    const-string/jumbo v2, "mf.org.apache.xerces.impl.dtd.XMLDTDLoader"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->setLocale(Ljava/util/Locale;)V

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-void
.end method

.method private clearModCounts()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iput v2, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    invoke-interface {v0, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object v0
.end method

.method public getLoader(Ljava/lang/String;)Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    invoke-interface {v0, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public preparseGrammar(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    iget v2, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    iget v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-interface {v1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v2, :cond_2

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    iput v2, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public registerPreparser(Ljava/lang/String;Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    invoke-direct {v1, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    return v3
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-ltz v0, :cond_1

    :goto_1
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    goto :goto_1
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-ltz v0, :cond_1

    :goto_1
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    goto :goto_1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method
