.class public Lcom/cmdm/control/util/encry/SHA1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dY:[I

.field private dZ:[I

.field private ea:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 6
    iput-object v0, p0, Lcom/cmdm/control/util/encry/SHA1;->dY:[I

    .line 9
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cmdm/control/util/encry/SHA1;->dZ:[I

    .line 12
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    .line 4
    return-void

    .line 5
    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private a(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 103
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private a([B)I
    .locals 8
    .param p1, "bytedata"    # [B

    .prologue
    const/4 v7, 0x0

    .line 17
    iget-object v4, p0, Lcom/cmdm/control/util/encry/SHA1;->dY:[I

    iget-object v5, p0, Lcom/cmdm/control/util/encry/SHA1;->dZ:[I

    iget-object v6, p0, Lcom/cmdm/control/util/encry/SHA1;->dY:[I

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-direct {p0, p1}, Lcom/cmdm/control/util/encry/SHA1;->b([B)[B

    move-result-object v2

    .line 23
    .local v2, "newbyte":[B
    array-length v4, v2

    div-int/lit8 v0, v4, 0x40

    .line 26
    .local v0, "MCount":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 36
    const/16 v4, 0x14

    return v4

    .line 28
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v4, 0x10

    if-lt v1, v4, :cond_1

    .line 33
    invoke-direct {p0}, Lcom/cmdm/control/util/encry/SHA1;->bK()V

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object v4, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    mul-int/lit8 v5, v3, 0x40

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v5, v6

    invoke-direct {p0, v2, v5}, Lcom/cmdm/control/util/encry/SHA1;->a([BI)I

    move-result v5

    aput v5, v4, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a([BI)I
    .locals 2
    .param p1, "bytedata"    # [B
    .param p2, "i"    # I

    .prologue
    .line 186
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 187
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 186
    or-int/2addr v0, v1

    .line 187
    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 186
    or-int/2addr v0, v1

    return v0
.end method

.method private a(I[BI)V
    .locals 2
    .param p1, "intValue"    # I
    .param p2, "byteData"    # [B
    .param p3, "i"    # I

    .prologue
    .line 192
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 193
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 194
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 195
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 196
    return-void
.end method

.method private b(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 107
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private static b(B)Ljava/lang/String;
    .locals 5
    .param p0, "ib"    # B

    .prologue
    .line 200
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 202
    .local v0, "Digit":[C
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 203
    .local v1, "ob":[C
    const/4 v3, 0x0

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 204
    const/4 v3, 0x1

    and-int/lit8 v4, p0, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 206
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 208
    .local v2, "s":Ljava/lang/String;
    return-object v2

    .line 200
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

.method private b([B)[B
    .locals 28
    .param p1, "bytedata"    # [B

    .prologue
    .line 42
    const/16 v23, 0x0

    .line 45
    .local v23, "zeros":I
    const/16 v22, 0x0

    .line 48
    .local v22, "size":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .line 51
    .local v20, "n":I
    rem-int/lit8 v19, v20, 0x40

    .line 54
    .local v19, "m":I
    const/16 v24, 0x38

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 55
    rsub-int/lit8 v23, v19, 0x37

    .line 56
    sub-int v24, v20, v19

    add-int/lit8 v22, v24, 0x40

    .line 66
    :goto_0
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 68
    .local v21, "newbyte":[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    move/from16 v17, v20

    .line 73
    .local v17, "l":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .local v18, "l":I
    const/16 v24, -0x80

    aput-byte v24, v21, v17

    .line 76
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 81
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x8

    mul-long v6, v24, v26

    .line 82
    .local v6, "N":J
    const-wide/16 v24, 0xff

    and-long v24, v24, v6

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v15, v0

    .line 83
    .local v15, "h8":B
    const/16 v24, 0x8

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v14, v0

    .line 84
    .local v14, "h7":B
    const/16 v24, 0x10

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v13, v0

    .line 85
    .local v13, "h6":B
    const/16 v24, 0x18

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v12, v0

    .line 86
    .local v12, "h5":B
    const/16 v24, 0x20

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v11, v0

    .line 87
    .local v11, "h4":B
    const/16 v24, 0x28

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v10, v0

    .line 88
    .local v10, "h3":B
    const/16 v24, 0x30

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v9, v0

    .line 89
    .local v9, "h2":B
    const/16 v24, 0x38

    shr-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v8, v0

    .line 90
    .local v8, "h1":B
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v8, v21, v18

    .line 91
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v9, v21, v17

    .line 92
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v10, v21, v18

    .line 93
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v11, v21, v17

    .line 94
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v12, v21, v18

    .line 95
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v13, v21, v17

    .line 96
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v14, v21, v18

    .line 97
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v15, v21, v17

    .line 99
    return-object v21

    .line 57
    .end local v6    # "N":J
    .end local v8    # "h1":B
    .end local v9    # "h2":B
    .end local v10    # "h3":B
    .end local v11    # "h4":B
    .end local v12    # "h5":B
    .end local v13    # "h6":B
    .end local v14    # "h7":B
    .end local v15    # "h8":B
    .end local v16    # "i":I
    .end local v18    # "l":I
    .end local v21    # "newbyte":[B
    :cond_0
    const/16 v24, 0x38

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 58
    const/16 v23, 0x3f

    .line 59
    add-int/lit8 v24, v20, 0x8

    add-int/lit8 v22, v24, 0x40

    goto/16 :goto_0

    .line 61
    :cond_1
    rsub-int/lit8 v24, v19, 0x3f

    add-int/lit8 v23, v24, 0x38

    .line 62
    add-int/lit8 v24, v20, 0x40

    sub-int v24, v24, v19

    add-int/lit8 v22, v24, 0x40

    goto/16 :goto_0

    .line 77
    .restart local v16    # "i":I
    .restart local v18    # "l":I
    .restart local v21    # "newbyte":[B
    :cond_2
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    const/16 v24, 0x0

    aput-byte v24, v21, v18

    .line 76
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "l":I
    .restart local v18    # "l":I
    goto/16 :goto_1
.end method

.method private bK()V
    .locals 14

    .prologue
    .line 120
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_0
    const/16 v10, 0x4f

    if-le v0, v10, :cond_0

    .line 125
    const/4 v10, 0x5

    new-array v9, v10, [I

    .line 127
    .local v9, "tmpabcde":[I
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    array-length v10, v9

    if-lt v1, v10, :cond_1

    .line 131
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/16 v10, 0x13

    if-le v3, v10, :cond_2

    .line 142
    const/16 v4, 0x14

    .local v4, "k":I
    :goto_3
    const/16 v10, 0x27

    if-le v4, v10, :cond_3

    .line 153
    const/16 v5, 0x28

    .local v5, "l":I
    :goto_4
    const/16 v10, 0x3b

    if-le v5, v10, :cond_4

    .line 164
    const/16 v6, 0x3c

    .local v6, "m":I
    :goto_5
    const/16 v10, 0x4f

    if-le v6, v10, :cond_5

    .line 175
    const/4 v2, 0x0

    .local v2, "i2":I
    :goto_6
    array-length v10, v9

    if-lt v2, v10, :cond_6

    .line 179
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_7
    iget-object v10, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    array-length v10, v10

    if-lt v7, v10, :cond_7

    .line 182
    return-void

    .line 121
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "l":I
    .end local v6    # "m":I
    .end local v7    # "n":I
    .end local v9    # "tmpabcde":[I
    :cond_0
    iget-object v10, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    iget-object v11, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    add-int/lit8 v12, v0, -0x3

    aget v11, v11, v12

    iget-object v12, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    add-int/lit8 v13, v0, -0x8

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    add-int/lit8 v13, v0, -0xe

    aget v12, v12, v13

    xor-int/2addr v11, v12

    .line 122
    iget-object v12, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    add-int/lit8 v13, v0, -0x10

    aget v12, v12, v13

    xor-int/2addr v11, v12

    const/4 v12, 0x1

    .line 121
    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v11

    aput v11, v10, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .restart local v1    # "i1":I
    .restart local v9    # "tmpabcde":[I
    :cond_1
    iget-object v10, p0, Lcom/cmdm/control/util/encry/SHA1;->dZ:[I

    aget v10, v10, v1

    aput v10, v9, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .restart local v3    # "j":I
    :cond_2
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v10

    .line 133
    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Lcom/cmdm/control/util/encry/SHA1;->a(III)I

    move-result v11

    .line 132
    add-int/2addr v10, v11

    .line 133
    const/4 v11, 0x4

    aget v11, v9, v11

    .line 132
    add-int/2addr v10, v11

    .line 134
    iget-object v11, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    aget v11, v11, v3

    .line 132
    add-int/2addr v10, v11

    .line 134
    const v11, 0x5a827999

    .line 132
    add-int v8, v10, v11

    .line 135
    .local v8, "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 136
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 137
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v11

    aput v11, v9, v10

    .line 138
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 139
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 143
    .end local v8    # "tmp":I
    .restart local v4    # "k":I
    :cond_3
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v10

    .line 144
    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Lcom/cmdm/control/util/encry/SHA1;->b(III)I

    move-result v11

    .line 143
    add-int/2addr v10, v11

    .line 144
    const/4 v11, 0x4

    aget v11, v9, v11

    .line 143
    add-int/2addr v10, v11

    .line 145
    iget-object v11, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    aget v11, v11, v4

    .line 143
    add-int/2addr v10, v11

    .line 145
    const v11, 0x6ed9eba1

    .line 143
    add-int v8, v10, v11

    .line 146
    .restart local v8    # "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 147
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 148
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v11

    aput v11, v9, v10

    .line 149
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 150
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 154
    .end local v8    # "tmp":I
    .restart local v5    # "l":I
    :cond_4
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v10

    .line 155
    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Lcom/cmdm/control/util/encry/SHA1;->c(III)I

    move-result v11

    .line 154
    add-int/2addr v10, v11

    .line 155
    const/4 v11, 0x4

    aget v11, v9, v11

    .line 154
    add-int/2addr v10, v11

    .line 156
    iget-object v11, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    aget v11, v11, v5

    .line 154
    add-int/2addr v10, v11

    .line 156
    const v11, -0x70e44324

    .line 154
    add-int v8, v10, v11

    .line 157
    .restart local v8    # "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 158
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 159
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v11

    aput v11, v9, v10

    .line 160
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 161
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 165
    .end local v8    # "tmp":I
    .restart local v6    # "m":I
    :cond_5
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v10

    .line 166
    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Lcom/cmdm/control/util/encry/SHA1;->b(III)I

    move-result v11

    .line 165
    add-int/2addr v10, v11

    .line 166
    const/4 v11, 0x4

    aget v11, v9, v11

    .line 165
    add-int/2addr v10, v11

    .line 167
    iget-object v11, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    aget v11, v11, v6

    .line 165
    add-int/2addr v10, v11

    .line 167
    const v11, -0x359d3e2a    # -3715189.5f

    .line 165
    add-int v8, v10, v11

    .line 168
    .restart local v8    # "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 169
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 170
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/util/encry/SHA1;->g(II)I

    move-result v11

    aput v11, v9, v10

    .line 171
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 172
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 176
    .end local v8    # "tmp":I
    .restart local v2    # "i2":I
    :cond_6
    iget-object v10, p0, Lcom/cmdm/control/util/encry/SHA1;->dZ:[I

    iget-object v11, p0, Lcom/cmdm/control/util/encry/SHA1;->dZ:[I

    aget v11, v11, v2

    aget v12, v9, v2

    add-int/2addr v11, v12

    aput v11, v10, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 180
    .restart local v7    # "n":I
    :cond_7
    iget-object v10, p0, Lcom/cmdm/control/util/encry/SHA1;->ea:[I

    const/4 v11, 0x0

    aput v11, v10, v7

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7
.end method

.method private c(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 111
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytearray"    # [B

    .prologue
    .line 213
    const-string v1, ""

    .line 215
    .local v1, "strDigest":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 219
    return-object v1

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/cmdm/control/util/encry/SHA1;->b(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 115
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "1"

    .line 242
    .local v0, "data":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    new-instance v2, Lcom/cmdm/control/util/encry/SHA1;

    invoke-direct {v2}, Lcom/cmdm/control/util/encry/SHA1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfString([B)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "digest":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    return-void
.end method


# virtual methods
.method public getDigestOfBytes([B)[B
    .locals 4
    .param p1, "byteData"    # [B

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/cmdm/control/util/encry/SHA1;->a([B)I

    .line 226
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 228
    .local v0, "digest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cmdm/control/util/encry/SHA1;->dZ:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 232
    return-object v0

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/cmdm/control/util/encry/SHA1;->dZ:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {p0, v2, v0, v3}, Lcom/cmdm/control/util/encry/SHA1;->a(I[BI)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDigestOfString([B)Ljava/lang/String;
    .locals 1
    .param p1, "byteData"    # [B

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/SHA1;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
