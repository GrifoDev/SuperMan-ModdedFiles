.class Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;
.super Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;
.source "SearchAppLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraditionalChineseHKUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;-><init>()V

    return-void
.end method

.method private getStrokeNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v22, 0x1e

    move/from16 v0, v22

    if-le v14, v0, :cond_0

    const/16 v14, 0x1e

    :cond_0
    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "zh_HK_#Hant"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "zh_HK"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_1
    invoke-static {}, Lcom/android/launcher2/searchapp/HanziToStroke;->getIntance()Lcom/android/launcher2/searchapp/HanziToStroke;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/searchapp/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    if-nez v19, :cond_2

    const/16 v22, 0x0

    :goto_0
    return-object v22

    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v17

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v17, -0x1

    :goto_1
    if-ltz v2, :cond_15

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/searchapp/HanziToStroke$Token;

    const-string v22, "SearchAppLocaleUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "token.source = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "token.target = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "token.type = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    if-nez v2, :cond_4

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_6

    const/16 v22, 0x0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_7

    const/16 v22, 0x0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_7
    if-nez v2, :cond_8

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v22, v3, -0x1

    move/from16 v0, v22

    if-gt v2, v0, :cond_f

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    const/16 v22, 0x2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/16 v22, 0x1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    if-gt v5, v0, :cond_c

    new-instance v18, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    invoke-direct/range {v18 .. v18}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;-><init>()V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v17, -0x1

    :goto_9
    if-ltz v2, :cond_15

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    const/16 v22, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_a
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_9

    :cond_11
    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_12

    const/16 v22, 0x0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_13

    const/16 v22, 0x0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_13
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_14
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_15
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    goto/16 :goto_0
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/searchapp/HanziToStroke;->getIntance()Lcom/android/launcher2/searchapp/HanziToStroke;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/searchapp/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/HanziToStroke$Token;

    const/4 v3, 0x2

    iget v4, v1, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$TraditionalChineseHKUtils;->getStrokeNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x20

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_CN_#Hans"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_CN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_HK_#Hans"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_MO_#Hans"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_SG_#Hans"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_MO_#Hant"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_0
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    iget v6, v2, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    if-ne v8, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v6, v2, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v6, v2, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_HK_#Hant"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->access$000()Lcom/android/launcher2/searchapp/LocaleSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_HK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_7
    move-object v1, p1

    if-eqz p1, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-static {}, Lcom/android/launcher2/searchapp/HanziToStroke;->getIntance()Lcom/android/launcher2/searchapp/HanziToStroke;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher2/searchapp/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/searchapp/HanziToStroke$Token;

    iget v6, v2, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    if-ne v8, v6, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0xa4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_b
    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_c
    invoke-super {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils$SearchAppLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method
