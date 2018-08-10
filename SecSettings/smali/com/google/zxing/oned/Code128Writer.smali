.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .locals 6

    const/4 v4, 0x0

    add-int v1, p1, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p1

    :goto_0
    if-lt v2, v1, :cond_1

    :cond_0
    if-le v1, v3, :cond_5

    :goto_1
    return v4

    :cond_1
    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-ge v0, v5, :cond_3

    :cond_2
    const/16 v5, 0xf1

    if-ne v0, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can only encode CODE_128, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ge v13, v0, :cond_1

    :cond_0
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_1
    const/16 v23, 0x50

    move/from16 v0, v23

    if-gt v13, v0, :cond_0

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v13, :cond_4

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v19, 0x0

    :cond_2
    :goto_1
    move/from16 v0, v19

    if-lt v0, v13, :cond_7

    rem-int/lit8 v5, v5, 0x67

    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v23, v23, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v24, 0x6a

    aget-object v23, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_e

    new-array v0, v8, [Z

    move-object/from16 v21, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_f

    return-object v21

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v4, v0, :cond_6

    :cond_5
    packed-switch v4, :pswitch_data_0

    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Bad character in input: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_6
    const/16 v23, 0x7e

    move/from16 v0, v23

    if-gt v4, v0, :cond_5

    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    const/16 v23, 0x63

    move/from16 v0, v23

    if-eq v7, v0, :cond_8

    const/16 v20, 0x4

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v23

    if-nez v23, :cond_9

    const/16 v14, 0x64

    :goto_4
    if-eq v14, v7, :cond_a

    if-eqz v7, :cond_c

    move/from16 v16, v14

    :goto_5
    move v7, v14

    :goto_6
    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v23, v23, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int v23, v16, v6

    add-int v5, v5, v23

    if-eqz v19, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    const/16 v20, 0x2

    goto :goto_3

    :cond_9
    const/16 v14, 0x63

    goto :goto_4

    :cond_a
    const/16 v23, 0x64

    move/from16 v0, v23

    if-eq v7, v0, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    packed-switch v23, :pswitch_data_1

    add-int/lit8 v23, v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v19, v19, 0x2

    goto :goto_6

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    add-int/lit8 v16, v23, -0x20

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :pswitch_1
    const/16 v16, 0x66

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :pswitch_2
    const/16 v16, 0x61

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :pswitch_3
    const/16 v16, 0x60

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :pswitch_4
    const/16 v16, 0x64

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_c
    const/16 v23, 0x64

    move/from16 v0, v23

    if-eq v14, v0, :cond_d

    const/16 v16, 0x69

    goto :goto_5

    :cond_d
    const/16 v16, 0x68

    goto :goto_5

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    move-object v3, v15

    array-length v12, v3

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v12, :cond_3

    aget v22, v3, v10

    add-int v8, v8, v22

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v15, v2}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v23

    add-int v18, v18, v23

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
