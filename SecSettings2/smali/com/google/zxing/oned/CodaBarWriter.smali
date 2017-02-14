.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [C

    const/16 v1, 0x41

    aput-char v1, v0, v2

    const/16 v1, 0x42

    aput-char v1, v0, v3

    const/16 v1, 0x43

    aput-char v1, v0, v4

    const/16 v1, 0x44

    aput-char v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    new-array v0, v6, [C

    const/16 v1, 0x54

    aput-char v1, v0, v2

    const/16 v1, 0x4e

    aput-char v1, v0, v3

    const/16 v1, 0x2a

    aput-char v1, v0, v4

    const/16 v1, 0x45

    aput-char v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_0
    const/16 v16, 0x0

    :goto_0
    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-nez v17, :cond_5

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eqz v16, :cond_6

    :cond_2
    const/16 v14, 0x14

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v4, v0, [C

    const/16 v17, 0x0

    const/16 v18, 0x2f

    aput-char v18, v4, v17

    const/16 v17, 0x1

    const/16 v18, 0x3a

    aput-char v18, v4, v17

    const/16 v17, 0x2

    const/16 v18, 0x2b

    aput-char v18, v4, v17

    const/16 v17, 0x3

    const/16 v18, 0x2e

    aput-char v18, v4, v17

    const/4 v9, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-lt v9, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    add-int v14, v14, v17

    new-array v13, v14, [Z

    const/4 v12, 0x0

    const/4 v10, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v10, v0, :cond_b

    return-object v13

    :cond_3
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "Codabar should start/end with start/stop symbols"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_4
    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_5
    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    if-nez v15, :cond_2

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Codabar should start/end with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", or start/end with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isDigit(C)Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    add-int/lit8 v14, v14, 0x9

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x24

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-nez v17, :cond_a

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Cannot encode : \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x27

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_a
    add-int/lit8 v14, v14, 0xa

    goto :goto_4

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_c

    :goto_5
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_6
    sget-object v17, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v9, v0, :cond_d

    :goto_7
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_8
    const/16 v17, 0x7

    move/from16 v0, v17

    if-lt v2, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-lt v10, v0, :cond_13

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_c
    sparse-switch v3, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const/16 v3, 0x43

    goto :goto_5

    :sswitch_1
    const/16 v3, 0x41

    goto :goto_5

    :sswitch_2
    const/16 v3, 0x42

    goto :goto_5

    :sswitch_3
    const/16 v3, 0x44

    goto :goto_5

    :cond_d
    sget-object v17, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v17, v17, v9

    move/from16 v0, v17

    if-eq v3, v0, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    sget-object v17, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v5, v17, v9

    goto :goto_7

    :cond_f
    aput-boolean v6, v13, v12

    add-int/lit8 v12, v12, 0x1

    rsub-int/lit8 v17, v2, 0x6

    shr-int v17, v5, v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_11

    :cond_10
    if-eqz v6, :cond_12

    const/4 v6, 0x0

    :goto_a
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    goto :goto_8

    :cond_11
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_10

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_12
    const/4 v6, 0x1

    goto :goto_a

    :cond_13
    const/16 v17, 0x0

    aput-boolean v17, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x45 -> :sswitch_3
        0x4e -> :sswitch_2
        0x54 -> :sswitch_1
    .end sparse-switch
.end method
