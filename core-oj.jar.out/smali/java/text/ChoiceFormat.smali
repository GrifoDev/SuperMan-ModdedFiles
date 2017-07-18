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

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([D[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    return-void
.end method

.method private static doubleArraySize([D)[D
    .locals 4

    const/4 v3, 0x0

    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [D

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    return-object v0
.end method

.method private doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    array-length v1, p1

    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final nextDouble(D)D
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DZ)D
    .locals 12

    const-wide/16 v10, 0x1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 v8, 0x0

    cmpl-double v8, p0, v8

    if-nez v8, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    if-eqz p2, :cond_1

    return-wide v6

    :cond_1
    neg-double v8, v6

    return-wide v8

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v8, 0x7fffffffffffffffL

    and-long v2, v0, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    if-ne v8, p2, :cond_5

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v8, v2, v8

    if-eqz v8, :cond_3

    add-long/2addr v2, v10

    :cond_3
    :goto_1
    const-wide/high16 v8, -0x8000000000000000L

    and-long v4, v0, v8

    or-long v8, v2, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    return-wide v8

    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    sub-long/2addr v2, v10

    goto :goto_1
.end method

.method public static final previousDouble(D)D
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "limits and format arrays of different length."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 21

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    :goto_0
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v18, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/16 v18, 0x1e

    move/from16 v0, v18

    new-array v10, v0, [D

    const/16 v18, 0x1e

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

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

    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-eq v4, v0, :cond_5

    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    :cond_5
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-nez v18, :cond_8

    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    :cond_6
    const/16 v18, 0x2264

    move/from16 v0, v18

    if-eq v4, v0, :cond_5

    const/16 v18, 0x7c

    move/from16 v0, v18

    if-ne v4, v0, :cond_d

    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :cond_7
    aput-wide v16, v10, v5

    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v5

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v12, v16

    const/16 v18, 0x1

    aget-object v18, v14, v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v11, 0x0

    goto :goto_2

    :cond_8
    const/16 v18, 0x0

    :try_start_0
    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v18, "\u221e"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_a

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_3
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v18, v16, v18

    if-eqz v18, :cond_9

    const-wide/high16 v18, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v18, v16, v18

    if-eqz v18, :cond_9

    invoke-static/range {v16 .. v17}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v16

    :cond_9
    cmpg-double v18, v16, v12

    if-gtz v18, :cond_c

    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    :cond_a
    :try_start_1
    const-string/jumbo v18, "-\u221e"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_3

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

    :catch_0
    move-exception v6

    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    :cond_c
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_d
    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_10

    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v5, v0, :cond_f

    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :cond_f
    aput-wide v16, v10, v5

    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v5

    add-int/lit8 v5, v5, 0x1

    :cond_10
    new-array v0, v5, [D

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v10, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy([DI[DII)V

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v9, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ChoiceFormat;

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/ChoiceFormat;

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v3, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v1, v0

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFormats()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public getLimits()[D
    .locals 1

    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v1

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 10

    iget v4, p2, Ljava/text/ParsePosition;->index:I

    move v2, v4

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v8, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v5, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    iput v8, p2, Ljava/text/ParsePosition;->index:I

    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v6, v8, v3

    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-le v8, v2, :cond_2

    iget v2, p2, Ljava/text/ParsePosition;->index:I

    move-wide v0, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v2, v8, :cond_2

    :cond_0
    iput v2, p2, Ljava/text/ParsePosition;->index:I

    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-ne v8, v4, :cond_1

    iput v2, p2, Ljava/text/ParsePosition;->errorIndex:I

    :cond_1
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setChoices([D[Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Array and limit arrays must be of the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iput-object p2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 18

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v14, v14

    if-ge v3, v14, :cond_c

    if-eqz v3, :cond_0

    const/16 v14, 0x7c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    invoke-static {v14, v15}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v14, v12, v10

    if-gez v14, :cond_5

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

    const/16 v14, 0x23

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v9, v14, v3

    const/16 v14, 0x3c

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_1

    const/16 v14, 0x23

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_8

    :cond_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    const/16 v14, 0x27

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v14, 0x27

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz v5, :cond_4

    const/16 v14, 0x27

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_6

    const-string/jumbo v14, "\u221e"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const/16 v14, 0x3c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_7

    const-string/jumbo v14, "-\u221e"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

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

    :cond_8
    const/16 v14, 0x2264

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_1

    const/16 v14, 0x7c

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v4, v14, :cond_3

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v14, 0x27

    if-ne v2, v14, :cond_b

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method
