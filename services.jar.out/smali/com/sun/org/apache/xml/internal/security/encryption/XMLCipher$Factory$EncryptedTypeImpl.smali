.class abstract Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EncryptedTypeImpl"
.end annotation


# instance fields
.field private cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

.field private encoding:Ljava/lang/String;

.field private encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

.field private encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

.field private id:Ljava/lang/String;

.field private keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private mimeType:Ljava/lang/String;

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    return-void
.end method


# virtual methods
.method public getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    return-object v0
.end method

.method public getEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encoding:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    return-void
.end method

.method public setEncryptionProperties(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->id:Ljava/lang/String;

    return-void
.end method

.method public setKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->type:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
