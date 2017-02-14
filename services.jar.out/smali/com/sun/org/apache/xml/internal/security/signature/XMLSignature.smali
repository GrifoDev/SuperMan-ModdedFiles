.class public final Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;
.source "Unknown"


# static fields
.field public static final ALGO_ID_MAC_HMAC_NOT_RECOMMENDED_MD5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-md5"

.field public static final ALGO_ID_MAC_HMAC_RIPEMD160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-ripemd160"

.field public static final ALGO_ID_MAC_HMAC_SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#hmac-sha1"

.field public static final ALGO_ID_MAC_HMAC_SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-sha256"

.field public static final ALGO_ID_MAC_HMAC_SHA384:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-sha384"

.field public static final ALGO_ID_MAC_HMAC_SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-sha512"

.field public static final ALGO_ID_SIGNATURE_DSA:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

.field public static final ALGO_ID_SIGNATURE_NOT_RECOMMENDED_RSA_MD5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-md5"

.field public static final ALGO_ID_SIGNATURE_RSA:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

.field public static final ALGO_ID_SIGNATURE_RSA_RIPEMD160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA384:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512"

.field static synthetic class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _followManifestsDuringValidation:Z

.field private _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.signature.XMLSignature"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v5, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const-string/jumbo v5, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_followManifestsDuringValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string/jumbo v1, "SignatureValue"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_followManifestsDuringValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p3, p4}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string/jumbo v1, "SignatureValue"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_followManifestsDuringValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "SignedInfo"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-direct {v1, v0, p2}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "SignatureValue"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "KeyInfo"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "SignedInfo"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Signature"

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "SignatureValue"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Signature"

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-direct {v1, v0, p2}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    goto :goto_0
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

.method private setSignatureValueElement([B)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "SignatureValue"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x4c

    if-gt v2, v3, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public addDocument(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#sha1"

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDocument(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#sha1"

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDocument(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDocument(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addKeyInfo(Ljava/security/PublicKey;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Ljava/security/PublicKey;)V

    return-void
.end method

.method public addKeyInfo(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->addCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;)V

    return-void
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;)V

    return-void
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V

    return-void
.end method

.method public appendObject(Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "signature.operationOnlyBeforeSign"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public checkSignatureValue(Ljava/security/Key;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_followManifestsDuringValidation:Z

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->verify(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->getSignatureMethodElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->initVerify(Ljava/security/Key;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;-><init>(Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;)V

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->signInOctectStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getSignatureValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->verify([B)Z
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Didn\'t get a key"

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    return v2

    :cond_2
    :try_start_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "SignatureMethodURI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;->getAlgorithmURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    :try_start_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "jceSigAlgorithm    = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getJCEAlgorithmString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "jceSigProvider     = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getJCEProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "PublicKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_4
.end method

.method public checkSignatureValue(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Didn\'t get a certificate"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->checkSignatureValue(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method

.method public createSecretKey([B)Ljavax/crypto/SecretKey;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->createSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Signature"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Id"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "Object"

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "\n"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public getObjectItem(I)Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "Object"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectLength()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "Object"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSignatureValue()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "SignatureValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    return-object v0
.end method

.method public setFollowNestedManifests(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_followManifestsDuringValidation:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Id"

    invoke-interface {v0, v2, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sign(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "algorithms.operationOnlyVerification"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->_signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->getSignatureMethodElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->initSign(Ljava/security/Key;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->generateDigestValues()V

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;-><init>(Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;)V

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    :try_start_3
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->signInOctectStream(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->sign()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;->setSignatureValueElement([B)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
