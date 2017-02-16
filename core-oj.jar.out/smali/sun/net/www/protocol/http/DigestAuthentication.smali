.class Lsun/net/www/protocol/http/DigestAuthentication;
.super Lsun/net/www/protocol/http/AuthenticationInfo;
.source "DigestAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final charArray:[C

.field private static final serialVersionUID:J = 0x64L

.field private static final zeroPad:[Ljava/lang/String;


# instance fields
.field private authMethod:Ljava/lang/String;

.field params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lsun/net/www/protocol/http/DigestAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/DigestAuthentication;->-assertionsDisabled:Z

    .line 479
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    .line 484
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 486
    const-string/jumbo v3, "00000000"

    aput-object v3, v0, v1

    const-string/jumbo v1, "0000000"

    aput-object v1, v0, v2

    const-string/jumbo v1, "000000"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "00000"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "0000"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "000"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "00"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "0"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 484
    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication;->zeroPad:[Ljava/lang/String;

    .line 48
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    .line 479
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V
    .locals 6
    .param p1, "isProxy"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "authMethod"    # Ljava/lang/String;
    .param p6, "pw"    # Ljava/net/PasswordAuthentication;
    .param p7, "params"    # Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    const/16 v1, 0x70

    .line 191
    :goto_0
    sget-object v2, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 190
    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iput-object p5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    .line 196
    iput-object p6, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    .line 197
    iput-object p7, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    .line 189
    return-void

    .line 190
    :cond_0
    const/16 v1, 0x73

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V
    .locals 2
    .param p1, "isProxy"    # Z
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "authMethod"    # Ljava/lang/String;
    .param p5, "pw"    # Ljava/net/PasswordAuthentication;
    .param p6, "params"    # Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    const/16 v0, 0x70

    .line 179
    :goto_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    .line 178
    invoke-direct {p0, v0, v1, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    .line 182
    iput-object p4, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    .line 183
    iput-object p5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    .line 184
    iput-object p6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    .line 177
    return-void

    .line 178
    :cond_0
    const/16 v0, 0x73

    goto :goto_0
.end method

.method private computeDigest(ZLjava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "isRequest"    # Z
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "connMethod"    # Ljava/lang/String;
    .param p6, "requestURI"    # Ljava/lang/String;
    .param p7, "nonceString"    # Ljava/lang/String;
    .param p8, "cnonce"    # Ljava/lang/String;
    .param p9, "ncValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "algorithm":Ljava/lang/String;
    const-string/jumbo v12, "MD5-sess"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 442
    .local v9, "md5sess":Z
    if-eqz v9, :cond_0

    const-string/jumbo v5, "MD5"

    .end local v5    # "algorithm":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 444
    .local v8, "md":Ljava/security/MessageDigest;
    if-eqz v9, :cond_2

    .line 445
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getCachedHA1()Ljava/lang/String;

    move-result-object v3

    .local v3, "HashA1":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 446
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {p0, v10, v0, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v11

    .line 448
    .local v11, "s1":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "A1":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-direct {p0, v1, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v3

    .line 450
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12, v3}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setCachedHA1(Ljava/lang/String;)V

    .line 458
    .end local v1    # "A1":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "s1":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 459
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "A2":Ljava/lang/String;
    :goto_1
    const/4 v12, 0x0

    invoke-direct {p0, v2, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "HashA2":Ljava/lang/String;
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 467
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 468
    const-string/jumbo v13, ":auth:"

    .line 467
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "combo":Ljava/lang/String;
    :goto_2
    const/4 v12, 0x0

    invoke-direct {p0, v6, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, "finalHash":Ljava/lang/String;
    return-object v7

    .line 453
    .end local v2    # "A2":Ljava/lang/String;
    .end local v3    # "HashA1":Ljava/lang/String;
    .end local v4    # "HashA2":Ljava/lang/String;
    .end local v6    # "combo":Ljava/lang/String;
    .end local v7    # "finalHash":Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .restart local v1    # "A1":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "HashA1":Ljava/lang/String;
    goto/16 :goto_0

    .line 461
    .end local v1    # "A1":Ljava/lang/String;
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "A2":Ljava/lang/String;
    goto/16 :goto_1

    .line 471
    .restart local v4    # "HashA2":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 472
    const-string/jumbo v13, ":"

    .line 471
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "combo":Ljava/lang/String;
    goto :goto_2
.end method

.method private encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "passwd"    # [C
    .param p3, "md"    # Ljava/security/MessageDigest;

    .prologue
    .line 491
    :try_start_0
    const-string/jumbo v6, "ISO-8859-1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    if-eqz p2, :cond_2

    .line 496
    array-length v6, p2

    new-array v3, v6, [B

    .line 497
    .local v3, "passwdBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_1

    .line 498
    aget-char v6, p2, v2

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v2    # "i":I
    .end local v3    # "passwdBytes":[B
    :catch_0
    move-exception v5

    .line 493
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v6, Lsun/net/www/protocol/http/DigestAuthentication;->-assertionsDisabled:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 499
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    .restart local v3    # "passwdBytes":[B
    :cond_1
    invoke-virtual {p3, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 500
    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 502
    .end local v2    # "i":I
    .end local v3    # "passwdBytes":[B
    :cond_2
    invoke-virtual {p3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 504
    .local v0, "digest":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 505
    .local v4, "res":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 506
    aget-byte v6, v0, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v1, v6, 0xf

    .line 507
    .local v1, "hashchar":I
    sget-object v6, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    aget-char v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 508
    aget-byte v6, v0, v2

    and-int/lit8 v1, v6, 0xf

    .line 509
    sget-object v6, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    aget-char v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 511
    .end local v1    # "hashchar":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v4

    .line 332
    .local v4, "passwd":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v17

    .line 333
    .local v17, "qop":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getOpaque()Ljava/lang/String;

    move-result-object v16

    .line 334
    .local v16, "opaque":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getCnonce()Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "cnonce":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNonce()Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, "nonce":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->incrementNC()V

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNCCount()I

    move-result v14

    .line 339
    .local v14, "nccount":I
    const/4 v10, 0x0

    .line 341
    .local v10, "ncstring":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq v14, v1, :cond_0

    .line 342
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, "ncstring":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    .line 344
    .local v13, "len":I
    const/16 v1, 0x8

    if-ge v13, v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsun/net/www/protocol/http/DigestAuthentication;->zeroPad:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 349
    .end local v10    # "ncstring":Ljava/lang/String;
    .end local v13    # "len":I
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v1}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v10}, Lsun/net/www/protocol/http/DigestAuthentication;->computeDigest(ZLjava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 355
    .local v18, "response":Ljava/lang/String;
    const-string/jumbo v15, "\""

    .line 356
    .local v15, "ncfield":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\", nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 360
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    const-string/jumbo v2, " username=\""

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    const-string/jumbo v2, "\", realm=\""

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string/jumbo v2, "\", nonce=\""

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string/jumbo v2, ", uri=\""

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, "\", response=\""

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, "\", algorithm=\""

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 368
    .local v19, "value":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", opaque=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 371
    :cond_2
    if-eqz v9, :cond_3

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", cnonce=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 374
    :cond_3
    if-eqz v17, :cond_4

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", qop=\"auth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 377
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 378
    return-object v19

    .line 351
    .end local v15    # "ncfield":Ljava/lang/String;
    .end local v18    # "response":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 352
    .local v12, "ex":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v5

    .line 389
    .local v5, "passwd":[C
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "username":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v20

    .line 391
    .local v20, "qop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getOpaque()Ljava/lang/String;

    move-result-object v18

    .line 392
    .local v18, "opaque":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-static {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->-get0(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;

    move-result-object v10

    .line 393
    .local v10, "cnonce":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNonce()Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "nonce":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNCCount()I

    move-result v16

    .line 396
    .local v16, "nccount":I
    const/4 v11, 0x0

    .line 398
    .local v11, "ncstring":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 399
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "No authentication information in response"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 403
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 404
    .local v11, "ncstring":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    .line 405
    .local v15, "len":I
    const/16 v2, 0x8

    if-ge v15, v2, :cond_1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/www/protocol/http/DigestAuthentication;->zeroPad:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 409
    .end local v11    # "ncstring":Ljava/lang/String;
    .end local v15    # "len":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v11}, Lsun/net/www/protocol/http/DigestAuthentication;->computeDigest(ZLjava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 411
    .local v14, "expected":Ljava/lang/String;
    new-instance v19, Lsun/net/www/HeaderParser;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 412
    .local v19, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v2, "rspauth"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 413
    .local v21, "rspauth":Ljava/lang/String;
    if-nez v21, :cond_2

    .line 414
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "No digest in response"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v14    # "expected":Ljava/lang/String;
    .end local v19    # "p":Lsun/net/www/HeaderParser;
    .end local v21    # "rspauth":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 426
    .local v13, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Unsupported algorithm in response"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    .end local v13    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v14    # "expected":Ljava/lang/String;
    .restart local v19    # "p":Lsun/net/www/HeaderParser;
    .restart local v21    # "rspauth":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 417
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Response digest invalid"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_3
    const-string/jumbo v2, "nextnonce"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 421
    .local v17, "nextnonce":Ljava/lang/String;
    if-eqz v17, :cond_4

    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 387
    :cond_4
    :goto_0
    return-void

    .line 422
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "requestURI"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 5
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 255
    new-instance v1, Lsun/net/www/HeaderParser;

    invoke-direct {v1, p1}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v3, "stale"

    invoke-virtual {v1, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    const-string/jumbo v3, "nonce"

    invoke-virtual {v1, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "newNonce":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    :cond_0
    return v4

    .line 258
    .end local v0    # "newNonce":Ljava/lang/String;
    :cond_1
    return v4

    .line 263
    .restart local v0    # "newNonce":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v3, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V

    .line 264
    const/4 v3, 0x1

    return v3
.end method

.method public setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 9
    .param p1, "conn"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "p"    # Lsun/net/www/HeaderParser;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 276
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const-string/jumbo v6, "nonce"

    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V

    .line 277
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const-string/jumbo v6, "opaque"

    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setOpaque(Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const-string/jumbo v6, "qop"

    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setQop(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v3, ""

    .line 282
    .local v3, "uri":Ljava/lang/String;
    iget-char v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    const/16 v6, 0x70

    if-ne v5, v6, :cond_1

    .line 283
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v5

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-ne v5, v6, :cond_1

    .line 284
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 285
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    .line 293
    .local v2, "method":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-static {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->-get1(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 294
    :cond_0
    return v7

    .line 288
    .end local v2    # "method":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 290
    :goto_1
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getMethod()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "method":Ljava/lang/String;
    goto :goto_0

    .line 289
    .end local v2    # "method":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "method":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 296
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_3

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 301
    iget-object v6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    .line 303
    :cond_3
    const-string/jumbo v5, "algorithm"

    invoke-virtual {p2, v5}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "algorithm":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string/jumbo v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 305
    :cond_4
    const-string/jumbo v0, "MD5"

    .line 307
    :cond_5
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v5, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setAlgorithm(Ljava/lang/String;)V

    .line 313
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 314
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNewCnonce()V

    .line 317
    :cond_6
    invoke-direct {p0, v3, v2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 319
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return v8

    .line 322
    :cond_7
    return v7
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method
