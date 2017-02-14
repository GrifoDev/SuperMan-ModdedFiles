.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static _alreadyInitialized:Z

.field static _resolverVector:Ljava/util/List;

.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

.field protected _storage:Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_alreadyInitialized:Z

    sput-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.KeyResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

    goto :goto_0
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

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_storage:Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

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

.method public static final getInstance(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    new-array v1, v7, [Ljava/lang/Object;

    if-nez p0, :cond_7

    :cond_0
    const-string/jumbo v0, "null"

    :goto_1
    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "utils.resolver.noClass"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v0, p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-array v1, v7, [Ljava/lang/Object;

    if-nez p0, :cond_4

    :cond_3
    const-string/jumbo v0, "null"

    :goto_3
    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "utils.resolver.noClass"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "check resolvability by class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static init()V
    .locals 2

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_alreadyInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_alreadyInitialized:Z

    goto :goto_0
.end method

.method public static item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v1, "utils.resolver.noClass"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static length()I
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static register(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static registerAtStart(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverVector:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static resolveStatic(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->getInstance(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineGetPropertyKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public resolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public resolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public resolverClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public understandsProperty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->_resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->understandsProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
