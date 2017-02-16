.class public final Lsun/security/ssl/RSASignature;
.super Ljava/security/SignatureSpi;
.source "RSASignature.java"


# instance fields
.field private isReset:Z

.field private md5:Ljava/security/MessageDigest;

.field private final rawRsa:Ljava/security/Signature;

.field private sha:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 62
    const-string/jumbo v0, "NONEwithRSA"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    .line 60
    return-void
.end method

.method private static checkNull(Ljava/security/Key;)V
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Key must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method

.method private getDigest()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    .line 153
    const/16 v2, 0x24

    new-array v0, v2, [B

    .line 154
    .local v0, "data":[B
    iget-object v2, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 155
    iget-object v2, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    const/16 v3, 0x10

    const/16 v4, 0x14

    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/ssl/RSASignature;->isReset:Z
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-object v0

    .line 158
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/security/DigestException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static getInstance()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 72
    const-string/jumbo v0, "MD5andSHA1withRSA"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method static getInternalInstance()Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 82
    const-string/jumbo v0, "MD5andSHA1withRSA"

    const-string/jumbo v1, "SunJSSE"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method private initDigests()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lsun/security/ssl/JsseJce;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    .line 132
    invoke-static {}, Lsun/security/ssl/JsseJce;->getSHA()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    .line 129
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 98
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    .line 95
    :cond_0
    return-void
.end method

.method static setHashes(Ljava/security/Signature;Ljava/security/MessageDigest;Ljava/security/MessageDigest;)V
    .locals 3
    .param p0, "sig"    # Ljava/security/Signature;
    .param p1, "md5"    # Ljava/security/MessageDigest;
    .param p2, "sha"    # Ljava/security/MessageDigest;

    .prologue
    .line 89
    const-string/jumbo v0, "hashes"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/security/Signature;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
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
    .line 196
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/ssl/RSASignature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 117
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Lsun/security/ssl/RSASignature;->checkNull(Ljava/security/Key;)V

    .line 124
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->reset()V

    .line 125
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 122
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lsun/security/ssl/RSASignature;->checkNull(Ljava/security/Key;)V

    .line 112
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->reset()V

    .line 113
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 110
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 181
    const-string/jumbo v1, "hashes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/security/InvalidParameterException;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parameter not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    instance-of v1, p2, [Ljava/security/MessageDigest;

    if-nez v1, :cond_1

    .line 186
    new-instance v1, Ljava/security/InvalidParameterException;

    .line 187
    const-string/jumbo v2, "value must be MessageDigest[]"

    .line 186
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p2

    .line 189
    nop

    nop

    .line 190
    .local v0, "digests":[Ljava/security/MessageDigest;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    .line 191
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    .line 180
    return-void
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->getDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 166
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 137
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    .line 139
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 140
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 136
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    .line 146
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 147
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 143
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 170
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/security/ssl/RSASignature;->engineVerify([BII)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->getDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 176
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->verify([BII)Z

    move-result v0

    return v0
.end method
