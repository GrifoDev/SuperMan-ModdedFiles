.class public Lcom/sun/org/apache/xml/internal/security/utils/Base64;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final BASE64DEFAULTLENGTH:I = 0x4c

.field private static final BASELENGTH:I = 0xff

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field static _base64length:I

.field private static final base64Alphabet:[B

.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

.field private static final fDebug:Z

.field static log:Ljava/util/logging/Logger;

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v7, 0x3e

    const/16 v4, 0x30

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->log:Ljava/util/logging/Logger;

    const/16 v0, 0x4c

    sput v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->_base64length:I

    const/16 v0, 0xff

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    move v0, v1

    :goto_1
    const/16 v2, 0xff

    if-lt v0, v2, :cond_1

    const/16 v0, 0x5a

    :goto_2
    const/16 v2, 0x41

    if-ge v0, v2, :cond_2

    const/16 v0, 0x7a

    :goto_3
    const/16 v2, 0x61

    if-ge v0, v2, :cond_3

    const/16 v0, 0x39

    :goto_4
    if-ge v0, v4, :cond_4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aput-byte v7, v0, v5

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/16 v2, 0x3f

    aput-byte v2, v0, v6

    move v0, v1

    :goto_5
    const/16 v2, 0x19

    if-le v0, v2, :cond_5

    const/16 v0, 0x1a

    move v2, v0

    move v0, v1

    :goto_6
    const/16 v3, 0x33

    if-le v2, v3, :cond_6

    const/16 v0, 0x34

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_7
    const/16 v2, 0x3d

    if-le v1, v2, :cond_7

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v0, v7

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    const/16 v1, 0x3f

    aput-char v6, v0, v1

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.Base64"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v4, v0, 0x61

    int-to-char v4, v4

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v3, v0, [B

    :goto_0
    move v0, v1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_1
    :goto_2
    aget-byte v0, v3, v1

    aget-byte v1, v3, v9

    aget-byte v2, v3, v10

    aget-byte v3, v3, v8

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v0, v4, v0

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v1, v4, v1

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v4, v4, v2

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v5, v5, v3

    if-ne v4, v7, :cond_9

    :cond_2
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_3
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    int-to-byte v4, v2

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    int-to-byte v5, v4

    aput-byte v5, v3, v0

    if-eq v4, v7, :cond_7

    const/4 v0, 0x4

    if-ne v2, v0, :cond_8

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v2, v3, v1

    aget-byte v0, v0, v2

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v4, v3, v9

    aget-byte v2, v2, v4

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v5, v3, v10

    aget-byte v4, v4, v5

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v6, v3, v8

    aget-byte v5, v5, v6

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v0, v6

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v2, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    if-ne v2, v8, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    goto/16 :goto_2

    :cond_7
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    if-eq v5, v7, :cond_2

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v4, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_3
    return-void

    :cond_a
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v4

    if-eqz v4, :cond_3

    and-int/lit8 v2, v1, 0xf

    if-nez v2, :cond_b

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v2, v3, v2

    and-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_d

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_d
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final decode([BLjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->removeWhiteSpace([B)I

    move-result v1

    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    div-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_3

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte v0, v1, v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v1, v1, v2

    if-ne v0, v7, :cond_6

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.divisible.four"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte v2, v2, v0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    sget-object v6, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v6, v5

    if-ne v2, v7, :cond_5

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq v3, v7, :cond_4

    if-eq v4, v7, :cond_4

    if-eq v5, v7, :cond_4

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v3, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_6
    if-eq v1, v7, :cond_0

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v4, p0, v4

    aget-byte v5, v5, v4

    if-ne v2, v7, :cond_a

    :cond_7
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_8
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_9
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eq v5, v7, :cond_7

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    return-void

    :cond_b
    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v5

    if-eqz v5, :cond_8

    and-int/lit8 v2, v1, 0xf

    if-nez v2, :cond_c

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_c
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v3

    if-eqz v3, :cond_9

    and-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_e

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_e
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Ljava/io/BufferedReader;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->write([B)V

    goto :goto_0
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decodeInternal([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static decode(Lorg/w3c/dom/Element;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static decode([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decodeInternal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBigIntegerFromElement(Lorg/w3c/dom/Element;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static decodeBigIntegerFromText(Lorg/w3c/dom/Text;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method protected static final decodeInternal([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->removeWhiteSpace([B)I

    move-result v0

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    div-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    add-int/lit8 v0, v2, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x3

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte v4, v4, v0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    if-ne v4, v10, :cond_3

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.divisible.four"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v0, v1, [B

    return-object v0

    :cond_3
    if-eq v5, v10, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v8, v0, v6

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    aget-byte v7, p0, v7

    aget-byte v9, v0, v7

    if-ne v8, v10, :cond_7

    :cond_4
    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eq v9, v10, :cond_4

    add-int/lit8 v0, v3, 0x3

    new-array v0, v0, [B

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v6, 0x1

    and-int/lit8 v4, v5, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v5, v8, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    shl-int/lit8 v4, v8, 0x6

    or-int/2addr v4, v9

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v1

    :goto_1
    if-gtz v3, :cond_c

    return-object v0

    :cond_8
    invoke-static {v7}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v0

    if-eqz v0, :cond_5

    and-int/lit8 v0, v5, 0xf

    if-nez v0, :cond_9

    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [B

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {v7}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isPad(B)Z

    move-result v0

    if-eqz v0, :cond_6

    and-int/lit8 v0, v8, 0x3

    if-nez v0, :cond_b

    add-int/lit8 v0, v3, 0x2

    new-array v0, v0, [B

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    and-int/lit8 v3, v5, 0xf

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v4, v8, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    goto :goto_0

    :cond_b
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p0, v1

    aget-byte v4, v4, v1

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v1, v5

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v6, v1, v6

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v1, v7, 0x1

    aget-byte v7, p0, v7

    aget-byte v7, v8, v7

    if-ne v4, v10, :cond_e

    :cond_d
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eq v5, v10, :cond_d

    if-eq v6, v10, :cond_d

    if-eq v7, v10, :cond_d

    add-int/lit8 v8, v2, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v4, v9

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v2, v5, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v6, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1
.end method

.method public static encode(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->getBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4c

    invoke-static {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)Ljava/lang/String;
    .locals 18

    const/4 v1, 0x4

    move/from16 v0, p1

    if-lt v0, v1, :cond_0

    :goto_0
    if-eqz p0, :cond_1

    move-object/from16 v0, p0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    rem-int/lit8 v10, v1, 0x18

    div-int/lit8 v2, v1, 0x18

    if-nez v10, :cond_3

    move v1, v2

    :goto_1
    div-int/lit8 v3, p1, 0x4

    add-int/lit8 v4, v1, -0x1

    div-int v11, v4, v3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v11

    new-array v12, v1, [C

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v9, v1

    move v1, v6

    :goto_2
    if-lt v9, v11, :cond_4

    move v5, v1

    move v7, v4

    move v1, v3

    :goto_3
    if-lt v5, v2, :cond_9

    const/16 v2, 0x8

    if-eq v10, v2, :cond_d

    const/16 v2, 0x10

    if-eq v10, v2, :cond_f

    :goto_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_0
    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1

    :cond_2
    const-string/jumbo v1, ""

    return-object v1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    move v6, v1

    move v8, v4

    :goto_5
    const/16 v1, 0x13

    if-lt v5, v1, :cond_5

    add-int/lit8 v4, v8, 0x1

    const/16 v1, 0xa

    aput-char v1, v12, v8

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v1, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v13, p0, v1

    add-int/lit8 v7, v4, 0x1

    aget-byte v14, p0, v4

    and-int/lit8 v1, v13, 0xf

    int-to-byte v15, v1

    and-int/lit8 v1, v3, 0x3

    int-to-byte v0, v1

    move/from16 v16, v0

    and-int/lit8 v1, v3, -0x80

    if-eqz v1, :cond_6

    shr-int/lit8 v1, v3, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v4, v1

    :goto_6
    and-int/lit8 v1, v13, -0x80

    if-eqz v1, :cond_7

    shr-int/lit8 v1, v13, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move v3, v1

    :goto_7
    and-int/lit8 v1, v14, -0x80

    if-eqz v1, :cond_8

    shr-int/lit8 v1, v14, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    :goto_8
    add-int/lit8 v13, v8, 0x1

    sget-object v17, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v4, v17, v4

    int-to-char v4, v4

    aput-char v4, v12, v8

    add-int/lit8 v4, v13, 0x1

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v16, v16, 0x4

    or-int v3, v3, v16

    aget-char v3, v8, v3

    int-to-char v3, v3

    aput-char v3, v12, v13

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v13, v15, 0x2

    or-int/2addr v1, v13

    aget-char v1, v8, v1

    int-to-char v1, v1

    aput-char v1, v12, v4

    add-int/lit8 v4, v3, 0x1

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v8, v14, 0x3f

    aget-char v1, v1, v8

    int-to-char v1, v1

    aput-char v1, v12, v3

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v3

    move v8, v4

    move v3, v7

    goto :goto_5

    :cond_6
    shr-int/lit8 v1, v3, 0x2

    int-to-byte v1, v1

    move v4, v1

    goto :goto_6

    :cond_7
    shr-int/lit8 v1, v13, 0x4

    int-to-byte v1, v1

    move v3, v1

    goto :goto_7

    :cond_8
    shr-int/lit8 v1, v14, 0x6

    int-to-byte v1, v1

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v6, v4, 0x1

    aget-byte v8, p0, v4

    and-int/lit8 v4, v3, 0xf

    int-to-byte v9, v4

    and-int/lit8 v4, v1, 0x3

    int-to-byte v11, v4

    and-int/lit8 v4, v1, -0x80

    if-eqz v4, :cond_a

    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v4, v1

    :goto_9
    and-int/lit8 v1, v3, -0x80

    if-eqz v1, :cond_b

    shr-int/lit8 v1, v3, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move v3, v1

    :goto_a
    and-int/lit8 v1, v8, -0x80

    if-eqz v1, :cond_c

    shr-int/lit8 v1, v8, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    :goto_b
    add-int/lit8 v13, v7, 0x1

    sget-object v14, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v4, v14, v4

    int-to-char v4, v4

    aput-char v4, v12, v7

    add-int/lit8 v4, v13, 0x1

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v11, v11, 0x4

    or-int/2addr v3, v11

    aget-char v3, v7, v3

    int-to-char v3, v3

    aput-char v3, v12, v13

    add-int/lit8 v7, v4, 0x1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v9, v9, 0x2

    or-int/2addr v1, v9

    aget-char v1, v3, v1

    int-to-char v1, v1

    aput-char v1, v12, v4

    add-int/lit8 v3, v7, 0x1

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v4, v8, 0x3f

    aget-char v1, v1, v4

    int-to-char v1, v1

    aput-char v1, v12, v7

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v7, v3

    move v1, v6

    goto/16 :goto_3

    :cond_a
    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    move v4, v1

    goto :goto_9

    :cond_b
    shr-int/lit8 v1, v3, 0x4

    int-to-byte v1, v1

    move v3, v1

    goto :goto_a

    :cond_c
    shr-int/lit8 v1, v8, 0x6

    int-to-byte v1, v1

    goto :goto_b

    :cond_d
    aget-byte v1, p0, v1

    and-int/lit8 v2, v1, 0x3

    int-to-byte v2, v2

    and-int/lit8 v3, v1, -0x80

    if-eqz v3, :cond_e

    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    :goto_c
    add-int/lit8 v3, v7, 0x1

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v1, v4, v1

    int-to-char v1, v1

    aput-char v1, v12, v7

    add-int/lit8 v1, v3, 0x1

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v2, v2, 0x4

    aget-char v2, v4, v2

    int-to-char v2, v2

    aput-char v2, v12, v3

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x3d

    aput-char v3, v12, v1

    const/16 v1, 0x3d

    aput-char v1, v12, v2

    goto/16 :goto_4

    :cond_e
    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    goto :goto_c

    :cond_f
    aget-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v1

    and-int/lit8 v1, v3, 0xf

    int-to-byte v4, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v5, v1

    and-int/lit8 v1, v2, -0x80

    if-eqz v1, :cond_10

    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v2, v1

    :goto_d
    and-int/lit8 v1, v3, -0x80

    if-eqz v1, :cond_11

    shr-int/lit8 v1, v3, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    :goto_e
    add-int/lit8 v3, v7, 0x1

    sget-object v6, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v2, v6, v2

    int-to-char v2, v2

    aput-char v2, v12, v7

    add-int/lit8 v2, v3, 0x1

    sget-object v6, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    aget-char v1, v6, v1

    int-to-char v1, v1

    aput-char v1, v12, v3

    add-int/lit8 v1, v2, 0x1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v4, v4, 0x2

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v12, v2

    const/16 v2, 0x3d

    aput-char v2, v12, v1

    goto/16 :goto_4

    :cond_10
    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v2, v1

    goto :goto_d

    :cond_11
    shr-int/lit8 v1, v3, 0x4

    int-to-byte v1, v1

    goto :goto_e
.end method

.method public static encode(Ljava/math/BigInteger;I)[B
    .locals 5

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v2, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    :cond_0
    array-length v0, v3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    :goto_0
    div-int/lit8 v4, v2, 0x8

    sub-int/2addr v4, v0

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "utils.Base64.IllegalBitlength"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v4, v2, 0x8

    if-ne v0, v4, :cond_0

    return-object v3

    :cond_3
    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static encodeToElement(Lorg/w3c/dom/Document;Ljava/lang/String;[B)Lorg/w3c/dom/Element;
    .locals 2

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static fillElementWithBigInteger(Lorg/w3c/dom/Element;Ljava/math/BigInteger;)V
    .locals 3

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4c

    if-gt v1, v2, :cond_0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getBytes(Ljava/math/BigInteger;I)[B
    .locals 5

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v2, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    :cond_0
    array-length v0, v3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    :goto_0
    div-int/lit8 v4, v2, 0x8

    sub-int/2addr v4, v0

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "utils.Base64.IllegalBitlength"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v4, v2, 0x8

    if-ne v0, v4, :cond_0

    return-object v3

    :cond_3
    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected static final isPad(B)Z
    .locals 1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static final isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const-string/jumbo v1, "<container><base64 value=\"Should be \'Hallo\'\">SGFsbG8=</base64></container>"

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected static removeWhiteSpace([B)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    return v0

    :cond_0
    return v0

    :cond_1
    aget-byte v4, p0, v2

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    move v0, v1

    goto :goto_1
.end method
