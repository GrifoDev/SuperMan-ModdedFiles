.class public Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$1;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;
    }
.end annotation


# static fields
.field public static final AES_128:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes128-cbc"

.field public static final AES_128_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes128"

.field public static final AES_192:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes192-cbc"

.field public static final AES_192_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes192"

.field public static final AES_256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes256-cbc"

.field public static final AES_256_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes256"

.field public static final BASE64_ENCODING:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#base64"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final DIFFIE_HELLMAN:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#dh"

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final ENC_ALGORITHMS:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

.field public static final EXCL_XML_N14C:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#"

.field public static final EXCL_XML_N14C_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

.field public static final N14C_XML:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

.field public static final N14C_XML_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

.field public static final RIPEMD_160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#ripemd160"

.field public static final RSA_OAEP:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p"

.field public static final RSA_v1dot5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#rsa-1_5"

.field public static final SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#sha1"

.field public static final SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha256"

.field public static final SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha512"

.field public static final TRIPLEDES:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#tripledes-cbc"

.field public static final TRIPLEDES_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-tripledes"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field public static final XML_DSIG:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"

.field static synthetic class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

.field static synthetic class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$DataReference:Ljava/lang/Class;

.field static synthetic class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$KeyReference:Ljava/lang/Class;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _algorithm:Ljava/lang/String;

.field private _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

.field private _cipherMode:I

.field private _contextCipher:Ljavax/crypto/Cipher;

.field private _contextDocument:Lorg/w3c/dom/Document;

.field private _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

.field private _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

.field private _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

.field private _kek:Ljava/security/Key;

.field private _key:Ljava/security/Key;

.field private _requestedJCEProvider:Ljava/lang/String;

.field private _serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.encryption.XMLCipher"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-direct {v0, p0, v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$1;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Constructing XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    return-object v0
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

