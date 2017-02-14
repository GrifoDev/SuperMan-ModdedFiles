.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;
.source "Unknown"


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _rsaKeyElement:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.RSAKeyValueResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

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


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    const-string/jumbo v0, "KeyValue"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "RSAKeyValue"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_0
    return v4

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Can I resolve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "RSAKeyValue"

    invoke-static {v0, v1, v4}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    return v5

    :cond_4
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    return v5
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    :goto_0
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    invoke-direct {v0, v1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v4

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->_rsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    return-object v4

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "XMLSecurityException"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
