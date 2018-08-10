.class public final Lcom/android/internal/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;,
        Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 4

    const/4 v3, 0x3

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x2

    return v2

    :cond_4
    return v3
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
            "<TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    move-result v9

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-array v13, v9, [B

    new-array v11, v9, [Landroid/icu/util/ULocale;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v15, :cond_8

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x0

    aput-byte v16, v13, v6

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    aget-object v16, v11, v6

    if-nez v16, :cond_5

    invoke-static {v10}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v16

    aput-object v16, v11, v6

    :cond_5
    aget-object v16, v11, v6

    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v16

    aput-byte v16, v13, v6

    if-eqz v3, :cond_3

    aget-byte v16, v13, v6

    if-eqz v16, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    if-nez v3, :cond_1

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    if-nez v2, :cond_7

    new-instance v16, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v5}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v13, v5}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    goto :goto_1

    :cond_8
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/16 v16, 0x0

    array-length v0, v12

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    aget-object v4, v12, v16

    iget v0, v4, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method
