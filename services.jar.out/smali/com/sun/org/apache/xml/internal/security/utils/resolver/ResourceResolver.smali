.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static _alreadyInitialized:Z

.field static _resolverVector:Ljava/util/List;

.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _individualResolverVector:Ljava/util/List;

.field protected _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_alreadyInitialized:Z

    sput-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverVector:Ljava/util/List;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_individualResolverVector:Ljava/util/List;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_individualResolverVector:Ljava/util/List;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    return-void
.end method

.method private canResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineCanResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method public static final getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    if-nez p0, :cond_4

    const-string/jumbo v0, "null"

    :goto_1
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;

    const-string/jumbo v2, "utils.resolver.noClass"

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    if-nez v0, :cond_3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "check resolvability by class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->canResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static final getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;Ljava/util/List;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    if-nez p2, :cond_3

    :cond_0
    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "I was asked to create a ResourceResolver and got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, " extra resolvers to my existing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " system-wide resolvers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_3
    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->canResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v0

    :cond_6
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "check resolvability by class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static init()V
    .locals 2

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_alreadyInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverVector:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_alreadyInitialized:Z

    goto :goto_0
.end method

.method public static register(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Error loading resolver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " disabling it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Error loading resolver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " disabling it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerAtStart(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverVector:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static resolveStatic(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addProperties(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineAddProperies(Ljava/util/Map;)V

    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetPropertyKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public understandsProperty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->understandsProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
