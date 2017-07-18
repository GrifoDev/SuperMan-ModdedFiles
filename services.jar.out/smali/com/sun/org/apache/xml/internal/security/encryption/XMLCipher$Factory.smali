.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedDataImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;
    }
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    return-object v0
.end method


# virtual methods
.method newAgreementMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V

    return-object v0
.end method

.method newAgreementMethod(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :cond_0
    const-string/jumbo v0, "Algorithm"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newAgreementMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;

    move-result-object v1

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "KA-Nonce"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    :goto_0
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "OriginatorKeyInfo"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "RecipientKeyInfo"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_3

    :goto_2
    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;->setKANonce([B)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;->setOriginatorKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;->setRecipientKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;I)V

    return-object v0
.end method

.method newCipherData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :cond_0
    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "CipherValue"

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-gtz v4, :cond_1

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "CipherReference"

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-gtz v4, :cond_2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v4

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_4

    :goto_1
    return-object v4

    :cond_1
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v4, "CipherValue"

    invoke-interface {p1, v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move v1, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v4, "CipherReference"

    invoke-interface {p1, v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherReference(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V

    goto :goto_1
.end method

.method newCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V

    return-object v0
.end method

.method newCipherReference(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "URI"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lorg/w3c/dom/Attr;)V

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "Transforms"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;

    invoke-direct {v2, p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lorg/w3c/dom/Element;)V

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;->setTransforms(Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "Creating a DSIG based Transforms element"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V

    return-object v0
.end method

.method newCipherValue(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;
    .locals 1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getFullTextChildrenFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    return-object v0
.end method

.method newEncryptedData(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedDataImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedDataImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V

    return-object v0
.end method

.method newEncryptedData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v1, "CipherData"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "Id"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setId(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "Type"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V

    const-string/jumbo v0, "MimeType"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setMimeType(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "Encoding"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "EncryptionMethod"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    :goto_1
    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v2, "KeyInfo"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    :goto_2
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "EncryptionProperties"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_2

    :goto_3
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "Error loading Key Info"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperties(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionProperties(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method newEncryptedKey(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V

    return-object v0
.end method

.method newEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v1, "CipherData"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedKey(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "Id"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setId(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "Type"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V

    const-string/jumbo v0, "MimeType"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setMimeType(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "Encoding"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncoding(Ljava/lang/String;)V

    const-string/jumbo v0, "Recipient"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;->setRecipient(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "EncryptionMethod"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    :goto_1
    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v2, "KeyInfo"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    :goto_2
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "EncryptionProperties"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_2

    :goto_3
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "ReferenceList"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_3

    :goto_4
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "CarriedKeyName"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_4

    :goto_5
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "Error loading Key Info"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperties(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionProperties(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newReferenceList(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;->setReferenceList(Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;)V

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;->setCarriedName(Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V

    return-object v0
.end method

.method newEncryptionMethod(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "Algorithm"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v1

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "KeySize"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "OAEPparams"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    :goto_1
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->setKeySize(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->setOAEPparams([B)V

    goto :goto_1
.end method

.method newEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)V

    return-object v0
.end method

.method newEncryptionProperties(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v2

    const-string/jumbo v0, "Id"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;->setId(Ljava/lang/String;)V

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v1, "EncryptionProperty"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperty(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;->addEncryptionProperty(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;)V

    goto :goto_1
.end method

.method newEncryptionProperty()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)V

    return-object v0
.end method

.method newEncryptionProperty(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperty()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "Target"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;->setTarget(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "Id"

    invoke-interface {p1, v4, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;->setId(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method newReferenceList(I)Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;I)V

    return-object v0
.end method

.method newReferenceList(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "DataReference"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "KeyReference"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;

    invoke-direct {v2, p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;I)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-object v2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v3, "DataReference"

    invoke-interface {p1, v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "URI"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;->newDataReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/Reference;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;->add(Lcom/sun/org/apache/xml/internal/security/encryption/Reference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v3, "KeyReference"

    invoke-interface {p1, v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "URI"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;->newKeyReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/Reference;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;->add(Lcom/sun/org/apache/xml/internal/security/encryption/Reference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method newTransforms()Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)V

    return-object v0
.end method

.method newTransforms(Lorg/w3c/dom/Document;)Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method newTransforms(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedDataImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedDataImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method toElement(Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;)Lorg/w3c/dom/Element;
    .locals 1

    check-cast p1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
