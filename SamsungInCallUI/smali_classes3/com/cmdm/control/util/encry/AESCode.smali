.class public Lcom/cmdm/control/util/encry/AESCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dO:Ljava/lang/String;

.field private final dP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "AES"

    iput-object v0, p0, Lcom/cmdm/control/util/encry/AESCode;->dO:Ljava/lang/String;

    .line 26
    const-string v0, "AES/ECB/PKCS5Padding"

    iput-object v0, p0, Lcom/cmdm/control/util/encry/AESCode;->dP:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public decrypt([BLjava/security/Key;)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "cipherAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 196
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 198
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public decrypt([B[B)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt([B[BLjava/lang/String;)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .param p3, "cipherAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0, p2}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v0

    .line 176
    .local v0, "k":Ljava/security/Key;
    invoke-virtual {p0, p1, v0, p3}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public encrypt([BLjava/security/Key;)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "cipherAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 127
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 129
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public encrypt([B[B)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[BLjava/lang/String;)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .param p3, "cipherAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v0

    .line 107
    .local v0, "k":Ljava/security/Key;
    invoke-virtual {p0, p1, v0, p3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public initSecretKey()[B
    .locals 4

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 47
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 48
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .end local v2    # "secretKey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 41
    const/4 v3, 0x0

    new-array v3, v3, [B

    goto :goto_0
.end method

.method public showByteArray([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v2, 0x0

    .line 211
    :goto_0
    return-object v2

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 206
    :cond_1
    aget-byte v0, p1, v2

    .line 207
    .local v0, "b":B
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public toKey([B)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 60
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
