.class public Lcom/cmdm/control/util/encry/AESCode;
.super Ljava/lang/Object;


# instance fields
.field private final dO:Ljava/lang/String;

.field private final dP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES"

    iput-object v0, p0, Lcom/cmdm/control/util/encry/AESCode;->dO:Ljava/lang/String;

    const-string v0, "AES/ECB/PKCS5Padding"

    iput-object v0, p0, Lcom/cmdm/control/util/encry/AESCode;->dP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decrypt([BLjava/security/Key;)[B
    .locals 1

    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt([B[B)[B
    .locals 1

    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt([B[BLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p2}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BLjava/security/Key;)[B
    .locals 1

    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[B)[B
    .locals 1

    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[BLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p2}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public initSecretKey()[B
    .locals 2

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public showByteArray([B)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toKey([B)Ljava/security/Key;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
