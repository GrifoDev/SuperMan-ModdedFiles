.class public Lcom/absolute/android/crypt/Crypt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTR_StackMapTable:Ljava/lang/String; = "dummy"

.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "DESede"

.field public static final CIPHER_TRANSFORM:Ljava/lang/String; = "DESede/CBC/PKCS5Padding"

.field private static final a:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v0, v10, v3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    new-array v3, v11, [B

    aput-byte v10, v3, v10

    const/4 v6, 0x1

    aput-byte v10, v3, v6

    const/4 v6, 0x2

    aput-byte v10, v3, v6

    const/4 v6, 0x3

    aput-byte v10, v3, v6

    const-wide/32 v6, -0x1000000

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x4

    aput-byte v6, v3, v7

    const-wide/32 v6, 0xff0000

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x5

    aput-byte v6, v3, v7

    const-wide/32 v6, 0xff00

    and-long/2addr v6, v4

    shr-long/2addr v6, v11

    long-to-int v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x6

    aput-byte v6, v3, v7

    const-wide/16 v6, 0xff

    and-long/2addr v6, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x7

    aput-byte v6, v3, v7

    return-object v3

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static cryptValue([B[BILjava/lang/String;Ljava/lang/String;)[B
    .locals 7

    const/4 v2, 0x0

    invoke-static {p0, p2, p3, p4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    add-int/2addr v6, v0

    array-length v0, v4

    if-lt v6, v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-array v0, v6, [B

    invoke-static {v4, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    goto :goto_0
.end method

.method public static getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 5

    const-string/jumbo v0, "DESede"

    const-string/jumbo v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    new-instance v2, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v2, p0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Lcom/absolute/android/crypt/Crypt;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/security/DigestInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v1, v3, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v4, 0x2000

    :try_start_3
    new-array v4, v4, [B

    :cond_0
    invoke-virtual {v1, v4}, Ljava/security/DigestInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/absolute/android/crypt/HexUtilities;->EncodeBytesAsHexString([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v4

    :try_start_4
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_1
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    :goto_2
    if-nez v0, :cond_1

    if-nez v2, :cond_2

    :goto_3
    throw v4

    :cond_1
    :try_start_6
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v4

    move-object v2, v3

    goto :goto_1

    :catch_4
    move-exception v4

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    goto :goto_1
.end method
