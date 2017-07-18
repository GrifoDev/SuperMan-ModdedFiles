.class final Lsun/security/ssl/HandshakeMessage$CertificateVerify;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateVerify"
.end annotation


# static fields
.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static final delegate:Ljava/lang/Class;

.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final spiField:Ljava/lang/reflect/Field;


# instance fields
.field private preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private signature:[B


# direct methods
.method static synthetic -wrap0(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "java.security.MessageDigest$Delegate"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->delegate:Ljava/lang/Class;

    sget-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->delegate:Ljava/lang/Class;

    const-string/jumbo v2, "digestSpi"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->spiField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->spiField:Ljava/lang/reflect/Field;

    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->NULL_OBJECT:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->methodCache:Ljava/util/Map;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reflection failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/HandshakeInStream;",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Lsun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iput-object p3, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v2, p3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v3, "Unsupported SignatureAndHashAlgorithm in ServerKeyExchange message"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PrivateKey;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-interface {p3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_0

    iput-object p6, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {p6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p3, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    invoke-static {v1, p1, p2, v0, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateSignature(Ljava/security/Signature;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    return-void

    :cond_0
    invoke-static {p1, v0}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->getSignature(Lsun/security/ssl/ProtocolVersion;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    goto :goto_0
.end method

.method private static digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V
    .locals 11

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->delegate:Ljava/lang/Class;

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "Digest is not a MessageDigestSpi"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Could not obtain encoded key and MessageDigest cannot digest key"

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_0
    :try_start_1
    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->spiField:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/MessageDigestSpi;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->methodCache:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-nez v4, :cond_1

    :try_start_2
    const-string/jumbo v7, "implUpdate"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljavax/crypto/SecretKey;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    nop

    nop

    move-object v7, v0

    invoke-static {v7}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    :try_start_3
    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->methodCache:Ljava/util/Map;

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v4, v7, :cond_2

    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "Digest does not support implUpdate(SecretKey)"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_1
    move-exception v3

    sget-object v4, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->NULL_OBJECT:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v4

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v6, v0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void
.end method

.method private static getSignature(Lsun/security/ssl/ProtocolVersion;Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string/jumbo v0, "RSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/security/ssl/RSASignature;->getInternalInstance()Ljava/security/Signature;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "DSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RawDSA"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "EC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NONEwithECDSA"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateVerify$1;

    invoke-direct {v0, p0}, Lsun/security/ssl/HandshakeMessage$CertificateVerify$1;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v2, "RAW"

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    :goto_1
    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    return-void

    :cond_1
    invoke-static {p0, p3}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p3}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V

    goto :goto_1
.end method

.method private static updateSignature(Ljava/security/Signature;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string/jumbo v2, "RSA"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ge v2, v3, :cond_1

    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getMD5Clone()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    move-result-object v1

    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ge v2, v3, :cond_0

    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->MD5_pad1:[B

    sget-object v3, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->MD5_pad2:[B

    invoke-static {v0, v2, v3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad1:[B

    sget-object v3, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad2:[B

    invoke-static {v1, v2, v3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    :cond_0
    invoke-static {p0, v0, v1}, Lsun/security/ssl/RSASignature;->setHashes(Ljava/security/Signature;Ljava/security/MessageDigest;Ljava/security/MessageDigest;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getAllHandshakeMessages()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/Signature;->update([B)V

    goto :goto_0

    :cond_2
    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    move-result-object v1

    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ge v2, v3, :cond_3

    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad1:[B

    sget-object v3, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad2:[B

    invoke-static {v1, v2, v3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    :cond_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/Signature;->update([B)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getAllHandshakeMessages()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/Signature;->update([B)V

    goto :goto_0
.end method


# virtual methods
.method getPreferableSignatureAlgorithm()Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    return-object v0
.end method

.method messageLength()I
    .locals 3

    const/4 v0, 0x2

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    array-length v1, v1

    add-int/2addr v1, v0

    return v1
.end method

.method messageType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "*** CertificateVerify"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Signature Algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    return-void
.end method

.method verify(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-static {v1, p1, p2, v0, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateSignature(Ljava/security/Signature;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    return v2

    :cond_0
    invoke-static {p1, v0}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->getSignature(Lsun/security/ssl/ProtocolVersion;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    goto :goto_0
.end method
