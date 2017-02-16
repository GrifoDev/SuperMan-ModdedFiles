.class Ljava/util/ResourceBundle$Control$CandidateListCache;
.super Lsun/util/locale/LocaleObjectCache;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle$Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CandidateListCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache",
        "<",
        "Lsun/util/locale/BaseLocale;",
        "Ljava/util/List",
        "<",
        "Ljava/util/Locale;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2311
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ResourceBundle$Control$CandidateListCache;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>()V

    return-void
.end method

.method private static getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2376
    const/4 v4, 0x0

    .line 2378
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 2379
    new-instance v4, Ljava/util/LinkedList;

    .end local v4    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 2380
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 2381
    .local v0, "idx":I
    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 2382
    invoke-virtual {p3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2383
    const/16 v5, 0x5f

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_0

    .line 2387
    .end local v0    # "idx":I
    .end local v4    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2389
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-eqz v4, :cond_1

    .line 2390
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "v$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2391
    .local v2, "v":Ljava/lang/String;
    invoke-static {p0, p1, p2, v2, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2394
    .end local v2    # "v":Ljava/lang/String;
    .end local v3    # "v$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2395
    const-string/jumbo v5, ""

    invoke-static {p0, p1, p2, v5, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2397
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 2398
    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-static {p0, p1, v5, v6, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    if-eqz v4, :cond_3

    .line 2403
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "v$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2404
    .restart local v2    # "v":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-static {p0, v5, p2, v2, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2407
    .end local v2    # "v":Ljava/lang/String;
    .end local v3    # "v$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 2408
    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-static {p0, v5, p2, v6, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2411
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 2412
    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-static {p0, v5, v6, v7, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2415
    :cond_5
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2417
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .prologue
    .line 2312
    check-cast p1, Lsun/util/locale/BaseLocale;

    .end local p1    # "base":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle$Control$CandidateListCache;->createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;
    .locals 18
    .param p1, "base"    # Lsun/util/locale/BaseLocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/locale/BaseLocale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2313
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 2314
    .local v7, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v10

    .line 2315
    .local v10, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v9

    .line 2316
    .local v9, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v12

    .line 2319
    .local v12, "variant":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2320
    .local v3, "isNorwegianBokmal":Z
    const/4 v4, 0x0

    .line 2321
    .local v4, "isNorwegianNynorsk":Z
    const-string/jumbo v13, "no"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2322
    const-string/jumbo v13, "NO"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "NY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2323
    const-string/jumbo v12, ""

    .line 2324
    const/4 v4, 0x1

    .line 2329
    :cond_0
    :goto_0
    const-string/jumbo v13, "nb"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    if-eqz v3, :cond_5

    .line 2330
    :cond_1
    const-string/jumbo v13, "nb"

    invoke-static {v13, v10, v9, v12}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 2332
    .local v11, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2333
    .local v0, "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 2334
    .local v5, "l":Ljava/util/Locale;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2335
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 2341
    .end local v5    # "l":Ljava/util/Locale;
    :cond_2
    return-object v0

    .line 2326
    .end local v0    # "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "l$iterator":Ljava/util/Iterator;
    .end local v11    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 2338
    .restart local v0    # "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v5    # "l":Ljava/util/Locale;
    .restart local v6    # "l$iterator":Ljava/util/Iterator;
    .restart local v11    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_4
    const-string/jumbo v13, "no"

    invoke-virtual {v5}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    .line 2339
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 2338
    invoke-static/range {v13 .. v17}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2342
    .end local v0    # "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "l$iterator":Ljava/util/Iterator;
    .end local v11    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_5
    const-string/jumbo v13, "nn"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    if-eqz v4, :cond_7

    .line 2344
    :cond_6
    const-string/jumbo v13, "nn"

    invoke-static {v13, v10, v9, v12}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 2345
    .local v8, "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v1, v13, -0x1

    .line 2346
    .local v1, "idx":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    const-string/jumbo v13, "no"

    const-string/jumbo v14, "NO"

    const-string/jumbo v15, "NY"

    invoke-static {v13, v14, v15}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    invoke-interface {v8, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2347
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    const-string/jumbo v13, "no"

    const-string/jumbo v14, "NO"

    const-string/jumbo v15, ""

    invoke-static {v13, v14, v15}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    invoke-interface {v8, v2, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2348
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    const-string/jumbo v13, "no"

    const-string/jumbo v14, ""

    const-string/jumbo v15, ""

    invoke-static {v13, v14, v15}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    invoke-interface {v8, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2349
    return-object v8

    .line 2352
    .end local v2    # "idx":I
    .end local v8    # "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_7
    const-string/jumbo v13, "zh"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2353
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 2356
    const-string/jumbo v13, "TW"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string/jumbo v13, "HK"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string/jumbo v13, "MO"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2357
    :cond_8
    const-string/jumbo v10, "Hant"

    .line 2372
    :cond_9
    :goto_2
    invoke-static {v7, v10, v9, v12}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    return-object v13

    .line 2358
    :cond_a
    const-string/jumbo v13, "CN"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string/jumbo v13, "SG"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2359
    :cond_b
    const-string/jumbo v10, "Hans"

    goto :goto_2

    .line 2361
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_9

    .line 2364
    const-string/jumbo v13, "Hans"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2365
    const-string/jumbo v9, "CN"

    goto :goto_2

    .line 2366
    :cond_d
    const-string/jumbo v13, "Hant"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2367
    const-string/jumbo v9, "TW"

    goto :goto_2
.end method
