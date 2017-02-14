.class public Lcom/samsung/ucm/ucmservice/scp/CertUtil;
.super Ljava/lang/Object;
.source "CertUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UCM::CertUtil"

.field public static final TAG_CA_ID:B = 0x42t

.field private static final TAG_ECC_KEY_PARAMETER:B = -0x10t

.field private static final TAG_ECC_PUB_KEY_VALUE:B = -0x50t

.field public static final TAG_EXPIRATION_DATE:S = 0x5f24s

.field private static final TAG_PUBLIC_KEY_DATA:S = 0x7f49s


# instance fields
.field private DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    return-void
.end method

.method public static toBin(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v4, v3

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toHex(B)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    and-int/lit16 v2, p0, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public updateTlvCaCert([B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v10, p1

    const/4 v11, 0x0

    invoke-static {p1, v11, v10}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v8

    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, 0x7f49

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-virtual {v8, v10}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v9

    check-cast v9, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x50

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x10

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    const-string/jumbo v10, "EC"

    const-string/jumbo v11, "BC"

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x50

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x10

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "X:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Y:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removed pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v11, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v12, -0x50

    invoke-direct {v11, v12}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    invoke-virtual {v9, v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string/jumbo v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "added new pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v0

    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "final tlv : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    array-length v10, v0

    const/4 v11, 0x0

    invoke-static {v0, v11, v10}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v7

    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v10

    return-object v10

    :cond_6
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10}, Ljava/lang/Exception;-><init>()V

    throw v10
.end method
