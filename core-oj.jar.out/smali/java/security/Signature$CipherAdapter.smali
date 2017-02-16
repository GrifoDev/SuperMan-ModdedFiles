.class Ljava/security/Signature$CipherAdapter;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CipherAdapter"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private data:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .prologue
    .line 1322
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 1323
    iput-object p1, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    .line 1322
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1398
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1339
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    .line 1337
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1344
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1345
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    .line 1343
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1328
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1329
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 1330
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    .line 1327
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1393
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1367
    :try_start_0
    iget-object v2, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "doFinal() failed"

    invoke-direct {v2, v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1368
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 1369
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "doFinal() failed"

    invoke-direct {v2, v3, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1349
    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/security/Signature$CipherAdapter;->engineUpdate([BII)V

    .line 1348
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1354
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 1355
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1356
    return-void

    .line 1358
    :cond_0
    iget-object v1, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    .line 1359
    .local v0, "out":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    .line 1360
    new-instance v1, Ljava/security/SignatureException;

    .line 1361
    const-string/jumbo v2, "Cipher unexpectedly returned data"

    .line 1360
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1353
    :cond_1
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1378
    :try_start_0
    iget-object v4, p0, Ljava/security/Signature$CipherAdapter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 1379
    .local v3, "out":[B
    iget-object v4, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1380
    .local v0, "dataBytes":[B
    iget-object v4, p0, Ljava/security/Signature$CipherAdapter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1381
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 1386
    .end local v0    # "dataBytes":[B
    .end local v3    # "out":[B
    :catch_0
    move-exception v2

    .line 1387
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/SignatureException;

    const-string/jumbo v5, "doFinal() failed"

    invoke-direct {v4, v5, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1382
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v1

    .line 1385
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const/4 v4, 0x0

    return v4
.end method
