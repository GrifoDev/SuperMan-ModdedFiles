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

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    move v0, v1

    .line 159
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 163
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 164
    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 165
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    .line 166
    and-long/2addr v2, v4

    .line 168
    new-array v0, v7, [B

    .line 169
    aput-byte v1, v0, v1

    const/4 v4, 0x1

    .line 170
    aput-byte v1, v0, v4

    const/4 v4, 0x2

    .line 171
    aput-byte v1, v0, v4

    const/4 v4, 0x3

    .line 172
    aput-byte v1, v0, v4

    const/4 v1, 0x4

    const-wide/32 v4, -0x1000000

    .line 173
    and-long/2addr v4, v2

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    const/4 v1, 0x5

    const-wide/32 v4, 0xff0000

    .line 174
    and-long/2addr v4, v2

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    const-wide/32 v4, 0xff00

    .line 175
    and-long/2addr v4, v2

    shr-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    const-wide/16 v4, 0xff

    .line 176
    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 177
    return-object v0

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static cryptValue([B[BILjava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p0, p2, p3, p4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 64
    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    .line 66
    invoke-virtual {v0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    add-int/2addr v1, v0

    .line 67
    array-length v0, v4

    if-lt v1, v0, :cond_0

    .line 74
    :goto_0
    return-object v4

    .line 68
    :cond_0
    new-array v0, v1, [B

    .line 69
    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    goto :goto_0
.end method

.method public static getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 3

    .prologue
    const-string/jumbo v0, "DESede"

    const-string/jumbo v1, "/"

    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    .line 97
    if-ne v1, v2, :cond_0

    .line 100
    :goto_0
    new-instance v1, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v1, p0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 101
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 104
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Lcom/absolute/android/crypt/Crypt;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 106
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 107
    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 109
    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v1, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x2000

    .line 134
    :try_start_2
    new-array v0, v0, [B

    .line 135
    :cond_0
    invoke-virtual {v3, v0}, Ljava/io/FilterInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 137
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/absolute/android/crypt/HexUtilities;->EncodeBytesAsHexString([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 145
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 153
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 140
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 145
    :goto_2
    if-nez v3, :cond_1

    .line 148
    if-nez v1, :cond_2

    .line 151
    :goto_3
    throw v0

    .line 146
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    goto :goto_3

    .line 151
    :catch_2
    move-exception v1

    goto :goto_3

    .line 149
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 140
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 152
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method
