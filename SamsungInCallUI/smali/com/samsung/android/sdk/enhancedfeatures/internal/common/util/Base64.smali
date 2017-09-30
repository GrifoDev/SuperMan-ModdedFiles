.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;
.super Ljava/lang/Object;


# static fields
.field private static mBase64:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;


# instance fields
.field private final DECODE_TABLE:[B

.field private final ENCODE_TABLE:[B

.field private final URL_SAFE_ENCODE_TABLE:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->ENCODE_TABLE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->DECODE_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method private correctInput([B)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v2, v1, 0x4

    array-length v1, p1

    add-int/2addr v1, v2

    new-array v3, v1, [B

    const/4 v1, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v3

    :goto_0
    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x3d

    aput-byte v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0

    :cond_0
    return-object v3
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->mBase64:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->mBase64:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->mBase64:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->mBase64:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public decode([B)[B
    .locals 10

    const/16 v4, 0x3d

    const/4 v9, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    array-length v3, p1

    if-nez v3, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x4

    if-ne v3, v2, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Input length is invalid."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->correctInput([B)[B

    move-result-object p1

    :cond_2
    array-length v5, p1

    add-int/lit8 v3, v5, -0x2

    aget-byte v3, p1, v3

    if-ne v3, v4, :cond_4

    :goto_1
    mul-int/lit8 v2, v5, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v6, v2, v1

    new-array v2, v6, [B

    const/4 v1, 0x4

    new-array v7, v1, [B

    move v4, v0

    :goto_2
    if-ge v4, v5, :cond_6

    rem-int/lit8 v1, v4, 0x4

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->DECODE_TABLE:[B

    aget-byte v8, p1, v4

    aget-byte v3, v3, v8

    aput-byte v3, v7, v1

    rem-int/lit8 v1, v4, 0x4

    if-ne v1, v9, :cond_3

    add-int/lit8 v3, v0, 0x1

    const/4 v1, 0x0

    aget-byte v1, v7, v1

    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xfc

    const/4 v8, 0x1

    aget-byte v8, v7, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    if-ge v3, v6, :cond_8

    add-int/lit8 v1, v3, 0x1

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xf0

    const/4 v8, 0x2

    aget-byte v8, v7, v8

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v0, v8

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    :goto_3
    if-ge v1, v6, :cond_7

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x2

    aget-byte v3, v7, v3

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0xc0

    const/4 v8, 0x3

    aget-byte v8, v7, v8

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    :cond_3
    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v5, -0x1

    aget-byte v1, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v4, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move v1, v3

    goto :goto_3
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->encode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;Z)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->encode([BZ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encode([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([BZ)[B
    .locals 12

    const/4 v11, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    move-object v4, v0

    :goto_0
    array-length v5, p1

    add-int/lit8 v0, v5, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x3

    sub-int v6, v0, v5

    add-int/lit8 v0, v5, 0x2

    add-int/lit8 v1, v5, 0x2

    rem-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [B

    const/4 v0, 0x3

    new-array v7, v0, [B

    move v0, v2

    move v3, v2

    :goto_1
    add-int v8, v5, v6

    if-ge v3, v8, :cond_3

    if-ge v3, v5, :cond_2

    rem-int/lit8 v8, v3, 0x3

    aget-byte v9, p1, v3

    aput-byte v9, v7, v8

    :goto_2
    rem-int/lit8 v8, v3, 0x3

    if-ne v8, v11, :cond_0

    add-int/lit8 v8, v0, 0x1

    const/4 v9, 0x0

    aget-byte v9, v7, v9

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v4, v9

    aput-byte v9, v1, v0

    add-int/lit8 v0, v8, 0x1

    const/4 v9, 0x0

    aget-byte v9, v7, v9

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0x30

    const/4 v10, 0x1

    aget-byte v10, v7, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    aget-byte v9, v4, v9

    aput-byte v9, v1, v8

    add-int/lit8 v8, v0, 0x1

    const/4 v9, 0x1

    aget-byte v9, v7, v9

    shl-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3c

    const/4 v10, 0x2

    aget-byte v10, v7, v10

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    aget-byte v9, v4, v9

    aput-byte v9, v1, v0

    add-int/lit8 v0, v8, 0x1

    const/4 v9, 0x2

    aget-byte v9, v7, v9

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v4, v9

    aput-byte v9, v1, v8

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/Base64;->ENCODE_TABLE:[B

    move-object v4, v0

    goto :goto_0

    :cond_2
    rem-int/lit8 v8, v3, 0x3

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_3
    :goto_4
    if-ge v2, v6, :cond_4

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x3d

    aput-byte v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method
