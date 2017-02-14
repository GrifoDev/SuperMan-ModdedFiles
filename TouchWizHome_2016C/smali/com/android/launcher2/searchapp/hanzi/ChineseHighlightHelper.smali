.class public Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;
.super Ljava/lang/Object;
.source "ChineseHighlightHelper.java"


# static fields
.field private static final LIMIT_TEXT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ChineseHighlightHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aggregateMultiPinyins([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    array-length v3, p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-lez v3, :cond_2

    array-length v8, p0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x7c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v4, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method private static buildMultiPinyinArrayList([[Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2, v1}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->aggregateMultiPinyins([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static findPosToPinyin(Ljava/lang/CharSequence;Ljava/lang/String;[I)Z
    .locals 29

    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v26

    const/16 v27, 0x32

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->isLatin(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v26

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v24

    if-ge v5, v0, :cond_8

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    :goto_3
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v5, v0, :cond_9

    aput v11, v21, v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v11, v11, v26

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v5, v0, :cond_1

    const/4 v6, 0x0

    aget v14, v21, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1b

    const/4 v6, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v27

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v27, v14, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_a

    add-int/lit8 v26, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v26, v26, v14

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    const/4 v12, 0x0

    :cond_a
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v27, v5, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_b

    add-int/lit8 v26, v5, 0x1

    aget v26, v21, v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v26, v26, v14

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    const/4 v13, 0x0

    :cond_b
    if-lez v12, :cond_d

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v2, v0, :cond_18

    add-int v26, v14, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_c

    add-int v26, v14, v2

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v2

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    :cond_d
    if-lez v13, :cond_f

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v2, v0, :cond_18

    add-int v26, v5, v2

    aget v26, v21, v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_e

    add-int v26, v5, v2

    aget v26, v21, v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v2

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1a

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1a

    const-string v15, ""

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v26, 0x0

    const-string v27, ""

    aput-object v27, v17, v26

    const/16 v26, 0x1

    const-string v27, ""

    aput-object v27, v17, v26

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x1

    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    add-int v26, v14, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    if-nez v2, :cond_11

    const/16 v26, 0x0

    aget-object v26, v17, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v26, 0x0

    aget-object v26, v17, v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    const/16 v26, 0x1

    aget-object v26, v17, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_13

    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    :goto_a
    add-int v18, v18, v26

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/4 v3, 0x0

    :goto_b
    move/from16 v0, v19

    if-ge v3, v0, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v26, 0x0

    aget-object v26, v17, v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_13
    const/16 v26, 0x1

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_17

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_16

    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_1

    if-ge v3, v2, :cond_15

    add-int v26, v14, v3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_15
    add-int v26, v14, v2

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_e

    :catch_0
    move-exception v7

    const-string v26, "ChineseHighlightHelper"

    const-string v27, "search highlight RuntimeException!"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_17
    const/4 v6, 0x0

    :cond_18
    :goto_f
    if-nez v6, :cond_1

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_1a
    const/4 v6, 0x0

    goto :goto_f

    :cond_1b
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_19

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_19

    const-string v15, ""

    const/4 v2, 0x0

    const/4 v6, 0x1

    :goto_10
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v27

    add-int v26, v5, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1e

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_1

    if-ge v3, v2, :cond_1d

    add-int v26, v5, v3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1d
    add-int v26, v5, v2

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    :catch_1
    move-exception v7

    const-string v26, "ChineseHighlightHelper"

    const-string v27, "search highlight exception!"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private static getArrayListWithLastSuffix(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    aget-object v5, v1, v6

    invoke-static {v5}, Lcom/android/launcher2/searchapp/format/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    aget-object v5, v1, v7

    invoke-static {v5}, Lcom/android/launcher2/searchapp/format/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    invoke-static {p1}, Lcom/android/launcher2/searchapp/format/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    aget-object v5, v0, v6

    if-eqz v5, :cond_0

    aget-object v5, v0, v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    aget-object v5, v0, v7

    if-eqz v5, :cond_3

    aget-object v5, v0, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v4, 0x1

    :cond_2
    :goto_0
    return v4

    :cond_3
    invoke-static {p0}, Lcom/android/launcher2/searchapp/format/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v3, v11, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v3, v9

    const-string v7, ""

    aput-object v7, v3, v10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_1

    aput-object p0, v3, v9

    aput-object p0, v3, v10

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getMultiPinyinsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_2
    if-eqz v4, :cond_5

    if-le v6, v10, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    add-int/lit8 v2, v5, -0x1

    :goto_2
    if-ltz v2, :cond_4

    const-string v7, ""

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    aget-object v7, v0, v2

    aput-object v7, v3, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    goto :goto_0
.end method

.method private static getMultiPinYinWithPrefixWithoutTokenSource([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static getMultiPinyinsForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x3

    const/4 v13, 0x0

    const/16 v12, 0x7c

    const/4 v0, 0x3

    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    new-array v2, v14, [[Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    const/4 v10, 0x2

    iget v11, v7, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    if-ne v10, v11, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v10, v7, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1

    const/4 v11, 0x1

    if-gt v10, v11, :cond_1

    iget-object v10, v7, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-ge v4, v14, :cond_2

    aget-object v10, v1, v13

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getMultiPinYinWithPrefixWithoutTokenSource([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    aget-object v10, v1, v13

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v1, v13

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v10, v7, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    array-length v9, v2

    if-lez v9, :cond_6

    invoke-static {v2, v4}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->buildMultiPinyinArrayList([[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/launcher2/searchapp/hanzi/ChineseHighlightHelper;->getArrayListWithLastSuffix(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method private static isLatin(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\p{ASCII}+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
