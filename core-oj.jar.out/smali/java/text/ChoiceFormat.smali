.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field static final EXPONENT:J = 0x7ff0000000000000L

.field static final POSITIVEINFINITY:J = 0x7ff0000000000000L

.field static final SIGN:J = -0x8000000000000000L

.field private static final serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private choiceFormats:[Ljava/lang/String;

.field private choiceLimits:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "newPattern"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 311
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public constructor <init>([D[Ljava/lang/String;)V
    .locals 0
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 319
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private static doubleArraySize([D)[D
    .locals 4
    .param p0, "array"    # [D

    .prologue
    const/4 v3, 0x0

    .line 606
    array-length v1, p0

    .line 607
    .local v1, "oldSize":I
    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [D

    .line 608
    .local v0, "newArray":[D
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 609
    return-object v0
.end method

.method private doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 613
    array-length v1, p1

    .line 614
    .local v1, "oldSize":I
    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 615
    .local v0, "newArray":[Ljava/lang/String;
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    return-object v0
.end method

.method public static final nextDouble(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 441
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DZ)D
    .locals 12
    .param p0, "d"    # D
    .param p2, "positive"    # Z

    .prologue
    const-wide/16 v10, 0x1

    .line 567
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 568
    return-wide p0

    .line 572
    :cond_0
    const-wide/16 v8, 0x0

    cmpl-double v8, p0, v8

    if-nez v8, :cond_2

    .line 573
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 574
    .local v6, "smallestPositiveDouble":D
    if-eqz p2, :cond_1

    .line 575
    return-wide v6

    .line 577
    :cond_1
    neg-double v8, v6

    return-wide v8

    .line 584
    .end local v6    # "smallestPositiveDouble":D
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 587
    .local v0, "bits":J
    const-wide v8, 0x7fffffffffffffffL

    and-long v2, v0, v8

    .line 590
    .local v2, "magnitude":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    if-ne v8, p2, :cond_5

    .line 591
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v8, v2, v8

    if-eqz v8, :cond_3

    .line 592
    add-long/2addr v2, v10

    .line 601
    :cond_3
    :goto_1
    const-wide/high16 v8, -0x8000000000000000L

    and-long v4, v0, v8

    .line 602
    .local v4, "signbit":J
    or-long v8, v2, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    return-wide v8

    .line 590
    .end local v4    # "signbit":J
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 597
    :cond_5
    sub-long/2addr v2, v10

    goto :goto_1
.end method

.method public static final previousDouble(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 498
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 499
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 500
    const-string/jumbo v1, "limits and format arrays of different length."

    .line 499
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 21
    .param p1, "newPattern"    # Ljava/lang/String;

    .prologue
    .line 177
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/StringBuffer;

    .line 178
    .local v14, "segments":[Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 179
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v18, v14, v7

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const/16 v18, 0x1e

    move/from16 v0, v18

    new-array v10, v0, [D

    .line 182
    .local v10, "newChoiceLimits":[D
    const/16 v18, 0x1e

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    .line 183
    .local v9, "newChoiceFormats":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 184
    .local v5, "count":I
    const/4 v11, 0x0

    .line 185
    .local v11, "part":I
    const-wide/16 v16, 0x0

    .line 186
    .local v16, "startValue":D
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 187
    .local v12, "oldStartValue":D
    const/4 v8, 0x0

    .line 188
    .local v8, "inQuote":Z
    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_e

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 190
    .local v4, "ch":C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

    .line 192
    add-int/lit8 v18, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-ne v0, v4, :cond_1

    .line 193
    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 188
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 196
    :cond_1
    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    goto :goto_2

    .line 198
    :cond_3
    if-eqz v8, :cond_4

    .line 199
    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 200
    :cond_4
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-eq v4, v0, :cond_5

    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    .line 201
    :cond_5
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-nez v18, :cond_8

    .line 202
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 200
    :cond_6
    const/16 v18, 0x2264

    move/from16 v0, v18

    if-eq v4, v0, :cond_5

    .line 225
    const/16 v18, 0x7c

    move/from16 v0, v18

    if-ne v4, v0, :cond_d

    .line 226
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    .line 227
    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v10

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 230
    :cond_7
    aput-wide v16, v10, v5

    .line 231
    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v5

    .line 232
    add-int/lit8 v5, v5, 0x1

    .line 233
    move-wide/from16 v12, v16

    .line 234
    const/16 v18, 0x1

    aget-object v18, v14, v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 235
    const/4 v11, 0x0

    goto :goto_2

    .line 205
    :cond_8
    const/16 v18, 0x0

    :try_start_0
    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 206
    .local v15, "tempBuffer":Ljava/lang/String;
    const-string/jumbo v18, "\u221e"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_a

    .line 207
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 216
    :goto_3
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v18, v16, v18

    if-eqz v18, :cond_9

    .line 217
    const-wide/high16 v18, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v18, v16, v18

    if-eqz v18, :cond_9

    .line 218
    invoke-static/range {v16 .. v17}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v16

    .line 220
    :cond_9
    cmpg-double v18, v16, v12

    if-gtz v18, :cond_c

    .line 221
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 208
    :cond_a
    :try_start_1
    const-string/jumbo v18, "-\u221e"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 209
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_3

    .line 211
    :cond_b
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v16

    goto :goto_3

    .line 213
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 214
    .local v6, "e":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 223
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "tempBuffer":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 224
    const/4 v11, 0x1

    .line 200
    goto/16 :goto_2

    .line 237
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :cond_d
    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 241
    .end local v4    # "ch":C
    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_10

    .line 242
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v5, v0, :cond_f

    .line 243
    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v10

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 246
    :cond_f
    aput-wide v16, v10, v5

    .line 247
    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v5

    .line 248
    add-int/lit8 v5, v5, 0x1

    .line 250
    :cond_10
    new-array v0, v5, [D

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v10, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 252
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v9, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 458
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ChoiceFormat;

    .line 460
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 461
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 462
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 481
    if-nez p1, :cond_0

    return v1

    .line 482
    :cond_0
    if-ne p0, p1, :cond_1

    .line 483
    const/4 v1, 0x1

    return v1

    .line 484
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 485
    return v1

    :cond_2
    move-object v0, p1

    .line 486
    check-cast v0, Ljava/text/ChoiceFormat;

    .line 487
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v3, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 487
    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v2, 0x0

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 386
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v1, v0

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 391
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 392
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 394
    :cond_1
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    :cond_2
    move v1, v2

    .line 386
    goto :goto_1

    .line 385
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .prologue
    .line 372
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFormats()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public getLimits()[D
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 469
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v1

    .line 470
    .local v0, "result":I
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 472
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 474
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .prologue
    .line 411
    iget v4, p2, Ljava/text/ParsePosition;->index:I

    .line 412
    .local v4, "start":I
    move v2, v4

    .line 413
    .local v2, "furthest":I
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 414
    .local v0, "bestNumber":D
    const-wide/16 v6, 0x0

    .line 415
    .local v6, "tempNumber":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 416
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v8, v3

    .line 417
    .local v5, "tempString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v5, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 418
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    iput v8, p2, Ljava/text/ParsePosition;->index:I

    .line 419
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v6, v8, v3

    .line 420
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-le v8, v2, :cond_2

    .line 421
    iget v2, p2, Ljava/text/ParsePosition;->index:I

    .line 422
    move-wide v0, v6

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v2, v8, :cond_2

    .line 427
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_0
    iput v2, p2, Ljava/text/ParsePosition;->index:I

    .line 428
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-ne v8, v4, :cond_1

    .line 429
    iput v2, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 431
    :cond_1
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v8

    .line 415
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setChoices([D[Ljava/lang/String;)V
    .locals 2
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .prologue
    .line 337
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 339
    const-string/jumbo v1, "Array and limit arrays must be of the same length."

    .line 338
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iput-object p1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 342
    iput-object p2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 336
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 18

    .prologue
    .line 260
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    .local v8, "result":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v14, v14

    if-ge v3, v14, :cond_c

    .line 262
    if-eqz v3, :cond_0

    .line 263
    const/16 v14, 0x7c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    invoke-static {v14, v15}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v6

    .line 269
    .local v6, "less":D
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 270
    .local v12, "tryLessOrEqual":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 272
    .local v10, "tryLess":D
    cmpg-double v14, v12, v10

    if-gez v14, :cond_5

    .line 273
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v16, v15, v3

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const/16 v14, 0x23

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 287
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v9, v14, v3

    .line 288
    .local v9, "text":Ljava/lang/String;
    const/16 v14, 0x3c

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_1

    .line 289
    const/16 v14, 0x23

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_8

    .line 288
    :cond_1
    const/4 v5, 0x1

    .line 292
    .local v5, "needQuote":Z
    :goto_2
    if-eqz v5, :cond_2

    const/16 v14, 0x27

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 293
    :cond_2
    const/16 v14, 0x27

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_3
    if-eqz v5, :cond_4

    const/16 v14, 0x27

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 276
    .end local v5    # "needQuote":Z
    .end local v9    # "text":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_6

    .line 277
    const-string/jumbo v14, "\u221e"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    :goto_3
    const/16 v14, 0x3c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 278
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_7

    .line 279
    const-string/jumbo v14, "-\u221e"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 281
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 290
    .restart local v9    # "text":Ljava/lang/String;
    :cond_8
    const/16 v14, 0x2264

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_1

    .line 291
    const/16 v14, 0x7c

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 295
    .restart local v5    # "needQuote":Z
    :cond_a
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v4, v14, :cond_3

    .line 296
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 297
    .local v2, "c":C
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    const/16 v14, 0x27

    if-ne v2, v14, :cond_b

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 303
    .end local v2    # "c":C
    .end local v4    # "j":I
    .end local v5    # "needQuote":Z
    .end local v6    # "less":D
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "tryLess":D
    .end local v12    # "tryLessOrEqual":D
    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method
