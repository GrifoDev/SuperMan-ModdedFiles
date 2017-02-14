.class public Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static _funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

.field static synthetic class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

.field static synthetic class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

.field static synthetic class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

.field static synthetic class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;

.field static synthetic class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

.field static synthetic class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

.field _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

.field _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

.field xpath:Lcom/sun/org/apache/xpath/internal/XPath;

.field xpathStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sput-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->fixupFunctionTable()V

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.CachedXPathFuncHereAPI"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpathStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpathStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpathStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createXPath(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

    :goto_1
    aput-object v0, v1, v5

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

    :goto_2
    aput-object v0, v1, v6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v7

    const/4 v3, 0x4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

    :goto_3
    aput-object v0, v1, v3

    const/4 v3, 0x5

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    :goto_4
    aput-object v0, v1, v3

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    aput-object p2, v3, v6

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v3, v7

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const/4 v0, 0x5

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    aput-object v5, v3, v0

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/XPath;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    if-eqz v0, :cond_6

    :goto_7
    return-object v0

    :cond_0
    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "javax.xml.transform.SourceLocator"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.utils.PrefixResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "javax.xml.transform.ErrorListener"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "com.sun.org.apache.xpath.internal.compiler.FunctionTable"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    goto :goto_4

    :cond_5
    :try_start_1
    const-string/jumbo v0, "com.sun.org.apache.xpath.internal.XPath"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_6

    :cond_6
    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_7
.end method

.method private static fixupFunctionTable()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v2, v3, v4

    const/4 v4, 0x1

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

    :goto_2
    aput-object v2, v3, v4

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    :goto_3
    const-string/jumbo v4, "installFunction"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_7

    :cond_0
    :goto_4
    move v2, v0

    if-eqz v2, :cond_8

    :cond_1
    :goto_5
    move v1, v2

    :goto_6
    if-nez v1, :cond_d

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_2
    :goto_7
    return-void

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v4, "Registering Here function"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v2, "java.lang.String"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v5, "Error installing function using the static installFunction method"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    :try_start_2
    const-string/jumbo v2, "com.sun.org.apache.xpath.internal.Expression"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

    goto :goto_2

    :cond_6
    const-string/jumbo v2, "com.sun.org.apache.xpath.internal.compiler.FunctionTable"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    goto :goto_3

    :cond_7
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "here"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHere;

    invoke-direct {v5}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHere;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_4

    :cond_8
    :try_start_3
    new-instance v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    aput-object v0, v3, v4

    const/4 v4, 0x1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$Class:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$Class:Ljava/lang/Class;

    :goto_9
    aput-object v0, v3, v4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    :goto_a
    const-string/jumbo v4, "installFunction"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "here"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    :goto_b
    aput-object v0, v4, v5

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "Error installing function using the static installFunction method"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_9
    :try_start_4
    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_8

    :cond_a
    const-string/jumbo v0, "java.lang.Class"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_9

    :cond_b
    const-string/jumbo v0, "com.sun.org.apache.xpath.internal.compiler.FunctionTable"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    goto :goto_a

    :cond_c
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.FuncHere"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :cond_d
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Registered class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v3, " for XPath function \'here()\' function in internal table"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_e
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.FuncHere"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    goto :goto_c

    :cond_f
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Unable to register class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v3, " for XPath function \'here()\' function in internal table"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.FuncHere"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    goto :goto_d
.end method

.method public static getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v3, :cond_2

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpathStr:Ljava/lang/String;

    if-ne p3, v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v1, v2, v0, p4}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "here()"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    :goto_2
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->createXPath(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpathStr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/ClassNotFoundException;

    if-nez v2, :cond_3

    :cond_2
    throw v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FuncHere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "endorsed.jdk1.4.0"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-direct {v0, p2, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;-><init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    goto :goto_1
.end method

.method public eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;

    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    :goto_1
    invoke-direct {v0, p4}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpathStr:Ljava/lang/String;

    if-ne p3, v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v2, v3, v1, v0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-direct {v0, p2, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;-><init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    goto :goto_0

    :cond_1
    check-cast p4, Lorg/w3c/dom/Document;

    invoke-interface {p4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p4

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "here()"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3

    :goto_3
    invoke-direct {p0, p3, v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->createXPath(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->xpathStr:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->reset()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    goto :goto_3
.end method

.method public getFuncHereContext()Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->_funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method
