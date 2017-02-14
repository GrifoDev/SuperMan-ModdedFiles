.class public Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/KeyValueContent;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$content$keyvalues$DSAKeyValue:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;->class$com$sun$org$apache$xml$internal$security$keys$content$keyvalues$DSAKeyValue:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;->class$com$sun$org$apache$xml$internal$security$keys$content$keyvalues$DSAKeyValue:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.content.keyvalues.DSAKeyValue"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;->class$com$sun$org$apache$xml$internal$security$keys$content$keyvalues$DSAKeyValue:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    const-string/jumbo v0, "P"

    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string/jumbo v0, "Q"

    invoke-virtual {p0, p3, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string/jumbo v0, "G"

    invoke-virtual {p0, p4, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string/jumbo v0, "Y"

    invoke-virtual {p0, p5, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/security/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    instance-of v0, p2, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "DSAKeyValue"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "KeyValue.IllegalArgument"

    invoke-static {v2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    const-string/jumbo v1, "P"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    const-string/jumbo v1, "Q"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    const-string/jumbo v1, "G"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    check-cast p2, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    const-string/jumbo v1, "Y"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

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
.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "DSAKeyValue"

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    const-string/jumbo v1, "Y"

    const-string/jumbo v2, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBigIntegerFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string/jumbo v2, "P"

    const-string/jumbo v3, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBigIntegerFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string/jumbo v3, "Q"

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {p0, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBigIntegerFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string/jumbo v4, "G"

    const-string/jumbo v5, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {p0, v4, v5}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBigIntegerFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v1, "DSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
