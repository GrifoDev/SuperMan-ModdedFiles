.class public Lcom/samsung/android/rlc/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x40

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    return-void

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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctInput([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v4, v5, 0x4

    array-length v5, p0

    add-int/2addr v5, v4

    new-array v2, v5, [B

    array-length v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    const/16 v5, 0x3d

    aput-byte v5, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0

    :cond_0
    return-object v2
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/rlc/util/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 13

    const/16 v11, 0x3d

    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    :try_start_0
    array-length v9, p0

    if-nez v9, :cond_0

    const/4 v9, 0x0

    new-array v9, v9, [B

    return-object v9

    :cond_0
    array-length v9, p0

    rem-int/lit8 v9, v9, 0x4

    if-ne v9, v10, :cond_2

    new-instance v9, Ljava/lang/Exception;

    const-string/jumbo v10, "Input length is invalid."

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    :cond_1
    return-object v5

    :cond_2
    array-length v9, p0

    rem-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_3

    invoke-static {p0}, Lcom/samsung/android/rlc/util/Base64;->correctInput([B)[B

    move-result-object p0

    :cond_3
    array-length v2, p0

    add-int/lit8 v9, v2, -0x2

    aget-byte v9, p0, v9

    if-ne v9, v11, :cond_4

    const/4 v7, 0x2

    :goto_0
    mul-int/lit8 v9, v2, 0x3

    div-int/lit8 v9, v9, 0x4

    sub-int v6, v9, v7

    new-array v5, v6, [B

    const/4 v9, 0x4

    new-array v8, v9, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v4, v3

    :goto_1
    if-ge v1, v2, :cond_1

    rem-int/lit8 v9, v1, 0x4

    sget-object v10, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    aget-byte v11, p0, v1

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    rem-int/lit8 v9, v1, 0x4

    if-ne v9, v12, :cond_6

    add-int/lit8 v3, v4, 0x1

    const/4 v9, 0x0

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x2

    and-int/lit16 v9, v9, 0xfc

    const/4 v10, 0x1

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    if-ge v3, v6, :cond_7

    add-int/lit8 v4, v3, 0x1

    const/4 v9, 0x1

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v9, v9, 0xf0

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    :goto_2
    if-ge v4, v6, :cond_6

    add-int/lit8 v3, v4, 0x1

    const/4 v9, 0x2

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v9, v9, 0xc0

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v2, -0x1

    aget-byte v9, p0, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v11, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_2
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/rlc/util/Base64;->encode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Z)[B
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[B
    .locals 13

    const/4 v12, 0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_0
    array-length v3, p0

    add-int/lit8 v10, v3, 0x2

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x3

    sub-int v8, v10, v3

    add-int/lit8 v10, v3, 0x2

    add-int/lit8 v11, v3, 0x2

    rem-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x4

    div-int/lit8 v7, v10, 0x3

    new-array v6, v7, [B

    const/4 v10, 0x3

    new-array v9, v10, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v5, v4

    :goto_1
    add-int v10, v3, v8

    if-ge v2, v10, :cond_3

    if-ge v2, v3, :cond_1

    rem-int/lit8 v10, v2, 0x3

    aget-byte v11, p0, v2

    aput-byte v11, v9, v10

    :goto_2
    rem-int/lit8 v10, v2, 0x3

    if-ne v10, v12, :cond_4

    add-int/lit8 v4, v5, 0x1

    const/4 v10, 0x0

    aget-byte v10, v9, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v6, v5

    add-int/lit8 v5, v4, 0x1

    const/4 v10, 0x0

    aget-byte v10, v9, v10

    shl-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x30

    const/4 v11, 0x1

    aget-byte v11, v9, v11

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    aget-byte v10, v1, v10

    aput-byte v10, v6, v4

    add-int/lit8 v4, v5, 0x1

    const/4 v10, 0x1

    aget-byte v10, v9, v10

    shl-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3c

    const/4 v11, 0x2

    aget-byte v11, v9, v11

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    aget-byte v10, v1, v10

    aput-byte v10, v6, v5

    add-int/lit8 v5, v4, 0x1

    const/4 v10, 0x2

    aget-byte v10, v9, v10

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v6, v4

    move v4, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    goto :goto_0

    :cond_1
    rem-int/lit8 v10, v2, 0x3

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    :cond_2
    return-object v6

    :cond_3
    const/4 v2, 0x0

    move v4, v5

    :goto_4
    if-ge v2, v8, :cond_2

    add-int/lit8 v4, v4, -0x1

    const/16 v10, 0x3d

    aput-byte v10, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move v4, v5

    goto :goto_3
.end method
