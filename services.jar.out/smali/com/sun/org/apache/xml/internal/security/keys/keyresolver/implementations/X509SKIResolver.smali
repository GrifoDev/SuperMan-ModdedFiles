.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;
.source "Unknown"


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _x509childNodes:[Lorg/w3c/dom/Element;

.field private _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.X509SKIResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

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

    const/4 v4, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string/jumbo v0, "X509Data"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "X509SKI"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    if-nez v0, :cond_4

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    return v4

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

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

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return v4

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "I can\'t"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    array-length v0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_5
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Yes Sir, I can"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "I can\'t"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    :goto_0
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    array-length v0, v0

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    array-length v2, v2

    if-lt v0, v2, :cond_6

    :cond_0
    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    return-object v5

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-object v5

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "X509SKI"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "KeyResolver.needStorageResolver"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    throw v1
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_5
    :try_start_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childNodes:[Lorg/w3c/dom/Element;

    aget-object v4, v4, v0

    invoke-direct {v3, v4, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->next()Ljava/security/cert/X509Certificate;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->_x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    return-object v2

    :cond_9
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Return PublicKey from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
