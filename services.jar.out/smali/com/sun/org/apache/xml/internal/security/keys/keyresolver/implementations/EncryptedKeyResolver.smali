.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;
.source "Unknown"


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _algorithm:Ljava/lang/String;

.field _kek:Ljava/security/Key;

.field _key:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.RSAKeyValueResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_key:Ljava/security/Key;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_kek:Ljava/security/Key;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_algorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_key:Ljava/security/Key;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_algorithm:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_kek:Ljava/security/Key;

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
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "EncryptedKey"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInEncryptionSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_key:Ljava/security/Key;

    if-nez v1, :cond_4

    :goto_2
    return v0

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "EncryptedKeyResolver - Can I resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->getInstance()Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_kek:Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->loadEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptKey(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_key:Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Passed an Encrypted Key"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;->_key:Ljava/security/Key;

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
