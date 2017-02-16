.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final LANGUAGE_XML:Ljava/lang/String; = "/system/csc/language.xml"

.field private static final TAG:Ljava/lang/String; = "LocaleStore"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "LanguageSet"

.field private static final TAG_NOT_DISPLAY:Ljava/lang/String; = "NonDisplay"

.field private static sCountryMode:Z

.field private static sFullyInitialized:Z

.field private static final sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sPrevDefaultLocaleString:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    sput-boolean v1, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleString:Ljava/lang/String;

    .line 56
    sput-boolean v1, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    return-void

    .line 295
    :cond_1
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 296
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    .line 286
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    return-void
.end method

.method public static fillCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    .line 308
    return-void
.end method

.method public static fillCacheManaged(Landroid/content/Context;Z)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInternalCalled"    # Z

    .prologue
    .line 316
    sget-object v19, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleString:Ljava/lang/String;

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleString:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 317
    return-void

    .line 320
    :cond_0
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v11, v0, [Ljava/lang/String;

    .line 321
    .local v11, "localelists":[Ljava/lang/String;
    const-string/jumbo v7, "/system/csc/language.xml"

    .line 322
    .local v7, "languageXmlPath":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/app/LocaleStore;->getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 323
    const/16 v17, 0x0

    .line 324
    .local v17, "supportedLocales":Ljava/lang/String;
    const/16 v18, 0x0

    .line 326
    .local v18, "unsupportedLocales":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 327
    const/16 v19, 0x0

    aget-object v17, v11, v19

    .line 328
    .local v17, "supportedLocales":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v18, v11, v19

    .line 329
    .local v18, "unsupportedLocales":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 331
    const-string/jumbo v19, "\\s"

    const-string/jumbo v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 332
    const-string/jumbo v19, "_"

    const-string/jumbo v20, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 335
    :cond_1
    if-eqz v18, :cond_2

    .line 336
    const-string/jumbo v19, "\\s"

    const-string/jumbo v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 337
    const-string/jumbo v19, "_"

    const-string/jumbo v20, "-"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 341
    .end local v17    # "supportedLocales":Ljava/lang/String;
    .end local v18    # "unsupportedLocales":Ljava/lang/String;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v16

    .line 343
    .local v16, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v10, v20, v19

    .line 344
    .local v10, "localeId":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 345
    new-instance v19, Ljava/util/IllformedLocaleException;

    const-string/jumbo v20, "Bad locale entry in locale_config.xml"

    invoke-direct/range {v19 .. v20}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 347
    :cond_3
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-direct {v8, v10, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 356
    .local v8, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v18, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 343
    :cond_4
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 358
    :cond_5
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 359
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v22

    or-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-static {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 362
    :cond_6
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "id":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 364
    sget-object v22, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :goto_2
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v14

    .line 370
    .local v14, "parent":Ljava/util/Locale;
    if-eqz v14, :cond_4

    .line 371
    invoke-virtual {v14}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, "parentId":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 373
    sget-object v22, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 374
    sget-object v22, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v23, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 366
    .end local v14    # "parent":Ljava/util/Locale;
    .end local v15    # "parentId":Ljava/lang/String;
    :cond_7
    const-string/jumbo v22, "LocaleStore"

    const-string/jumbo v23, "put null key to sLocaleCache #1"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 377
    .restart local v14    # "parent":Ljava/util/Locale;
    .restart local v15    # "parentId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v22, "LocaleStore"

    const-string/jumbo v23, "put null key to sLocaleCache #2"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 383
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v10    # "localeId":Ljava/lang/String;
    .end local v14    # "parent":Ljava/util/Locale;
    .end local v15    # "parentId":Ljava/lang/String;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSpecificCustomerSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    aget-object v10, v20, v19

    .line 384
    .restart local v10    # "localeId":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 385
    new-instance v19, Ljava/util/IllformedLocaleException;

    const-string/jumbo v20, "Bad locale entry in locale_config.xml"

    invoke-direct/range {v19 .. v20}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 387
    :cond_a
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-direct {v8, v10, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 389
    .restart local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v17, :cond_d

    .line 390
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 392
    :cond_b
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 393
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v22

    or-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-static {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 396
    :cond_c
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 397
    .restart local v5    # "id":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 398
    sget-object v22, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :goto_4
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v14

    .line 404
    .restart local v14    # "parent":Ljava/util/Locale;
    if-eqz v14, :cond_d

    .line 405
    invoke-virtual {v14}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    .line 406
    .restart local v15    # "parentId":Ljava/lang/String;
    if-eqz v15, :cond_f

    .line 407
    sget-object v22, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 408
    sget-object v22, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v23, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v5    # "id":Ljava/lang/String;
    .end local v14    # "parent":Ljava/util/Locale;
    .end local v15    # "parentId":Ljava/lang/String;
    :cond_d
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 400
    .restart local v5    # "id":Ljava/lang/String;
    :cond_e
    const-string/jumbo v22, "LocaleStore"

    const-string/jumbo v23, "put null key to sLocaleCache #4"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 411
    .restart local v14    # "parent":Ljava/util/Locale;
    .restart local v15    # "parentId":Ljava/lang/String;
    :cond_f
    const-string/jumbo v22, "LocaleStore"

    const-string/jumbo v23, "put null key to sLocaleCache #5"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 432
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v10    # "localeId":Ljava/lang/String;
    .end local v14    # "parent":Ljava/util/Locale;
    .end local v15    # "parentId":Ljava/lang/String;
    :cond_10
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 433
    .local v13, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v12

    .line 434
    .local v12, "locales":[Ljava/lang/String;
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    aget-object v10, v12, v19

    .line 435
    .restart local v10    # "localeId":Ljava/lang/String;
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v8, v10, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 436
    .restart local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "country":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_12

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v21, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 441
    sget-object v21, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 448
    :cond_11
    :goto_7
    if-eqz v3, :cond_12

    .line 449
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v21

    or-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 451
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v21

    or-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 454
    :cond_12
    if-eqz p1, :cond_13

    .line 455
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_13
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 443
    .restart local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_14
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "langScriptCtry":Ljava/lang/String;
    sget-object v21, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 445
    sget-object v21, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .local v3, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_7

    .line 458
    .end local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v4    # "country":Ljava/lang/String;
    .end local v6    # "langScriptCtry":Ljava/lang/String;
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v10    # "localeId":Ljava/lang/String;
    :cond_15
    if-eqz p1, :cond_18

    .line 459
    sget-object v19, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "li$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 460
    .restart local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 469
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v19

    if-eqz v19, :cond_16

    .line 470
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setParentSecSuggested(Z)V

    goto :goto_8

    .line 475
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    .line 476
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleString:Ljava/lang/String;

    .line 313
    .end local v9    # "li$iterator":Ljava/util/Iterator;
    :cond_18
    return-void
.end method

.method public static getAllLocaleInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "cnt":I
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    .line 549
    sget-object v5, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 550
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v7, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .local v4, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    sget-object v5, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 556
    .restart local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v7, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 557
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 558
    .local v1, "l":Ljava/util/Locale;
    new-instance v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    .end local v1    # "l":Ljava/util/Locale;
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 562
    return-object v4
.end method

.method private static getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .locals 3
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 482
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 483
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 484
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_4

    return v2

    .line 484
    :cond_3
    return v1

    .line 486
    :cond_4
    return v1
.end method

.method public static getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 498
    if-eqz p2, :cond_1

    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    .line 499
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 500
    if-nez p2, :cond_2

    const/4 v3, 0x0

    .line 502
    :goto_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 503
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 504
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {p1, v1, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v0

    .line 505
    .local v0, "level":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 506
    if-eqz p2, :cond_3

    .line 507
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 508
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 498
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v2    # "li$iterator":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .local v3, "parentId":Ljava/lang/String;
    goto :goto_1

    .line 511
    .end local v3    # "parentId":Ljava/lang/String;
    .restart local v0    # "level":I
    .restart local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v2    # "li$iterator":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_3
    invoke-static {v1, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 512
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 514
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    .line 515
    .local v5, "tempLI":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 516
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParentSecSuggested()Z

    move-result v6

    if-nez v6, :cond_5

    .line 517
    invoke-virtual {v5, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setParentSecSuggested(Z)V

    .line 520
    :cond_5
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 525
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v5    # "tempLI":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_6
    return-object v4
.end method

.method public static getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x0

    .line 529
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .line 531
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v0, :cond_1

    .line 532
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    new-instance v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 534
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_0
    return-object v1

    .line 536
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0

    .line 539
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    const-string/jumbo v2, "LocaleStore"

    const-string/jumbo v3, "put null key to sLocaleCache #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;
    .locals 24
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 574
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 576
    .local v16, "result":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 578
    .local v17, "rootNode":Lorg/w3c/dom/Node;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 579
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 580
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 581
    .local v5, "doc":Lorg/w3c/dom/Document;
    if-eqz v5, :cond_0

    .line 582
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 591
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "rootNode":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    if-nez v17, :cond_1

    .line 592
    const/16 v21, 0x0

    return-object v21

    .line 588
    .restart local v17    # "rootNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v6

    .line 589
    .local v6, "ex":Ljava/io/IOException;
    const-string/jumbo v21, "LocaleStore"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 587
    .local v8, "ex":Lorg/xml/sax/SAXException;
    const-string/jumbo v21, "LocaleStore"

    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    .end local v8    # "ex":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v7

    .line 585
    .local v7, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    const-string/jumbo v21, "LocaleStore"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v7    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v17    # "rootNode":Lorg/w3c/dom/Node;
    :cond_1
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v21, "LanguageSet"

    const/16 v22, 0x0

    aput-object v21, v18, v22

    const-string/jumbo v21, "Display"

    const/16 v22, 0x1

    aput-object v21, v18, v22

    .line 597
    .local v18, "tagList":[Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v21, "LanguageSet"

    const/16 v22, 0x0

    aput-object v21, v19, v22

    const-string/jumbo v21, "NonDisplay"

    const/16 v22, 0x1

    aput-object v21, v19, v22

    .line 598
    .local v19, "tagList_1":[Ljava/lang/String;
    move-object/from16 v14, v17

    .line 599
    .local v14, "node":Lorg/w3c/dom/Node;
    move-object/from16 v15, v17

    .line 602
    .local v15, "node_1":Lorg/w3c/dom/Node;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    aget-object v20, v18, v21

    .line 603
    .local v20, "tagName":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 604
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 605
    .local v4, "children":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_3

    .line 606
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 607
    .local v13, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v13, :cond_3

    .line 608
    invoke-interface {v4, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 609
    .local v3, "child":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 610
    move-object v14, v3

    .line 607
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 602
    .end local v3    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v12    # "i":I
    .end local v13    # "n":I
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 618
    .end local v20    # "tagName":Ljava/lang/String;
    :cond_4
    if-eqz v14, :cond_6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v18, v21

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 623
    :goto_3
    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v20, v19, v21

    .line 624
    .restart local v20    # "tagName":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 625
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 626
    .restart local v4    # "children":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_7

    .line 627
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 628
    .restart local v13    # "n":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v13, :cond_7

    .line 629
    invoke-interface {v4, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 630
    .restart local v3    # "child":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 631
    move-object v15, v3

    .line 628
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 619
    .end local v3    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v12    # "i":I
    .end local v13    # "n":I
    .end local v20    # "tagName":Ljava/lang/String;
    :cond_6
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput-object v21, v16, v22

    goto :goto_3

    .line 623
    .restart local v20    # "tagName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 639
    .end local v20    # "tagName":Ljava/lang/String;
    :cond_8
    if-eqz v15, :cond_c

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v18, v21

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 644
    :goto_6
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    .line 645
    .local v10, "firstChild":Lorg/w3c/dom/Node;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 647
    .local v11, "firstChild_1":Lorg/w3c/dom/Node;
    if-nez v10, :cond_9

    if-eqz v11, :cond_d

    .line 648
    :cond_9
    if-eqz v10, :cond_a

    .line 649
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v16, v22

    .line 652
    :cond_a
    if-eqz v11, :cond_b

    .line 653
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v16, v22

    .line 655
    :cond_b
    return-object v16

    .line 640
    .end local v10    # "firstChild":Lorg/w3c/dom/Node;
    .end local v11    # "firstChild_1":Lorg/w3c/dom/Node;
    :cond_c
    const/16 v21, 0x0

    const/16 v22, 0x1

    aput-object v21, v16, v22

    goto :goto_6

    .line 658
    .restart local v10    # "firstChild":Lorg/w3c/dom/Node;
    .restart local v11    # "firstChild_1":Lorg/w3c/dom/Node;
    :cond_d
    const/16 v21, 0x0

    return-object v21
.end method

.method private static getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 237
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 239
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "iso":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0    # "iso":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    return-object p0

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateSimCountries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 271
    .local v2, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 276
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    .line 268
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return-void
.end method
