.class public final Lsun/util/LocaleServiceProviderPool;
.super Ljava/lang/Object;
.source "LocaleServiceProviderPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;,
        Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;,
        Lsun/util/LocaleServiceProviderPool$NullProvider;
    }
.end annotation


# static fields
.field private static volatile availableJRELocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static locale_ja_JP_JP:Ljava/util/Locale;

.field private static locale_th_TH_TH:Ljava/util/Locale;

.field private static poolOfPools:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;",
            "Lsun/util/LocaleServiceProviderPool;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private availableLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private providerLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providersCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    invoke-static {p0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 62
    sput-object v0, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "ja"

    const-string/jumbo v2, "JP"

    const-string/jumbo v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/LocaleServiceProviderPool;->locale_ja_JP_JP:Ljava/util/Locale;

    .line 104
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "th"

    const-string/jumbo v2, "TH"

    const-string/jumbo v3, "TH"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/LocaleServiceProviderPool;->locale_th_TH_TH:Ljava/util/Locale;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/spi/LocaleServiceProvider;>;"
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 75
    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    .line 82
    iput-object v2, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    .line 94
    iput-object v2, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    .line 130
    :try_start_0
    new-instance v1, Lsun/util/LocaleServiceProviderPool$1;

    invoke-direct {v1, p0, p1}, Lsun/util/LocaleServiceProviderPool$1;-><init>(Lsun/util/LocaleServiceProviderPool;Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static config(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string/jumbo v1, "sun.util.LocaleServiceProviderPool"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    .line 145
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    invoke-virtual {v0, p0}, Lsun/util/logging/PlatformLogger;->config(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;
    .locals 10
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v9, 0x0

    .line 438
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v6

    if-nez v6, :cond_0

    .line 439
    return-object v9

    .line 442
    :cond_0
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 443
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/spi/LocaleServiceProvider;

    .line 444
    .local v4, "provider":Ljava/util/spi/LocaleServiceProvider;
    invoke-static {}, Lsun/util/LocaleServiceProviderPool$NullProvider;->-get0()Lsun/util/LocaleServiceProviderPool$NullProvider;

    move-result-object v6

    if-eq v4, v6, :cond_6

    .line 445
    return-object v4

    .line 448
    .end local v4    # "provider":Ljava/util/spi/LocaleServiceProvider;
    :cond_1
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "lsp$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/spi/LocaleServiceProvider;

    .line 449
    .local v2, "lsp":Ljava/util/spi/LocaleServiceProvider;
    invoke-virtual {v2}, Ljava/util/spi/LocaleServiceProvider;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 450
    .local v1, "locales":[Ljava/util/Locale;
    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    .line 452
    .local v0, "available":Ljava/util/Locale;
    invoke-static {v0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 453
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 455
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/spi/LocaleServiceProvider;

    .line 456
    .local v5, "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    if-eqz v5, :cond_3

    .end local v5    # "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    :goto_1
    return-object v5

    .restart local v5    # "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    :cond_3
    move-object v5, v2

    .line 458
    goto :goto_1

    .line 450
    .end local v5    # "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "available":Ljava/util/Locale;
    .end local v1    # "locales":[Ljava/util/Locale;
    .end local v2    # "lsp":Ljava/util/spi/LocaleServiceProvider;
    :cond_5
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-static {}, Lsun/util/LocaleServiceProviderPool$NullProvider;->-get0()Lsun/util/LocaleServiceProviderPool$NullProvider;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v3    # "lsp$iterator":Ljava/util/Iterator;
    :cond_6
    return-object v9
.end method

.method public static getAllAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;->allAvailableLocales:[Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method private getJRELocales()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    if-nez v3, :cond_2

    .line 266
    const-class v4, Lsun/util/LocaleServiceProviderPool;

    monitor-enter v4

    .line 267
    :try_start_0
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    if-nez v3, :cond_1

    .line 268
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 269
    .local v0, "allLocales":[Ljava/util/Locale;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v3, 0x0

    array-length v5, v0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 271
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    sput-object v2, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "allLocales":[Ljava/util/Locale;
    .end local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_1
    monitor-exit v4

    .line 277
    :cond_2
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    return-object v3

    .line 266
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private varargs getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "isObjectProvider"    # Z
    .param p4, "bundleKey"    # Ljava/lang/String;
    .param p5, "bundle"    # Lsun/util/resources/OpenListResourceBundle;
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/String;",
            "Lsun/util/resources/OpenListResourceBundle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 361
    if-nez p4, :cond_0

    .line 362
    move-object/from16 p4, p6

    .line 364
    :cond_0
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 365
    :goto_0
    invoke-static {p2}, Lsun/util/LocaleServiceProviderPool;->getLookupLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v5

    .line 366
    .local v5, "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v8, 0x0

    .line 372
    .local v8, "providersObj":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    move-result-object v7

    .line 373
    .local v7, "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    const/4 v4, 0x0

    .end local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    .local v4, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 374
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 375
    .local v3, "current":Ljava/util/Locale;
    if-eqz v2, :cond_3

    .line 376
    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 402
    .end local v3    # "current":Ljava/util/Locale;
    :cond_1
    :goto_2
    if-eqz p5, :cond_9

    .line 403
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 405
    .local v2, "bundleLocale":Ljava/util/Locale;
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->handleGetKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 407
    const/4 v9, 0x0

    return-object v9

    .line 364
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .end local v4    # "i":I
    .end local v5    # "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v7    # "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_2
    const/4 v2, 0x0

    .local v2, "bundleLocale":Ljava/util/Locale;
    goto :goto_0

    .line 380
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .restart local v3    # "current":Ljava/util/Locale;
    .restart local v4    # "i":I
    .restart local v5    # "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v7    # "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_3
    invoke-direct {p0, v3}, Lsun/util/LocaleServiceProviderPool;->isJRESupported(Ljava/util/Locale;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 384
    :cond_4
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 387
    invoke-direct {p0, v3}, Lsun/util/LocaleServiceProviderPool;->findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;

    move-result-object v6

    .line 388
    .local v6, "lsp":Ljava/lang/Object;, "TP;"
    if-eqz v6, :cond_6

    .line 389
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-interface {p1, v6, p2, v0, v1}, Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;->getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 390
    .restart local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    if-eqz v8, :cond_5

    .line 391
    return-object v8

    .line 392
    :cond_5
    if-eqz p3, :cond_6

    .line 394
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "A locale sensitive service provider returned null for a localized objects,  which should not happen.  provider: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " locale: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 393
    invoke-static {v9}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    .line 373
    .end local v6    # "lsp":Ljava/lang/Object;, "TP;"
    .end local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 411
    .end local v3    # "current":Ljava/util/Locale;
    .local v2, "bundleLocale":Ljava/util/Locale;
    :cond_7
    invoke-direct {p0, v2}, Lsun/util/LocaleServiceProviderPool;->findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;

    move-result-object v6

    .line 412
    .restart local v6    # "lsp":Ljava/lang/Object;, "TP;"
    if-eqz v6, :cond_8

    .line 413
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-interface {p1, v6, p2, v0, v1}, Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;->getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 414
    .restart local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    if-eqz v8, :cond_8

    .line 415
    return-object v8

    .line 421
    .end local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getParent()Lsun/util/resources/OpenListResourceBundle;

    move-result-object p5

    goto :goto_2

    .line 426
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .end local v4    # "i":I
    .end local v5    # "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "lsp":Ljava/lang/Object;, "TP;"
    .end local v7    # "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_9
    const/4 v9, 0x0

    return-object v9
.end method

.method private static getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 490
    move-object v3, p0

    .line 491
    .local v3, "lookupLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Ljava/util/Locale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v1

    .line 492
    .local v1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 493
    sget-object v4, Lsun/util/LocaleServiceProviderPool;->locale_ja_JP_JP:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-object v3

    .line 494
    :cond_1
    sget-object v4, Lsun/util/LocaleServiceProviderPool;->locale_th_TH_TH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 496
    new-instance v2, Ljava/util/Locale$Builder;

    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    .line 498
    .local v2, "locbld":Ljava/util/Locale$Builder;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    .line 499
    invoke-virtual {v2}, Ljava/util/Locale$Builder;->clearExtensions()Ljava/util/Locale$Builder;

    .line 500
    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/util/IllformedLocaleException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "A locale("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") has non-empty extensions, but has illformed fields."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    .line 509
    new-instance v3, Ljava/util/Locale;

    .end local v3    # "lookupLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "lookupLocale":Ljava/util/Locale;
    goto :goto_0
.end method

.method private static getLookupLocales(Ljava/util/Locale;)Ljava/util/List;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v1, Lsun/util/LocaleServiceProviderPool$2;

    invoke-direct {v1}, Lsun/util/LocaleServiceProviderPool$2;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p0}, Lsun/util/LocaleServiceProviderPool$2;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

    .line 478
    .local v0, "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    return-object v0
.end method

.method public static getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;)",
            "Lsun/util/LocaleServiceProviderPool;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/spi/LocaleServiceProvider;>;"
    sget-object v2, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/LocaleServiceProviderPool;

    .line 111
    .local v1, "pool":Lsun/util/LocaleServiceProviderPool;
    if-nez v1, :cond_0

    .line 113
    new-instance v0, Lsun/util/LocaleServiceProviderPool;

    invoke-direct {v0, p0}, Lsun/util/LocaleServiceProviderPool;-><init>(Ljava/lang/Class;)V

    .line 114
    .local v0, "newPool":Lsun/util/LocaleServiceProviderPool;
    sget-object v2, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pool":Lsun/util/LocaleServiceProviderPool;
    check-cast v1, Lsun/util/LocaleServiceProviderPool;

    .line 115
    .restart local v1    # "pool":Lsun/util/LocaleServiceProviderPool;
    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    .line 120
    .end local v0    # "newPool":Lsun/util/LocaleServiceProviderPool;
    :cond_0
    return-object v1
.end method

.method private declared-synchronized getProviderLocales()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    if-nez v4, :cond_1

    .line 234
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    .line 235
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "lsp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/spi/LocaleServiceProvider;

    .line 237
    .local v2, "lsp":Ljava/util/spi/LocaleServiceProvider;
    invoke-virtual {v2}, Ljava/util/spi/LocaleServiceProvider;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 238
    .local v1, "locales":[Ljava/util/Locale;
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 239
    .local v0, "locale":Ljava/util/Locale;
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    invoke-static {v0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "locales":[Ljava/util/Locale;
    .end local v2    # "lsp":Ljava/util/spi/LocaleServiceProvider;
    .end local v3    # "lsp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private isJRESupported(Ljava/util/Locale;)Z
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 288
    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getJRELocales()Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-static {p1}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 3

    .prologue
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getJRELocales()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    .line 216
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_0
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/util/Locale;

    .line 221
    .local v0, "tmp":[Ljava/util/Locale;
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 222
    return-object v0

    .end local v0    # "tmp":[Ljava/util/Locale;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;Ljava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "bundleKey"    # Ljava/lang/String;
    .param p4, "bundle"    # Lsun/util/resources/OpenListResourceBundle;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Lsun/util/resources/OpenListResourceBundle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "bundle"    # Lsun/util/resources/OpenListResourceBundle;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "Lsun/util/resources/OpenListResourceBundle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    .prologue
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    const/4 v4, 0x0

    .line 305
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasProviders()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
