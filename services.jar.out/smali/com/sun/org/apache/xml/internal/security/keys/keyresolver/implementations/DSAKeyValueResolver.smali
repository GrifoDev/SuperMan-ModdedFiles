.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;
.source "Unknown"


# instance fields
.field private _dsaKeyElement:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->_dsaKeyElement:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "KeyValue"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "DSAKeyValue"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_3

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "DSAKeyValue"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->_dsaKeyElement:Lorg/w3c/dom/Element;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->_dsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    return v3

    :cond_3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->_dsaKeyElement:Lorg/w3c/dom/Element;

    return v3
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->_dsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    :goto_0
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->_dsaKeyElement:Lorg/w3c/dom/Element;

    invoke-direct {v0, v1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;->_dsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v2
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
