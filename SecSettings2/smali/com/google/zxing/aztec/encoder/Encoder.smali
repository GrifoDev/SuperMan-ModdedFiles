.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/16 v4, 0x8

    const/16 v3, 0xc

    const/16 v2, 0xa

    const/16 v0, 0x21

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x1

    aput v5, v0, v1

    const/4 v1, 0x2

    aput v5, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    aput v4, v0, v6

    const/4 v1, 0x5

    aput v4, v0, v1

    aput v4, v0, v5

    const/4 v1, 0x7

    aput v4, v0, v1

    aput v4, v0, v4

    const/16 v1, 0x9

    aput v2, v0, v1

    aput v2, v0, v2

    const/16 v1, 0xb

    aput v2, v0, v1

    aput v2, v0, v3

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    aput v3, v0, v1

    const/16 v1, 0x1e

    aput v3, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 8

    const/4 v6, 0x0

    new-array v2, p2, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    div-int v3, v5, p1

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, p1, :cond_1

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int v5, v0, p1

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_2
    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    const/4 v7, 0x1

    shl-int v5, v7, v5

    goto :goto_2
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    sub-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    return-void

    :cond_0
    sub-int v1, p1, v0

    :goto_1
    add-int v2, p1, v0

    if-le v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 5

    div-int/lit8 v0, p2, 0x2

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    if-lt v1, v3, :cond_6

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v0, -0x3

    add-int v2, v3, v1

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_4
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v0, -0x5

    add-int/2addr v3, v1

    div-int/lit8 v4, v1, 0x5

    add-int v2, v3, v4

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_6
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_7
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_8

    :cond_a
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_9
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 34

    new-instance v29, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int v29, v29, p1

    div-int/lit8 v29, v29, 0x64

    add-int/lit8 v10, v29, 0xb

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v26, v29, v10

    if-nez p2, :cond_1

    const/16 v28, 0x0

    const/16 v24, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v29, 0x20

    move/from16 v0, v29

    if-gt v11, v0, :cond_9

    const/16 v29, 0x3

    move/from16 v0, v29

    if-le v11, v0, :cond_a

    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_b

    move v14, v11

    :goto_2
    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v29, v29, v14

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :goto_3
    rem-int v29, v25, v28

    sub-int v27, v25, v29

    if-nez v9, :cond_d

    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_4

    const/4 v9, 0x0

    :goto_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-nez v9, :cond_5

    const/16 v29, 0x20

    :goto_6
    move/from16 v0, v29

    if-gt v14, v0, :cond_6

    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    rem-int v29, v25, v28

    sub-int v27, v25, v29

    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-gt v0, v1, :cond_7

    if-nez v9, :cond_8

    :cond_2
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v17

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    div-int v18, v29, v28

    move/from16 v0, v18

    invoke-static {v9, v14, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v19

    if-nez v9, :cond_e

    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v5, v29, 0xe

    :goto_7
    new-array v3, v5, [I

    if-nez v9, :cond_f

    add-int/lit8 v29, v5, 0x1

    div-int/lit8 v30, v5, 0x2

    add-int/lit8 v30, v30, -0x1

    div-int/lit8 v30, v30, 0xf

    mul-int/lit8 v30, v30, 0x2

    add-int v16, v29, v30

    div-int/lit8 v21, v5, 0x2

    div-int/lit8 v7, v16, 0x2

    const/4 v11, 0x0

    :goto_8
    move/from16 v0, v21

    if-lt v11, v0, :cond_10

    :cond_3
    new-instance v15, Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v11, 0x0

    const/16 v22, 0x0

    :goto_9
    if-lt v11, v14, :cond_11

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v15, v9, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    if-nez v9, :cond_19

    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_a
    div-int/lit8 v29, v5, 0x2

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-lt v11, v0, :cond_1a

    :goto_b
    new-instance v4, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v4}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    invoke-virtual {v4, v9}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    invoke-virtual {v4, v14}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    invoke-virtual {v4, v15}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v4

    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_5
    const/16 v29, 0x4

    goto/16 :goto_6

    :cond_6
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Illegal value %s for layers"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_7
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int/lit8 v30, v28, 0x40

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_9
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Data too large for an Aztec code"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v14, v11, 0x1

    goto/16 :goto_2

    :cond_c
    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int/lit8 v30, v28, 0x40

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_0

    goto/16 :goto_4

    :cond_e
    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v5, v29, 0xb

    goto/16 :goto_7

    :cond_f
    move/from16 v16, v5

    const/4 v11, 0x0

    :goto_c
    array-length v0, v3

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v11, v0, :cond_3

    aput v11, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_10
    div-int/lit8 v29, v11, 0xf

    add-int v20, v11, v29

    sub-int v29, v21, v11

    add-int/lit8 v29, v29, -0x1

    sub-int v30, v7, v20

    add-int/lit8 v30, v30, -0x1

    aput v30, v3, v29

    add-int v29, v21, v11

    add-int v30, v7, v20

    add-int/lit8 v30, v30, 0x1

    aput v30, v3, v29

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    :cond_11
    if-nez v9, :cond_12

    sub-int v29, v14, v11

    mul-int/lit8 v29, v29, 0x4

    add-int/lit8 v23, v29, 0xc

    :goto_d
    const/4 v12, 0x0

    :goto_e
    move/from16 v0, v23

    if-lt v12, v0, :cond_13

    mul-int/lit8 v29, v23, 0x8

    add-int v22, v22, v29

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    :cond_12
    sub-int v29, v14, v11

    mul-int/lit8 v29, v29, 0x4

    add-int/lit8 v23, v29, 0x9

    goto :goto_d

    :cond_13
    mul-int/lit8 v8, v12, 0x2

    const/4 v13, 0x0

    :goto_f
    const/16 v29, 0x2

    move/from16 v0, v29

    if-lt v13, v0, :cond_14

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_14
    add-int v29, v22, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_15

    :goto_10
    mul-int/lit8 v29, v23, 0x2

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_16

    :goto_11
    mul-int/lit8 v29, v23, 0x4

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_17

    :goto_12
    mul-int/lit8 v29, v23, 0x6

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_18

    :goto_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_15
    mul-int/lit8 v29, v11, 0x2

    add-int v29, v29, v13

    aget v29, v3, v29

    mul-int/lit8 v30, v11, 0x2

    add-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_10

    :cond_16
    mul-int/lit8 v29, v11, 0x2

    add-int v29, v29, v12

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    mul-int/lit8 v31, v11, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_11

    :cond_17
    add-int/lit8 v29, v5, -0x1

    mul-int/lit8 v30, v11, 0x2

    sub-int v29, v29, v30

    sub-int v29, v29, v13

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    mul-int/lit8 v31, v11, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_12

    :cond_18
    add-int/lit8 v29, v5, -0x1

    mul-int/lit8 v30, v11, 0x2

    sub-int v29, v29, v30

    sub-int v29, v29, v12

    aget v29, v3, v29

    mul-int/lit8 v30, v11, 0x2

    add-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_13

    :cond_19
    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto/16 :goto_b

    :cond_1a
    div-int/lit8 v29, v16, 0x2

    and-int/lit8 v13, v29, 0x1

    :goto_14
    move/from16 v0, v16

    if-lt v13, v0, :cond_1b

    add-int/lit8 v11, v11, 0xf

    add-int/lit8 v12, v12, 0x10

    goto/16 :goto_a

    :cond_1b
    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v13, v13, 0x2

    goto :goto_14
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 11

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    div-int v4, v10, p2

    new-instance v7, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    div-int v9, p1, p2

    invoke-static {p0, p2, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v6

    sub-int v10, v9, v4

    invoke-virtual {v7, v6, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    rem-int v8, p1, p2

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move-object v0, v6

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    aget v5, v0, v1

    invoke-virtual {v3, v5, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4

    const/4 v3, 0x4

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-nez p0, :cond_0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, p2, -0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x28

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x1c

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    shl-int v6, v7, p1

    add-int/lit8 v2, v6, -0x2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, p1, :cond_1

    and-int v6, v5, v2

    if-eq v6, v2, :cond_4

    and-int v6, v5, v2

    if-eqz v6, :cond_5

    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_2
    add-int/2addr v0, p1

    goto :goto_0

    :cond_1
    add-int v6, v0, v1

    if-lt v6, v3, :cond_3

    :cond_2
    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int v6, v0, v1

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_4
    and-int v6, v5, v2

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x70

    :goto_0
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v0, 0x58

    goto :goto_0
.end method
