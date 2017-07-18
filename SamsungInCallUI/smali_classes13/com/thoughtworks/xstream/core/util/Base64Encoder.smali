.class public Lcom/thoughtworks/xstream/core/util/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field private static final REVERSE_MAPPING:[I

.field private static final SIXTY_FOUR_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    const/16 v1, 0x7b

    new-array v1, v1, [I

    sput-object v1, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    sget-object v2, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    aget-char v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapCharToInt(Ljava/io/Reader;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v2, :cond_1

    sget-object v3, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    aget v1, v3, v0

    if-eqz v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 10

    const/4 v9, 0x3

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    const/4 v7, 0x4

    new-array v0, v7, [I

    const/4 v7, 0x0

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x1

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x2

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x3

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x0

    aget v7, v0, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x12

    const/4 v8, 0x1

    aget v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    or-int v5, v7, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_1

    add-int/lit8 v7, v4, 0x1

    aget v7, v0, v7

    if-ltz v7, :cond_0

    rsub-int/lit8 v7, v4, 0x2

    mul-int/lit8 v7, v7, 0x8

    shr-int v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public encode([B)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_5

    const/4 v6, 0x3

    array-length v8, p1

    sub-int/2addr v8, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v8, v6, 0x10

    const/4 v6, 0x1

    if-gt v4, v6, :cond_0

    move v6, v7

    :goto_1
    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v8, v6

    const/4 v6, 0x2

    if-gt v4, v6, :cond_1

    move v6, v7

    :goto_2
    or-int v2, v8, v6

    const/4 v1, 0x0

    :goto_3
    const/4 v6, 0x4

    if-ge v1, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    if-le v6, v1, :cond_2

    sget-object v6, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    rsub-int/lit8 v8, v1, 0x3

    mul-int/lit8 v8, v8, 0x6

    shr-int v8, v2, v8

    and-int/lit8 v8, v8, 0x3f

    aget-char v6, v6, v8

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_2

    :cond_2
    const/16 v6, 0x3d

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v6, v3, 0x4c

    if-nez v6, :cond_4

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
