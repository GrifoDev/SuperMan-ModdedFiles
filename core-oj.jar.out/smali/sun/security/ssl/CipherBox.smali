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

    .prologue
    .line 94
    new-instance v0, Lsun/security/ssl/CipherBox;

    invoke-direct {v0}, Lsun/security/ssl/CipherBox;-><init>()V

    sput-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    .line 97
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    .line 91
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    .line 133
    return-void
.end method

.method private constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)V
    .locals 7
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "bulkCipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p3, "key"    # Ljavax/crypto/SecretKey;
    .param p4, "iv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 150
    iget-object v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    .line 151
    if-eqz p6, :cond_3

    const/4 v3, 0x1

    .line 153
    .local v3, "mode":I
    :goto_0
    if-nez p5, :cond_0

    .line 154
    invoke-static {}, Lsun/security/ssl/JsseJce;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p5

    .line 156
    :cond_0
    iput-object p5, p0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    .line 157
    iget-boolean v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->isCBCMode:Z

    iput-boolean v4, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    .line 169
    if-nez p4, :cond_1

    iget v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    if-eqz v4, :cond_1

    .line 170
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 171
    iget v4, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_1

    .line 172
    iget v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    invoke-static {v4}, Lsun/security/ssl/CipherBox;->getFixedMask(I)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p4

    .line 175
    :cond_1
    iget-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v3, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 179
    iget-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    iput v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    .line 181
    iget v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 182
    const/4 v4, 0x0

    iput v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_2
    return-void

    .line 151
    .end local v3    # "mode":I
    :cond_3
    const/4 v3, 0x2

    .restart local v3    # "mode":I
    goto :goto_0

    .line 189
    .end local v3    # "mode":I
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create cipher "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 186
    .end local v1    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create cipher "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-direct {v4, v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 185
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    throw v2
.end method

