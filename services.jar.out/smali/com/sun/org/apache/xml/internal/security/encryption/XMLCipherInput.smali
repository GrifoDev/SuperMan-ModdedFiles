.class public Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

.field private _mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.encryption.XMLCipher"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_mode:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "CipherData is null"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_mode:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "CipherData is null"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method private getDecryptBytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getDataType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getDataType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "CipherData.getDataType() returned unexpected value"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherReference()Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;->getURIAsAttr()Lorg/w3c/dom/Attr;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    :goto_1
    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;->getTransforms()Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Found a reference type CipherData"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Managed to resolve URI \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Failed to resolve URI \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    :try_start_2
    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;->getDSTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v4, "Have transforms in cipher reference"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

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

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_4
    :try_start_3
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    return-object v0

    :cond_8
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Encrypted octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->_mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->getDecryptBytes()[B

    move-result-object v0

    return-object v0
.end method
