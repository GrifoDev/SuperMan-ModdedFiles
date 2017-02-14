.class public final Lmf/org/apache/xerces/impl/dv/util/HexBin;
.super Ljava/lang/Object;
.source "HexBin.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final LOOKUPLENGTH:I = 0x10

.field private static final hexNumberTable:[B

.field private static final lookUpHexAlphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x80

    const/16 v6, 0x41

    const/16 v5, 0x30

    const/16 v0, 0xa

    const/4 v1, 0x0

    new-array v2, v7, [B

    sput-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    const/16 v2, 0x10

    new-array v2, v2, [C

    sput-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_0

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x39

    :goto_1
    if-lt v2, v5, :cond_1

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x30

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x46

    :goto_2
    if-lt v2, v6, :cond_2

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x41

    add-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    const/16 v2, 0x66

    :goto_3
    const/16 v3, 0x61

    if-lt v2, v3, :cond_4

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x61

    add-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-lt v1, v0, :cond_3

    :goto_4
    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 10

    const/16 v9, 0x80

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    div-int/lit8 v5, v2, 0x2

    new-array v6, v5, [B

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_6

    mul-int/lit8 v0, v3, 0x2

    aget-char v0, v4, v0

    if-lt v0, v9, :cond_2

    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_3

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v2, v4, v2

    if-lt v2, v9, :cond_4

    move v2, v1

    :goto_2
    if-eq v2, v1, :cond_5

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    return-object v8

    :cond_1
    return-object v8

    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v0, v2, v0

    goto :goto_1

    :cond_3
    return-object v8

    :cond_4
    sget-object v7, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v2, v7, v2

    goto :goto_2

    :cond_5
    return-object v8

    :cond_6
    return-object v6
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    mul-int/lit8 v1, v2, 0x2

    new-array v3, v1, [C

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-byte v0, p0, v1

    if-ltz v0, :cond_1

    :goto_1
    mul-int/lit8 v4, v1, 0x2

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v5, v0

    int-to-char v0, v0

    aput-char v0, v3, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    add-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
