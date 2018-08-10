.class public final Landroid/util/ByteStringUtils;
.super Ljava/lang/Object;
.source "ByteStringUtils.java"


# static fields
.field private static final HEX_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHexToByteArray(Ljava/lang/String;)[B
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v1, v2

    div-int/lit8 v4, v1, 0x2

    new-array v0, v4, [B

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    mul-int/lit8 v4, v3, 0x2

    aget-char v4, v2, v4

    invoke-static {v4}, Landroid/util/ByteStringUtils;->getIndex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xf0

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-static {v5}, Landroid/util/ByteStringUtils;->getIndex(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getIndex(C)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    aget-char v1, v1, v0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    return-object v6

    :cond_1
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    new-array v3, v2, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-byte v5, p0, v4

    and-int/lit16 v0, v5, 0xff

    mul-int/lit8 v5, v4, 0x2

    sget-object v6, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    ushr-int/lit8 v7, v0, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method
