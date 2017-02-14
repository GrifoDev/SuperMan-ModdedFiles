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

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    const-string/jumbo v0, "NONEwithRSA"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    return-void
.end method

.method private static checkNull(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Key must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

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

    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    const/16 v2, 0x24

    new-array v0, v2, [B

    iget-object v2, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    iget-object v2, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    const/16 v3, 0x10

    const/16 v4, 0x14

    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/ssl/RSASignature;->isReset:Z
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

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

    const-string/jumbo v0, "MD5andSHA1withRSA"

    const-string/jumbo v1, "SunJSSE"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method private initDigests()V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    invoke-static {}, Lsun/security/ssl/JsseJce;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    invoke-static {}, Lsun/security/ssl/JsseJce;->getSHA()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    :cond_0
    return-void
.end method

.method static setHashes(Ljava/security/Signature;Ljava/security/MessageDigest;Ljava/security/MessageDigest;)V
    .locals 3

    const-string/jumbo v0, "hashes"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/security/Signature;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/ssl/RSASignature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lsun/security/ssl/RSASignature;->checkNull(Ljava/security/Key;)V

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->reset()V

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lsun/security/ssl/RSASignature;->checkNull(Ljava/security/Key;)V

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->reset()V

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const-string/jumbo v1, "hashes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parameter not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p2, [Ljava/security/MessageDigest;

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "value must be MessageDigest[]"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p2

    nop

    nop

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    return-void
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->getDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/security/ssl/RSASignature;->engineVerify([BII)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->getDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->verify([BII)Z

    move-result v0

    return v0
.end method
