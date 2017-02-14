.class public final Lmf/org/apache/xerces/impl/dv/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXBIT:I = 0x6

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x3e

    const/16 v4, 0x30

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    move v1, v0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x39

    :goto_3
    if-lt v1, v4, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aput-byte v7, v1, v5

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    const/16 v2, 0x3f

    aput-byte v2, v1, v6

    move v1, v0

    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v0, v7

    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    const/16 v1, 0x3f

    aput-char v6, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    const/4 v13, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->removeWhiteSpace([C)I

    move-result v0

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_2

    div-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_3

    mul-int/lit8 v0, v5, 0x3

    new-array v6, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    add-int/lit8 v7, v5, -0x1

    if-ge v3, v7, :cond_5

    add-int/lit8 v7, v0, 0x1

    aget-char v8, v4, v0

    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    return-object v13

    :cond_1
    return-object v13

    :cond_2
    return-object v13

    :cond_3
    new-array v0, v1, [B

    return-object v0

    :cond_4
    add-int/lit8 v0, v7, 0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v9, v0, 0x1

    aget-char v10, v4, v0

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v9, 0x1

    aget-char v9, v4, v9

    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v8, v11, v8

    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v7, v11, v7

    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v10, v11, v10

    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v9, v11, v9

    add-int/lit8 v11, v2, 0x1

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v12, v7, 0x4

    or-int/2addr v8, v12

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    add-int/lit8 v8, v11, 0x1

    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v7, v10, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v2, v7

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v11

    add-int/lit8 v2, v8, 0x1

    shl-int/lit8 v7, v10, 0x6

    or-int/2addr v7, v9

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v0, 0x1

    aget-char v0, v4, v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    return-object v13

    :cond_7
    add-int/lit8 v7, v5, 0x1

    aget-char v5, v4, v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v0, v8, v0

    sget-object v8, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v5, v8, v5

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v4, v7

    add-int/lit8 v9, v8, 0x1

    aget-char v4, v4, v8

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_8
    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_9
    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_a
    return-object v13

    :cond_b
    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v1, v1, v7

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v3, v3, v4

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v0, v7

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v2, v5, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    return-object v6

    :cond_c
    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v8

    if-eqz v8, :cond_9

    and-int/lit8 v4, v5, 0xf

    if-nez v4, :cond_d

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v6, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v5, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    return-object v4

    :cond_d
    return-object v13

    :cond_e
    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v4, v4, v7

    and-int/lit8 v7, v4, 0x3

    if-nez v7, :cond_f

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v6, v1, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v5, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    and-int/lit8 v0, v5, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    return-object v7

    :cond_f
    return-object v13
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15

    const/4 v0, 0x0

    const/16 v14, 0x3d

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    rem-int/lit8 v7, v0, 0x18

    div-int/lit8 v1, v0, 0x18

    if-nez v7, :cond_2

    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    :goto_1
    if-ge v4, v1, :cond_6

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    and-int/lit8 v0, v2, -0x80

    if-eqz v0, :cond_3

    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    :goto_2
    and-int/lit8 v2, v9, -0x80

    if-eqz v2, :cond_4

    shr-int/lit8 v2, v9, 0x4

    xor-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    :goto_3
    and-int/lit8 v3, v10, -0x80

    if-eqz v3, :cond_5

    shr-int/lit8 v3, v10, 0x6

    xor-int/lit16 v3, v3, 0xfc

    int-to-byte v3, v3

    :goto_4
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v13, v0

    int-to-char v0, v0

    aput-char v0, v8, v6

    add-int/lit8 v0, v9, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    int-to-char v2, v2

    aput-char v2, v8, v9

    add-int/lit8 v6, v0, 0x1

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v3, v9

    aget-char v2, v2, v3

    int-to-char v2, v2

    aput-char v2, v8, v0

    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    int-to-char v0, v0

    aput-char v0, v8, v6

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_3
    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    goto :goto_2

    :cond_4
    shr-int/lit8 v2, v9, 0x4

    int-to-byte v2, v2

    goto :goto_3

    :cond_5
    shr-int/lit8 v3, v10, 0x6

    int-to-byte v3, v3

    goto :goto_4

    :cond_6
    const/16 v0, 0x8

    if-eq v7, v0, :cond_7

    const/16 v0, 0x10

    if-eq v7, v0, :cond_9

    :goto_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_7
    aget-byte v0, p0, v2

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, v0, -0x80

    if-eqz v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    :goto_6
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v3, v0

    int-to-char v0, v0

    aput-char v0, v8, v6

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    int-to-char v1, v1

    aput-char v1, v8, v2

    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    goto :goto_5

    :cond_8
    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    goto :goto_6

    :cond_9
    aget-byte v0, p0, v2

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v2, v1, 0xf

    int-to-byte v2, v2

    and-int/lit8 v3, v0, 0x3

    int-to-byte v3, v3

    and-int/lit8 v4, v0, -0x80

    if-eqz v4, :cond_a

    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    :goto_7
    and-int/lit8 v4, v1, -0x80

    if-eqz v4, :cond_b

    shr-int/lit8 v1, v1, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    :goto_8
    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v5, v0

    int-to-char v0, v0

    aput-char v0, v8, v6

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    aget-char v1, v5, v1

    int-to-char v1, v1

    aput-char v1, v8, v4

    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v2, v2, 0x2

    aget-char v2, v3, v2

    int-to-char v2, v2

    aput-char v2, v8, v0

    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    goto :goto_5

    :cond_a
    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    goto :goto_7

    :cond_b
    shr-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    goto :goto_8
.end method

.method protected static isBase64(C)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method protected static isData(C)Z
    .locals 2

    const/16 v0, 0x80

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method protected static isPad(C)Z
    .locals 1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected static isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method protected static removeWhiteSpace([C)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, p0, v2

    invoke-static {v1}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isWhiteSpace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-char v4, p0, v2

    int-to-char v4, v4

    aput-char v4, p0, v0

    move v0, v1

    goto :goto_1

    :cond_2
    return v0
.end method
