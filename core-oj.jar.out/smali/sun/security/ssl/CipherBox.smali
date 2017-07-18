.class final Lsun/security/ssl/CipherBox;
.super Ljava/lang/Object;
.source "CipherBox.java"


# static fields
.field static final NULL:Lsun/security/ssl/CipherBox;

.field private static final debug:Lsun/security/ssl/Debug;

.field private static masks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/spec/IvParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private final isCBCMode:Z

.field private final protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/security/ssl/CipherBox;

    invoke-direct {v0}, Lsun/security/ssl/CipherBox;-><init>()V

    sput-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    return-void
.end method

.method private constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-eqz p6, :cond_3

    const/4 v3, 0x1

    :goto_0
    if-nez p5, :cond_0

    invoke-static {}, Lsun/security/ssl/JsseJce;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    iget-boolean v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->isCBCMode:Z

    iput-boolean v4, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    if-nez p4, :cond_1

    iget v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v4, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_1

    iget v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    invoke-static {v4}, Lsun/security/ssl/CipherBox;->getFixedMask(I)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p4

    :cond_1
    iget-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v3, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    iget-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    iput v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    iget v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    iput v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create cipher "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create cipher "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v2

    throw v2
.end method

.method private static addPadding(Ljava/nio/ByteBuffer;I)I
    .locals 7

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/lit8 v2, v1, 0x1

    rem-int v6, v2, p1

    if-eqz v6, :cond_0

    add-int/lit8 v6, p1, -0x1

    add-int/2addr v2, v6

    rem-int v6, v2, p1

    sub-int/2addr v2, v6

    :cond_0
    sub-int v6, v2, v1

    int-to-byte v5, v6

    add-int v6, v2, v3

    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    add-int/2addr v3, v1

    move v4, v3

    :goto_0
    if-ge v0, v5, :cond_1

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-byte v6, v6

    invoke-virtual {p0, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return v2
.end method

.method private static addPadding([BIII)I
    .locals 6

    add-int/lit8 v1, p2, 0x1

    rem-int v4, v1, p3

    if-eqz v4, :cond_0

    add-int/lit8 v4, p3, -0x1

    add-int/2addr v1, v4

    rem-int v4, v1, p3

    sub-int/2addr v1, v4

    :cond_0
    sub-int v4, v1, p2

    int-to-byte v3, v4

    array-length v4, p0

    add-int v5, v1, p1

    if-ge v4, v5, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "no space to pad buffer"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v0, 0x0

    add-int/2addr p1, p2

    move v2, p1

    :goto_0
    if-ge v0, v3, :cond_2

    add-int/lit8 p1, v2, 0x1

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    add-int/lit8 v0, v0, 0x1

    move v2, p1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static checkPadding(Ljava/nio/ByteBuffer;B)[I
    .locals 6

    const/16 v5, 0x100

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "hasRemaining() must be positive"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    filled-new-array {v4, v4}, [I

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v5, :cond_3

    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    if-gt v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eq v2, p1, :cond_1

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static checkPadding([BIIB)[I
    .locals 7

    const/16 v6, 0x100

    const/4 v5, 0x0

    if-gtz p2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "padding len must be positive"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    filled-new-array {v5, v5}, [I

    move-result-object v2

    const/4 v0, 0x0

    :cond_1
    if-gt v0, v6, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    if-gt v0, v6, :cond_1

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eq v3, p3, :cond_2

    aget v3, v2, v5

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private static getFixedMask(I)Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    :cond_0
    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_1

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    new-array v1, p0, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method static newCipherBox(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-boolean v0, p1, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported cipher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    if-ne p1, v0, :cond_1

    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    return-object v0

    :cond_1
    new-instance v0, Lsun/security/ssl/CipherBox;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/CipherBox;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)V

    return-object v0
.end method

.method private static removePadding(Ljava/nio/ByteBuffer;IILsun/security/ssl/ProtocolVersion;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int v6, v2, v0

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v3, v6, 0xff

    add-int/lit8 v6, v3, 0x1

    sub-int v1, v0, v6

    sub-int v6, v1, p1

    if-gez v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    invoke-static {v6, v7}, Lsun/security/ssl/CipherBox;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    new-instance v6, Ljavax/crypto/BadPaddingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid Padding length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    invoke-static {v6, v7}, Lsun/security/ssl/CipherBox;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    move-result-object v5

    iget v6, p3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_1

    aget v6, v5, v8

    if-eqz v6, :cond_2

    new-instance v6, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v7, "Invalid TLS padding data"

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-le v3, p2, :cond_2

    new-instance v6, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v7, "Invalid SSLv3 padding"

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    add-int v6, v2, v1

    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    add-int v6, v2, v1

    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return v1
.end method

.method private static removePadding([BIIIILsun/security/ssl/ProtocolVersion;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v7, 0x0

    add-int v4, p1, p2

    add-int/lit8 v2, v4, -0x1

    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    add-int/lit8 v4, v1, 0x1

    sub-int v0, p2, v4

    sub-int v4, v0, p3

    if-gez v4, :cond_0

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    invoke-static {p0, p1, p2, v4}, Lsun/security/ssl/CipherBox;->checkPadding([BIIB)[I

    new-instance v4, Ljavax/crypto/BadPaddingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid Padding length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    add-int v4, p1, v0

    add-int/lit8 v5, v1, 0x1

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    invoke-static {p0, v4, v5, v6}, Lsun/security/ssl/CipherBox;->checkPadding([BIIB)[I

    move-result-object v3

    iget v4, p5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_1

    aget v4, v3, v7

    if-eqz v4, :cond_2

    new-instance v4, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v5, "Invalid TLS padding data"

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-le v1, p4, :cond_2

    new-instance v4, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v5, "Invalid SSLv3 padding"

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    return v0
.end method


# virtual methods
.method decrypt(Ljava/nio/ByteBuffer;I)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return v9

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v11

    if-eq v11, v9, :cond_1

    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cipher buffering error in JCE provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v7

    :cond_1
    :try_start_1
    sget-object v13, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    if-eqz v13, :cond_2

    const-string/jumbo v13, "plaintext"

    invoke-static {v13}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_2

    :try_start_2
    new-instance v8, Lsun/misc/HexDumpEncoder;

    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Padded plaintext after DECRYPTION:  len = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v13, v14}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13, v14}, Lsun/security/ssl/CipherBox;->removePadding(Ljava/nio/ByteBuffer;IILsun/security/ssl/ProtocolVersion;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v13, v13, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v14, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v14, v14, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v13, v14, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-ge v11, v13, :cond_3

    new-instance v13, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v14, "invalid explicit IV"

    invoke-direct {v13, v14}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_3
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    add-int v13, v2, v12

    move-object/from16 v0, p0

    iget v14, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v13, v14

    add-int v14, v2, v12

    sub-int v15, v10, v12

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-static {v3, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int v13, v10, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    return v11

    :cond_5
    sub-int v13, v10, v12

    move-object/from16 v0, p0

    iget v14, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int/2addr v13, v14

    new-array v3, v13, [B

    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v13, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int v13, v10, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method decrypt([BIII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v2

    if-eq v2, p3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cipher buffering error in JCE provider "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "plaintext"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    new-instance v8, Lsun/misc/HexDumpEncoder;

    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Padded plaintext after DECRYPTION:  len = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v0, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    :try_start_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v0, :cond_4

    iget v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    iget-object v5, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object v0, p1

    move v1, p2

    move v3, p4

    invoke-static/range {v0 .. v5}, Lsun/security/ssl/CipherBox;->removePadding([BIIIILsun/security/ssl/ProtocolVersion;)I

    move-result v2

    iget-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-ge v2, v0, :cond_3

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v1, "invalid explicit IV"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v0, p2

    iget v1, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int v1, v2, v1

    invoke-static {p1, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    sub-int/2addr v2, v0

    :cond_4
    return v2

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method dispose()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method encrypt(Ljava/nio/ByteBuffer;)I
    .locals 16

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return v8

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v13, v13, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v14, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v14, v14, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    new-array v12, v13, [B

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    add-int v13, v1, v11

    add-int v14, v1, v11

    array-length v15, v12

    add-int/2addr v14, v15

    sub-int v15, v9, v11

    invoke-static {v2, v13, v2, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v13, v12

    add-int/2addr v13, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lsun/security/ssl/CipherBox;->addPadding(Ljava/nio/ByteBuffer;I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    sget-object v13, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    if-eqz v13, :cond_3

    const-string/jumbo v13, "plaintext"

    invoke-static {v13}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_3

    :try_start_1
    new-instance v7, Lsun/misc/HexDumpEncoder;

    invoke-direct {v7}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Padded plaintext before ENCRYPTION:  len = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v3, v0}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v13

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v14

    if-eq v13, v14, :cond_5

    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "bytebuffer padding error"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v6

    :cond_4
    sub-int v13, v9, v11

    :try_start_3
    new-array v2, v13, [B

    sub-int v13, v9, v11

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    array-length v13, v12

    add-int/2addr v13, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    array-length v13, v12

    add-int/2addr v13, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :cond_5
    if-eq v10, v8, :cond_6

    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cipher buffering error in JCE provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    return v10

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method encrypt([BII)I
    .locals 11

    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    new-array v10, v0, [B

    iget-object v0, p0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v0, v10

    add-int/2addr v0, p2

    invoke-static {p1, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, v10

    const/4 v1, 0x0

    invoke-static {v10, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, v10

    add-int/2addr p3, v0

    :cond_1
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    invoke-static {p1, p2, p3, v0}, Lsun/security/ssl/CipherBox;->addPadding([BIII)I

    move-result p3

    :cond_2
    sget-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "plaintext"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v8, Lsun/misc/HexDumpEncoder;

    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Padded plaintext before ENCRYPTION:  len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v0, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v9

    if-eq v9, p3, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cipher buffering error in JCE provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v9

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method isCBCMode()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    return v0
.end method

.method isNullCipher()Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sanityCheck(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    if-nez v3, :cond_1

    if-lt p2, p1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    rem-int v3, p2, v3

    if-nez v3, :cond_5

    add-int/lit8 v0, p1, 0x1

    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-lt v0, v3, :cond_3

    :goto_1
    iget-object v3, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v0, v3

    :cond_2
    if-lt p2, v0, :cond_4

    :goto_2
    return v1

    :cond_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    return v2
.end method