.method private decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptToByteArray(Lorg/w3c/dom/Element;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-virtual {v2, v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->deserialize(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    instance-of v2, v1, Lorg/w3c/dom/Document;

    if-nez v2, :cond_3

    invoke-interface {v1, v0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Decrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Decrypted octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3
.end method

.method private decryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v1, "EncryptedData"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "No EncryptedData child element."

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p0, v0, p1, v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    return-object v0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Encrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    if-ne v0, v3, :cond_3

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p0, v0, p1, v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->removeContent(Lorg/w3c/dom/Node;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    return-object v0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Encrypting element content..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;-><init>()V

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_kek:Ljava/security/Key;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    :try_start_0
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Getting XMLCipher for no transformation..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->isValidEncryptionAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;-><init>()V

    iput-object p0, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_kek:Ljava/security/Key;

    :try_start_0
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Getting XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Transformation unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "Algorithm non-standard, expected one of http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    :try_start_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "cihper.algoritm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

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

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljavax/crypto/Cipher;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Getting XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    :goto_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->isValidEncryptionAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;-><init>()V

    iput-object p0, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_kek:Ljava/security/Key;

    :try_start_0
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    :try_start_1
    iput-object p1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "cihper.algoritm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Transformation unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "Algorithm non-standard, expected one of http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getProviderInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    const-string/jumbo v0, ""

    if-eq v0, p0, :cond_2

    :goto_2
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;-><init>()V

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    iput-object p0, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_kek:Ljava/security/Key;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    :try_start_0
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Getting XMLCipher, provider but no transformation"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Provider unexpectedly null.."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Provider\'s value unexpectedly not specified..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getProviderInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    if-eqz p1, :cond_2

    :goto_2
    const-string/jumbo v0, ""

    if-eq v0, p1, :cond_3

    :goto_3
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->isValidEncryptionAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;-><init>()V

    iput-object p0, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    iput-object p1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_kek:Ljava/security/Key;

    :try_start_0
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    if-nez v1, :cond_6

    :goto_6
    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Getting XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Transformation unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Provider unexpectedly null.."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Provider\'s value unexpectedly not specified..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "Algorithm non-standard, expected one of http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_5
    :try_start_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "cipher._algorithm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_6
    :try_start_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "provider.name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_6

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getProviderInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->getProviderInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static isValidEncryptionAlgorithm(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#tripledes-cbc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#aes128-cbc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#aes256-cbc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#aes192-cbc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#rsa-1_5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#kw-tripledes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#kw-aes128"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#kw-aes256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#kw-aes192"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private removeContent(Lorg/w3c/dom/Node;)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->removeContent(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1
.end method


# virtual methods
.method public createAgreementMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newAgreementMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;

    move-result-object v0

    return-object v0
.end method

.method public createCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v0

    return-object v0
.end method

.method public createCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v0

    return-object v0
.end method

.method public createCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptedData(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createEncryptedKey(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedKey(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedKey(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptionProperty()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperty()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;

    move-result-object v0

    return-object v0
.end method

.method public createReferenceList(I)Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newReferenceList(I)Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    move-result-object v0

    return-object v0
.end method

.method public createTransforms()Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newTransforms()Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    move-result-object v0

    return-object v0
.end method

.method public createTransforms(Lorg/w3c/dom/Document;)Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newTransforms(Lorg/w3c/dom/Document;)Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    move-result-object v0

    return-object v0
.end method

.method public decryptKey(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptKey(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public decryptKey(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;Ljava/lang/String;)Ljava/security/Key;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    if-ne v0, v3, :cond_3

    :cond_0
    :goto_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    if-eqz v0, :cond_5

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->getBytes()[B

    move-result-object v1

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->getJCEKeyAlgorithmFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    :goto_2
    const/4 v3, 0x4

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return-object v0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Decrypting key from previously loaded EncryptedKey..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in UNWRAP_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "Cannot decrypt a key without knowing the algorithm"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher::decryptKey called without a KEK and cannot resolve"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "Unable to decrypt without a KEK"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Trying to find a KEK via key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_8
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_6
    :try_start_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "JCE Algorithm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    :try_start_3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto/16 :goto_2

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

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_b
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Decryption of key type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " OK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public decryptToByteArray(Lorg/w3c/dom/Element;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    if-eqz v1, :cond_3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->getBytes()[B

    move-result-object v1

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v3, v2, [B

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :try_start_1
    iget v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    invoke-virtual {v0, v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Decrypting to ByteArray..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    if-nez v1, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher::decryptElement called without a key and unable to resolve"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "encryption.nokey"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_3
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_kek:Ljava/security/Key;

    invoke-direct {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->registerInternalKeyResolver(Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_5
    :try_start_4
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    goto :goto_2

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

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public doFinal(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Processing source document..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Context document unexpectedly null..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Source document unexpectedly null..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_3
    :pswitch_1
    return-object v0

    :pswitch_2
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public doFinal(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Processing source element..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Context document unexpectedly null..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Source element unexpectedly null..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_3
    :pswitch_1
    return-object v0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public doFinal(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Processing source element..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Context document unexpectedly null..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Source element unexpectedly null..."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    if-nez p3, :cond_3

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_3
    :pswitch_1
    return-object v0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->decryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    if-nez p3, :cond_4

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->encryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    if-eqz p2, :cond_3

    :goto_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    if-ne v0, v3, :cond_4

    :cond_0
    :goto_3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-nez p3, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->serialize(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_5
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    :goto_6
    :try_start_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-nez v3, :cond_c

    :goto_7
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v0

    if-nez v0, :cond_d

    :goto_8
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v3, v0

    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v2

    invoke-static {v2, v7, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_9
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_a
    :try_start_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;->setValue(Ljava/lang/String;)V

    if-nez p3, :cond_10

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Element"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V

    :goto_b
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Encrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_7

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Element has no content."

    aput-object v1, v0, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->serialize(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Serialized octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_c
    :try_start_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto/16 :goto_6

    :cond_a
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "alg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    :try_start_4
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

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

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_c
    :try_start_5
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Expected cipher.outputSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_7

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_d
    :try_start_6
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Actual cipher.outputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_8

    :catch_5
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_e
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Encrypted octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_f
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Encrypted octets length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_10
    :try_start_7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Content"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public encryptData(Lorg/w3c/dom/Document;[BZ)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Encrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :goto_2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Serialized octets:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    :goto_3
    :try_start_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Expected cipher.outputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Actual cipher.outputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v6, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Encrypted octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Encrypted octets length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :try_start_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;->setValue(Ljava/lang/String;)V

    if-nez p3, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Element"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Canonicalized Data is unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "alg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :try_start_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

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

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Content"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public encryptKey(Lorg/w3c/dom/Document;Ljava/security/Key;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    if-ne v0, v3, :cond_3

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextCipher:Ljavax/crypto/Cipher;

    :goto_3
    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_5
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;->setValue(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    return-object v0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Encrypting key ..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Key unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in WRAP_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_algorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_6
    :try_start_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "alg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :try_start_3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

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

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_8
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Encrypted key octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Encrypted key octets length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_5
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getEncryptedData()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Returning EncryptedData"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEncryptedKey()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Returning EncryptedKey"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(ILjava/security/Key;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Mode unexpectedly invalid"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "Invalid mode in init"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Initializing XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "NO VALUE YET"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->createEncryptedData(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    :cond_1
    :goto_2
    iput p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_key:Ljava/security/Key;

    return-void

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = ENCRYPT_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = DECRYPT_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    const-string/jumbo v0, "NO VALUE YET"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->createEncryptedKey(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = WRAP_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = UNWRAP_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadEncryptedData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :goto_3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Loading encrypted element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public loadEncryptedKey(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    if-eqz p2, :cond_3

    :goto_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_0
    :goto_3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    return-object v0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Loading encrypted key..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_cipherMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "XMLCipher unexpectedly not in UNWRAP_MODE or DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public loadEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->loadEncryptedKey(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public setKEK(Ljava/security/Key;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->_kek:Ljava/security/Key;

    return-void
.end method
