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

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lsun/net/www/protocol/http/DigestAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/DigestAuthentication;->-assertionsDisabled:Z

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

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

    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication;->zeroPad:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

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

    if-eqz p1, :cond_0

    const/16 v1, 0x70

    :goto_0
    sget-object v2, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    iput-object p5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    iput-object p6, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    iput-object p7, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    return-void

    :cond_0
    const/16 v1, 0x73

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x70

    :goto_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    invoke-direct {p0, v0, v1, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    iput-object p4, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    iput-object p5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    iput-object p6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    return-void

    :cond_0
    const/16 v0, 0x73

    goto :goto_0
.end method

.method private computeDigest(ZLjava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "MD5-sess"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v5, "MD5"

    :cond_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    if-eqz v9, :cond_2

    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getCachedHA1()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

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

    move-object/from16 v0, p3

    invoke-direct {p0, v10, v0, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v11

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

    const/4 v12, 0x0

    invoke-direct {p0, v1, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v3

    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12, v3}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setCachedHA1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

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

    :goto_1
    const/4 v12, 0x0

    invoke-direct {p0, v2, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v4

    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v12

    if-eqz v12, :cond_4

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

    const-string/jumbo v13, ":auth:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    const/4 v12, 0x0

    invoke-direct {p0, v6, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v7

    return-object v7

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

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

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

    goto/16 :goto_1

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

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method private encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string/jumbo v6, "ISO-8859-1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p2, :cond_2

    array-length v6, p2

    new-array v3, v6, [B

    const/4 v2, 0x0

    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_1

    aget-char v6, p2, v2

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    sget-boolean v6, Lsun/net/www/protocol/http/DigestAuthentication;->-assertionsDisabled:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    invoke-virtual {p3, v3}, Ljava/security/MessageDigest;->update([B)V

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([BB)V

    :cond_2
    invoke-virtual {p3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_3

    aget-byte v6, v0, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v1, v6, 0xf

    sget-object v6, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    aget-char v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v6, v0, v2

    and-int/lit8 v1, v6, 0xf

    sget-object v6, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    aget-char v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getOpaque()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getCnonce()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNonce()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->incrementNC()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNCCount()I

    move-result v14

    const/4 v10, 0x0

    const/4 v1, -0x1

    if-eq v14, v1, :cond_0

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v1, 0x8

    if-ge v13, v1, :cond_0

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

    const-string/jumbo v15, "\""

    if-eqz v17, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\", nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " username=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", nonce=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uri=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", response=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", algorithm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v16, :cond_2

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

    :cond_2
    if-eqz v9, :cond_3

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

    :cond_3
    if-eqz v17, :cond_4

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

    return-object v19

    :catch_0
    move-exception v12

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getOpaque()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-static {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->-get0(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNonce()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNCCount()I

    move-result v16

    const/4 v11, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "No authentication information in response"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v2, 0x8

    if-ge v15, v2, :cond_1

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

    new-instance v19, Lsun/net/www/HeaderParser;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "rspauth"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_2

    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "No digest in response"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v13

    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Unsupported algorithm in response"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Response digest invalid"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string/jumbo v2, "nextnonce"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_0
    return-void

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lsun/net/www/HeaderParser;

    invoke-direct {v1, p1}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "stale"

    invoke-virtual {v1, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nonce"

    invoke-virtual {v1, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    return v4

    :cond_1
    return v4

    :cond_2
    iget-object v3, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v3, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3
.end method

.method public setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const-string/jumbo v6, "nonce"

    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const-string/jumbo v6, "opaque"

    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setOpaque(Ljava/lang/String;)V

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const-string/jumbo v6, "qop"

    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setQop(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    iget-char v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    const/16 v6, 0x70

    if-ne v5, v6, :cond_1

    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v5

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-ne v5, v6, :cond_1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-static {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->-get1(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    if-nez v5, :cond_2

    :cond_0
    return v7

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getMethod()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    :cond_3
    const-string/jumbo v5, "algorithm"

    invoke-virtual {p2, v5}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string/jumbo v0, "MD5"

    :cond_5
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v5, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setAlgorithm(Ljava/lang/String;)V

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNewCnonce()V

    :cond_6
    invoke-direct {p0, v3, v2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_7
    return v7
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