.method private static addPadding(Ljava/nio/ByteBuffer;I)I
    .locals 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "blockSize"    # I

    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .line 567
    .local v1, "len":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 569
    .local v3, "offset":I
    add-int/lit8 v2, v1, 0x1

    .line 573
    .local v2, "newlen":I
    rem-int v6, v2, p1

    if-eqz v6, :cond_0

    .line 574
    add-int/lit8 v6, p1, -0x1

    add-int/2addr v2, v6

    .line 575
    rem-int v6, v2, p1

    sub-int/2addr v2, v6

    .line 577
    :cond_0
    sub-int v6, v2, v1

    int-to-byte v5, v6

    .line 582
    .local v5, "pad":B
    add-int v6, v2, v3

    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/2addr v3, v1

    move v4, v3

    .end local v3    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 588
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v6, v5, -0x1

    int-to-byte v6, v6

    invoke-virtual {p0, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 587
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 592
    invoke-virtual {p0, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 594
    return v2
.end method

.method private static addPadding([BIII)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "blockSize"    # I

    .prologue
    .line 535
    add-int/lit8 v1, p2, 0x1

    .line 539
    .local v1, "newlen":I
    rem-int v4, v1, p3

    if-eqz v4, :cond_0

    .line 540
    add-int/lit8 v4, p3, -0x1

    add-int/2addr v1, v4

    .line 541
    rem-int v4, v1, p3

    sub-int/2addr v1, v4

    .line 543
    :cond_0
    sub-int v4, v1, p2

    int-to-byte v3, v4

    .line 545
    .local v3, "pad":B
    array-length v4, p0

    add-int v5, v1, p1

    if-ge v4, v5, :cond_1

    .line 546
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "no space to pad buffer"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 552
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/2addr p1, p2

    move v2, p1

    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 553
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    .line 552
    add-int/lit8 v0, v0, 0x1

    move v2, p1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 555
    :cond_2
    return v1
.end method

.method private static checkPadding(Ljava/nio/ByteBuffer;B)[I
    .locals 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "pad"    # B

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 636
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 637
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "hasRemaining() must be positive"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    :cond_0
    filled-new-array {v4, v4}, [I

    move-result-object v1

    .line 643
    .local v1, "results":[I
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v5, :cond_3

    .line 645
    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    if-gt v0, v5, :cond_2

    .line 646
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eq v2, p1, :cond_1

    .line 647
    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 645
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 649
    :cond_1
    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_2

    .line 644
    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    .line 654
    :cond_3
    return-object v1
.end method

.method private static checkPadding([BIIB)[I
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "pad"    # B

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 607
    if-gtz p2, :cond_0

    .line 608
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "padding len must be positive"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 613
    :cond_0
    filled-new-array {v5, v5}, [I

    move-result-object v2

    .line 614
    .local v2, "results":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :cond_1
    if-gt v0, v6, :cond_3

    .line 615
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_1

    if-gt v0, v6, :cond_1

    .line 616
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eq v3, p3, :cond_2

    .line 617
    aget v3, v2, v5

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v5

    .line 615
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_2
    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_1

    .line 624
    .end local v1    # "j":I
    :cond_3
    return-object v2
.end method

.method private static getFixedMask(I)Ljavax/crypto/spec/IvParameterSpec;
    .locals 3
    .param p0, "ivSize"    # I

    .prologue
    .line 216
    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 217
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    .line 220
    :cond_0
    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 221
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .end local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-array v1, p0, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 223
    .restart local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1
    return-object v0
.end method

.method static newCipherBox(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;
    .locals 7
    .param p0, "version"    # Lsun/security/ssl/ProtocolVersion;
    .param p1, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "iv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p1, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    if-nez v0, :cond_0

    .line 202
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

    .line 205
    :cond_0
    sget-object v0, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    if-ne p1, v0, :cond_1

    .line 206
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    return-object v0

    .line 208
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
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "tagLen"    # I
    .param p2, "blockSize"    # I
    .param p3, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 713
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 714
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 717
    .local v2, "offset":I
    add-int v6, v2, v0

    add-int/lit8 v4, v6, -0x1

    .line 718
    .local v4, "padOffset":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v3, v6, 0xff

    .line 720
    .local v3, "padLen":I
    add-int/lit8 v6, v3, 0x1

    sub-int v1, v0, v6

    .line 721
    .local v1, "newLen":I
    sub-int v6, v1, p1

    if-gez v6, :cond_0

    .line 727
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    invoke-static {v6, v7}, Lsun/security/ssl/CipherBox;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    .line 729
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

    .line 734
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 735
    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    .line 733
    invoke-static {v6, v7}, Lsun/security/ssl/CipherBox;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    move-result-object v5

    .line 736
    .local v5, "results":[I
    iget v6, p3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_1

    .line 737
    aget v6, v5, v8

    if-eqz v6, :cond_2

    .line 738
    new-instance v6, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v7, "Invalid TLS padding data"

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 745
    :cond_1
    if-le v3, p2, :cond_2

    .line 746
    new-instance v6, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v7, "Invalid SSLv3 padding"

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 753
    :cond_2
    add-int v6, v2, v1

    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 754
    add-int v6, v2, v1

    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 756
    return v1
.end method

.method private static removePadding([BIIIILsun/security/ssl/ProtocolVersion;)I
    .locals 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "tagLen"    # I
    .param p4, "blockSize"    # I
    .param p5, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 672
    add-int v4, p1, p2

    add-int/lit8 v2, v4, -0x1

    .line 673
    .local v2, "padOffset":I
    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    .line 675
    .local v1, "padLen":I
    add-int/lit8 v4, v1, 0x1

    sub-int v0, p2, v4

    .line 676
    .local v0, "newLen":I
    sub-int v4, v0, p3

    if-gez v4, :cond_0

    .line 682
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    invoke-static {p0, p1, p2, v4}, Lsun/security/ssl/CipherBox;->checkPadding([BIIB)[I

    .line 684
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

    .line 688
    :cond_0
    add-int v4, p1, v0

    .line 689
    add-int/lit8 v5, v1, 0x1

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    .line 688
    invoke-static {p0, v4, v5, v6}, Lsun/security/ssl/CipherBox;->checkPadding([BIIB)[I

    move-result-object v3

    .line 690
    .local v3, "results":[I
    iget v4, p5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_1

    .line 691
    aget v4, v3, v7

    if-eqz v4, :cond_2

    .line 692
    new-instance v4, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v5, "Invalid TLS padding data"

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 699
    :cond_1
    if-le v1, p4, :cond_2

    .line 700
    new-instance v4, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v5, "Invalid SSLv3 padding"

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_2
    return v0
.end method


# virtual methods
.method decrypt(Ljava/nio/ByteBuffer;I)I
    .locals 17
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "tagLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    .line 458
    .local v9, "len":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v13, :cond_0

    .line 459
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 460
    return v9

    .line 467
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v12

    .line 468
    .local v12, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 469
    .local v4, "dup":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 470
    .local v11, "newLen":I
    if-eq v11, v9, :cond_1

    .line 472
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cipher buffering error in JCE provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v15

    .line 472
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v4    # "dup":Ljava/nio/ByteBuffer;
    .end local v11    # "newLen":I
    .end local v12    # "pos":I
    :catch_0
    move-exception v6

    .line 527
    .local v6, "e":Ljavax/crypto/ShortBufferException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 528
    .local v7, "exc":Ljava/lang/RuntimeException;
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 529
    throw v7

    .line 476
    .end local v6    # "e":Ljavax/crypto/ShortBufferException;
    .end local v7    # "exc":Ljava/lang/RuntimeException;
    .restart local v4    # "dup":Ljava/nio/ByteBuffer;
    .restart local v11    # "newLen":I
    .restart local v12    # "pos":I
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

    .line 478
    :try_start_2
    new-instance v8, Lsun/misc/HexDumpEncoder;

    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 480
    .local v8, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 481
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Padded plaintext after DECRYPTION:  len = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 480
    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 484
    invoke-virtual {v8, v13, v14}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    .line 492
    .end local v8    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_2
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v13, :cond_4

    .line 493
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 495
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 494
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13, v14}, Lsun/security/ssl/CipherBox;->removePadding(Ljava/nio/ByteBuffer;IILsun/security/ssl/ProtocolVersion;)I

    move-result v11

    .line 497
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v13, v13, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v14, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v14, v14, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v13, v14, :cond_4

    .line 498
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-ge v11, v13, :cond_3

    .line 499
    new-instance v13, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v14, "invalid explicit IV"

    invoke-direct {v13, v14}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 503
    :cond_3
    const/4 v3, 0x0

    .line 504
    .local v3, "buf":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v10

    .line 505
    .local v10, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 506
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 507
    .local v2, "arrayOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 508
    .local v3, "buf":[B
    add-int v13, v2, v12

    move-object/from16 v0, p0

    iget v14, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v13, v14

    .line 509
    add-int v14, v2, v12

    sub-int v15, v10, v12

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    .line 508
    invoke-static {v3, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 510
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int v13, v10, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 521
    .end local v2    # "arrayOffset":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v10

    .line 522
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 525
    .end local v3    # "buf":[B
    .end local v10    # "limit":I
    :cond_4
    return v11

    .line 512
    .local v3, "buf":[B
    .restart local v10    # "limit":I
    :cond_5
    sub-int v13, v10, v12

    move-object/from16 v0, p0

    iget v14, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int/2addr v13, v14

    new-array v3, v13, [B

    .line 513
    .local v3, "buf":[B
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v13, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 514
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 515
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 516
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 517
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int v13, v10, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 486
    .end local v3    # "buf":[B
    .end local v10    # "limit":I
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method decrypt([BIII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "tagLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 399
    return p3

    .line 403
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

    .line 404
    .local v2, "newLen":I
    if-eq v2, p3, :cond_1

    .line 406
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cipher buffering error in JCE provider "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    iget-object v3, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v2    # "newLen":I
    :catch_0
    move-exception v7

    .line 440
    .local v7, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    .end local v7    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v2    # "newLen":I
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

    .line 411
    :try_start_2
    new-instance v8, Lsun/misc/HexDumpEncoder;

    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 413
    .local v8, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Padded plaintext after DECRYPTION:  len = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 418
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 416
    invoke-virtual {v8, v0, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    .line 422
    .end local v8    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_2
    :goto_0
    :try_start_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v0, :cond_4

    .line 424
    iget v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    iget-object v5, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object v0, p1

    move v1, p2

    move v3, p4

    .line 423
    invoke-static/range {v0 .. v5}, Lsun/security/ssl/CipherBox;->removePadding([BIIIILsun/security/ssl/ProtocolVersion;)I

    move-result v2

    .line 426
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_4

    .line 427
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-ge v2, v0, :cond_3

    .line 428
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v1, "invalid explicit IV"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v0, p2

    .line 433
    iget v1, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    sub-int v1, v2, v1

    .line 432
    invoke-static {p1, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 435
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    sub-int/2addr v2, v0

    .line 438
    :cond_4
    return v2

    .line 419
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 766
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/GeneralSecurityException;
    goto :goto_0
.end method

.method encrypt(Ljava/nio/ByteBuffer;)I
    .locals 16
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    .line 296
    .local v8, "len":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v13, :cond_0

    .line 297
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 298
    return v8

    .line 302
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v11

    .line 304
    .local v11, "pos":I
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v13, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v13, v13, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v14, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v14, v14, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v13, v14, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    new-array v12, v13, [B

    .line 309
    .local v12, "prefix":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, "buf":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v9

    .line 314
    .local v9, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 316
    .local v1, "arrayOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 317
    .local v2, "buf":[B
    add-int v13, v1, v11

    .line 318
    add-int v14, v1, v11

    array-length v15, v12

    add-int/2addr v14, v15

    .line 319
    sub-int v15, v9, v11

    .line 317
    invoke-static {v2, v13, v2, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 320
    array-length v13, v12

    add-int/2addr v13, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 328
    .end local v1    # "arrayOffset":I
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 336
    .end local v2    # "buf":[B
    .end local v9    # "limit":I
    .end local v12    # "prefix":[B
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lsun/security/ssl/CipherBox;->addPadding(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 339
    :cond_2
    sget-object v13, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    if-eqz v13, :cond_3

    const-string/jumbo v13, "plaintext"

    invoke-static {v13}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_3

    .line 341
    :try_start_1
    new-instance v7, Lsun/misc/HexDumpEncoder;

    invoke-direct {v7}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 343
    .local v7, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 344
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Padded plaintext before ENCRYPTION:  len = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 343
    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    .end local v7    # "hd":Lsun/misc/HexDumpEncoder;
    :goto_1
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 358
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 359
    .local v3, "dup":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v3, v0}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 361
    .local v10, "newLen":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v13

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v14

    if-eq v13, v14, :cond_5

    .line 362
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "bytebuffer padding error"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    .line 371
    .end local v3    # "dup":Ljava/nio/ByteBuffer;
    .end local v10    # "newLen":I
    .end local v11    # "pos":I
    :catch_0
    move-exception v5

    .line 372
    .local v5, "e":Ljavax/crypto/ShortBufferException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 373
    .local v6, "exc":Ljava/lang/RuntimeException;
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 374
    throw v6

    .line 322
    .end local v5    # "e":Ljavax/crypto/ShortBufferException;
    .end local v6    # "exc":Ljava/lang/RuntimeException;
    .local v2, "buf":[B
    .restart local v9    # "limit":I
    .restart local v11    # "pos":I
    .restart local v12    # "prefix":[B
    :cond_4
    sub-int v13, v9, v11

    :try_start_3
    new-array v2, v13, [B

    .line 323
    .local v2, "buf":[B
    sub-int v13, v9, v11

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 324
    array-length v13, v12

    add-int/2addr v13, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 325
    array-length v13, v12

    add-int/2addr v13, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 326
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 365
    .end local v2    # "buf":[B
    .end local v9    # "limit":I
    .end local v12    # "prefix":[B
    .restart local v3    # "dup":Ljava/nio/ByteBuffer;
    .restart local v10    # "newLen":I
    :cond_5
    if-eq v10, v8, :cond_6

    .line 367
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cipher buffering error in JCE provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v15

    .line 367
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    .line 370
    :cond_6
    return v10

    .line 348
    .end local v3    # "dup":Ljava/nio/ByteBuffer;
    .end local v10    # "newLen":I
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method encrypt([BII)I
    .locals 11
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 235
    return p3

    .line 239
    :cond_0
    :try_start_0
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_1

    .line 243
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    new-array v10, v0, [B

    .line 244
    .local v10, "prefix":[B
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 248
    array-length v0, v10

    add-int/2addr v0, p2

    .line 247
    invoke-static {p1, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 252
    array-length v0, v10

    .line 251
    const/4 v1, 0x0

    invoke-static {v10, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    array-length v0, v10

    add-int/2addr p3, v0

    .line 257
    .end local v10    # "prefix":[B
    :cond_1
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    invoke-static {p1, p2, p3, v0}, Lsun/security/ssl/CipherBox;->addPadding([BIII)I

    move-result p3

    .line 259
    :cond_2
    sget-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "plaintext"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    :try_start_1
    new-instance v8, Lsun/misc/HexDumpEncoder;

    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 263
    .local v8, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Padded plaintext before ENCRYPTION:  len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 268
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 266
    invoke-virtual {v8, v0, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    .end local v8    # "hd":Lsun/misc/HexDumpEncoder;
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

    .line 272
    .local v9, "newLen":I
    if-eq v9, p3, :cond_4

    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cipher buffering error in JCE provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    .end local v9    # "newLen":I
    :catch_0
    move-exception v7

    .line 279
    .local v7, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    .end local v7    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v9    # "newLen":I
    :cond_4
    return v9

    .line 269
    .end local v9    # "newLen":I
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method isCBCMode()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    return v0
.end method

.method isNullCipher()Z
    .locals 1

    .prologue
    .line 790
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
    .param p1, "tagLen"    # I
    .param p2, "fragmentLen"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 807
    iget-boolean v3, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    if-nez v3, :cond_1

    .line 808
    if-lt p2, p1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 811
    :cond_1
    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    rem-int v3, p2, v3

    if-nez v3, :cond_5

    .line 812
    add-int/lit8 v0, p1, 0x1

    .line 813
    .local v0, "minimal":I
    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    if-lt v0, v3, :cond_3

    .line 814
    :goto_1
    iget-object v3, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_2

    .line 815
    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    add-int/2addr v0, v3

    .line 818
    :cond_2
    if-lt p2, v0, :cond_4

    :goto_2
    return v1

    .line 813
    :cond_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    goto :goto_1

    :cond_4
    move v1, v2

    .line 818
    goto :goto_2

    .line 821
    .end local v0    # "minimal":I
    :cond_5
    return v2
.end method
