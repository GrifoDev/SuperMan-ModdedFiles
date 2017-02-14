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

.method private static calculateMatchingScore(Landroid/icu/util/ULocale;Landroid/os/LocaleList;[B)Z
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aput-byte v4, p2, v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v5

    aput-byte v5, p2, v2

    if-eqz v1, :cond_1

    aget-byte v5, p2, v2

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    :goto_2
    return v4

    :cond_4
    const/4 v4, 0x1

    goto :goto_2
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

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x2

    return v2
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 12
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

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    move-result v9

    new-array v6, v9, [B

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v9

    invoke-static {v9, p2, v6}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingScore(Landroid/icu/util/ULocale;Landroid/os/LocaleList;[B)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    if-nez v0, :cond_1

    new-instance v9, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v9, v6, v2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6, v2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v9, 0x0

    array-length v10, v5

    :goto_2
    if-ge v9, v10, :cond_3

    aget-object v1, v5, v9

    iget v11, v1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
