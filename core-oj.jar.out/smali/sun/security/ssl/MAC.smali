.class final Lsun/security/ssl/MAC;
.super Ljava/lang/Object;
.source "MAC.java"


# static fields
.field private static final BLOCK_OFFSET_TYPE:I = 0x8

.field private static final BLOCK_OFFSET_VERSION:I = 0x9

.field private static final BLOCK_SIZE_SSL:I = 0xb

.field private static final BLOCK_SIZE_TLS:I = 0xd

.field static final NULL:Lsun/security/ssl/MAC;

.field private static final nullMAC:[B


# instance fields
.field private final block:[B

.field private final mac:Ljavax/crypto/Mac;

.field private final macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

.field private final macSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/security/ssl/MAC;

    invoke-direct {v0}, Lsun/security/ssl/MAC;-><init>()V

    sput-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lsun/security/ssl/MAC;->nullMAC:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/MAC;->macSize:I

    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v1, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    iput-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/CipherSuite$MacAlg;Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iget v2, p1, Lsun/security/ssl/CipherSuite$MacAlg;->size:I

    iput v2, p0, Lsun/security/ssl/MAC;->macSize:I

    iget v2, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_1

    const-string/jumbo v0, "HmacMD5"

    :goto_1
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    iget-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    if-eqz v1, :cond_7

    const/16 v2, 0xd

    new-array v2, v2, [B

    iput-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    iget-byte v3, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    const/16 v4, 0x9

    aput-byte v3, v2, v4

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    iget-byte v3, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    const/16 v4, 0xa

    aput-byte v3, v2, v4

    :goto_2
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SslMacMD5"

    goto :goto_1

    :cond_2
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v2, :cond_4

    if-eqz v1, :cond_3

    const-string/jumbo v0, "HmacSHA1"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "SslMacSHA1"

    goto :goto_1

    :cond_4
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v2, :cond_5

    const-string/jumbo v0, "HmacSHA256"

    goto :goto_1

    :cond_5
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v2, :cond_6

    const-string/jumbo v0, "HmacSHA384"

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown Mac "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/16 v2, 0xb

    new-array v2, v2, [B

    iput-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    goto :goto_2
.end method

.method private compute(BLjava/nio/ByteBuffer;[BIIZ)[B
    .locals 3

    iget v0, p0, Lsun/security/ssl/MAC;->macSize:I

    if-nez v0, :cond_0

    sget-object v0, Lsun/security/ssl/MAC;->nullMAC:[B

    return-object v0

    :cond_0
    if-nez p6, :cond_1

    iget-object v0, p0, Lsun/security/ssl/MAC;->block:[B

    const/16 v1, 0x8

    aput-byte p1, v0, v1

    iget-object v0, p0, Lsun/security/ssl/MAC;->block:[B

    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    shr-int/lit8 v2, p5, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/ssl/MAC;->block:[B

    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, p5

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    invoke-direct {p0}, Lsun/security/ssl/MAC;->incrementSequenceNumber()V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    :goto_0
    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p3, p4, p5}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_0
.end method

.method private incrementSequenceNumber()V
    .locals 3

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method MAClen()I
    .locals 1

    iget v0, p0, Lsun/security/ssl/MAC;->macSize:I

    return v0
.end method

.method final compute(BLjava/nio/ByteBuffer;Z)[B
    .locals 7

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;[BIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method final compute(B[BIIZ)[B
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;[BIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method hashBlockLen()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iget v0, v0, Lsun/security/ssl/CipherSuite$MacAlg;->hashBlockSize:I

    return v0
.end method

.method minimalPaddingLen()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iget v0, v0, Lsun/security/ssl/CipherSuite$MacAlg;->minimalPaddingSize:I

    return v0
.end method

.method final seqNumIsHuge()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    aget-byte v2, v2, v0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final seqNumOverflow()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    aget-byte v2, v2, v1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    aget-byte v2, v2, v0

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
