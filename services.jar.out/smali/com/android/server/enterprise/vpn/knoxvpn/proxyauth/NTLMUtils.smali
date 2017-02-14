.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;
.super Ljava/lang/Object;
.source "NTLMUtils.java"


# static fields
.field private static final BASE_64_CHARACTER_SET:[C

.field private static final BASE_64_PADDING:C = '='

.field private static final BUF_SIZE:I = 0x100

.field private static final S_DECODETABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    const/16 v2, 0x7f

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    const/16 v11, 0x103

    const/4 v13, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v11, :cond_0

    move v11, v10

    :cond_0
    new-array v3, v11, [C

    shr-int/lit8 v11, v10, 0x2

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v11, v11, 0x3

    new-array v7, v11, [B

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_6

    add-int/lit16 v11, v2, 0x100

    if-gt v11, v10, :cond_3

    add-int/lit16 v11, v2, 0x100

    invoke-virtual {p0, v2, v11, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit16 v0, v4, 0x100

    :goto_1
    move v6, v4

    move v5, v4

    :goto_2
    if-ge v6, v0, :cond_5

    aget-char v1, v3, v6

    const/16 v11, 0x3d

    if-eq v1, v11, :cond_1

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    array-length v11, v11

    if-ge v1, v11, :cond_4

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    aget-byte v11, v11, v1

    const/16 v12, 0x7f

    if-eq v11, v12, :cond_4

    :cond_1
    add-int/lit8 v4, v5, 0x1

    aput-char v1, v3, v5

    const/4 v11, 0x4

    if-ne v4, v11, :cond_2

    const/4 v4, 0x0

    invoke-static {v3, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->decode0([C[BI)I

    move-result v11

    add-int/2addr v8, v11

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2, v10, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    sub-int v11, v10, v2

    add-int v0, v11, v4

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    add-int/lit16 v2, v2, 0x100

    move v4, v5

    goto :goto_0

    :cond_6
    array-length v11, v7

    if-ne v8, v11, :cond_7

    return-object v7

    :cond_7
    new-array v9, v8, [B

    invoke-static {v7, v13, v9, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v9
.end method

.method private static decode0([C[BI)I
    .locals 11

    const/16 v7, 0x3d

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x3

    aget-char v6, p0, v9

    if-ne v6, v7, :cond_0

    const/4 v4, 0x2

    :cond_0
    aget-char v6, p0, v8

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    const/4 v7, 0x0

    aget-char v7, p0, v7

    aget-byte v0, v6, v7

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    aget-char v7, p0, v10

    aget-byte v1, v6, v7

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    aget-char v7, p0, v8

    aget-byte v2, v6, v7

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->S_DECODETABLE:[B

    aget-char v7, p0, v9

    aget-byte v3, v6, v7

    packed-switch v4, :pswitch_data_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Internal Error"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    shl-int/lit8 v6, v0, 0x2

    and-int/lit16 v6, v6, 0xfc

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    return v10

    :pswitch_1
    add-int/lit8 v5, p2, 0x1

    shl-int/lit8 v6, v0, 0x2

    and-int/lit16 v6, v6, 0xfc

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    shl-int/lit8 v6, v1, 0x4

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    return v8

    :pswitch_2
    add-int/lit8 v5, p2, 0x1

    shl-int/lit8 v6, v0, 0x2

    and-int/lit16 v6, v6, 0xfc

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 p2, v5, 0x1

    shl-int/lit8 v6, v1, 0x4

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    shl-int/lit8 v6, v2, 0x6

    and-int/lit16 v6, v6, 0xc0

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encode([BII)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x3d

    if-gtz p2, :cond_0

    const-string/jumbo v6, ""

    return-object v6

    :cond_0
    div-int/lit8 v6, p2, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    new-array v1, v6, [C

    move v3, p1

    const/4 v4, 0x0

    move v2, p2

    move v5, v4

    :goto_0
    const/4 v6, 0x3

    if-lt v2, v6, :cond_1

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int v0, v6, v7

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shr-int/lit8 v7, v0, 0x12

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    and-int/lit8 v7, v0, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, -0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    aget-byte v6, p0, v3

    and-int/lit16 v0, v6, 0xff

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shr-int/lit8 v7, v0, 0x2

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shl-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    add-int/lit8 v4, v5, 0x1

    aput-char v8, v1, v5

    add-int/lit8 v5, v4, 0x1

    aput-char v8, v1, v4

    move v4, v5

    :goto_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v9, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int v0, v6, v7

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shr-int/lit8 v7, v0, 0xa

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v4

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->BASE_64_CHARACTER_SET:[C

    shl-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    aput-char v8, v1, v4

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method protected static getSecurityData([BI)[B
    .locals 4

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->getSecurityDataLength([BI)I

    move-result v0

    new-array v1, v0, [B

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->getSecurityDataOffset([BI)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method private static getSecurityDataLength([BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method private static getSecurityDataOffset([BI)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method protected static getUnsignedValue([BII)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected static setSecurityDataAndAttributes([BII[B)V
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->writeSecurityDatalength([BII)V

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->writeSecurityDataOffset([BII)V

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-static {p3, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p3

    goto :goto_0
.end method

.method protected static setUnsignedValue([BIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeSecurityDataOffset([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    invoke-static {p0, v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    return-void
.end method

.method private static writeSecurityDatalength([BII)V
    .locals 2

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    return-void
.end method
