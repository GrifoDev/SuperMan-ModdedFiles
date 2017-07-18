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

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    sput-object v0, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "ja"

    const-string/jumbo v2, "JP"

    const-string/jumbo v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/LocaleServiceProviderPool;->locale_ja_JP_JP:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "th"

    const-string/jumbo v2, "TH"

    const-string/jumbo v3, "TH"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/LocaleServiceProviderPool;->locale_th_TH_TH:Ljava/util/Locale;

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

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    iput-object v2, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    iput-object v2, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    :try_start_0
    new-instance v1, Lsun/util/LocaleServiceProviderPool$1;

    invoke-direct {v1, p0, p1}, Lsun/util/LocaleServiceProviderPool$1;-><init>(Lsun/util/LocaleServiceProviderPool;Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static config(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "sun.util.LocaleServiceProviderPool"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/util/logging/PlatformLogger;->config(Ljava/lang/String;)V

    return-void
.end method

.method private findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v6

    if-nez v6, :cond_0

    return-object v9

    :cond_0
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/spi/LocaleServiceProvider;

    invoke-static {}, Lsun/util/LocaleServiceProviderPool$NullProvider;->-get0()Lsun/util/LocaleServiceProviderPool$NullProvider;

    move-result-object v6

    if-eq v4, v6, :cond_6

    return-object v4

    :cond_1
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/spi/LocaleServiceProvider;

    invoke-virtual {v2}, Ljava/util/spi/LocaleServiceProvider;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    invoke-static {v0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/spi/LocaleServiceProvider;

    if-eqz v5, :cond_3

    :goto_1
    return-object v5

    :cond_3
    move-object v5, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    invoke-static {}, Lsun/util/LocaleServiceProviderPool$NullProvider;->-get0()Lsun/util/LocaleServiceProviderPool$NullProvider;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v9
.end method

.method public static getAllAvailableLocales()[Ljava/util/Locale;
    .locals 1

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

    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    if-nez v3, :cond_2

    const-class v4, Lsun/util/LocaleServiceProviderPool;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    if-nez v3, :cond_1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    array-length v5, v0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v2, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    :cond_2
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private varargs getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez p4, :cond_0

    move-object/from16 p4, p6

    :cond_0
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    :goto_0
    invoke-static {p2}, Lsun/util/LocaleServiceProviderPool;->getLookupLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    move-result-object v7

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    :goto_2
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->handleGetKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    return-object v9

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lsun/util/LocaleServiceProviderPool;->isJRESupported(Ljava/util/Locale;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_4
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, v3}, Lsun/util/LocaleServiceProviderPool;->findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;

    move-result-object v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-interface {p1, v6, p2, v0, v1}, Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;->getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    return-object v8

    :cond_5
    if-eqz p3, :cond_6

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

    invoke-static {v9}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lsun/util/LocaleServiceProviderPool;->findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;

    move-result-object v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-interface {p1, v6, p2, v0, v1}, Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;->getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    return-object v8

    :cond_8
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getParent()Lsun/util/resources/OpenListResourceBundle;

    move-result-object p5

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    return-object v9
.end method

.method private static getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 7

    move-object v3, p0

    invoke-virtual {p0}, Ljava/util/Locale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lsun/util/LocaleServiceProviderPool;->locale_ja_JP_JP:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lsun/util/LocaleServiceProviderPool;->locale_th_TH_TH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Ljava/util/Locale$Builder;

    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    invoke-virtual {v2}, Ljava/util/Locale$Builder;->clearExtensions()Ljava/util/Locale$Builder;

    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

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

    new-instance v3, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLookupLocales(Ljava/util/Locale;)Ljava/util/List;
    .locals 3
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

    new-instance v1, Lsun/util/LocaleServiceProviderPool$2;

    invoke-direct {v1}, Lsun/util/LocaleServiceProviderPool$2;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p0}, Lsun/util/LocaleServiceProviderPool$2;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

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

    sget-object v2, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/LocaleServiceProviderPool;

    if-nez v1, :cond_0

    new-instance v0, Lsun/util/LocaleServiceProviderPool;

    invoke-direct {v0, p0}, Lsun/util/LocaleServiceProviderPool;-><init>(Ljava/lang/Class;)V

    sget-object v2, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/LocaleServiceProviderPool;

    if-nez v1, :cond_0

    move-object v1, v0

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

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/spi/LocaleServiceProvider;

    invoke-virtual {v2}, Ljava/util/spi/LocaleServiceProvider;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    invoke-static {v0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

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

    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getJRELocales()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getJRELocales()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/util/Locale;

    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;Ljava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    const/4 v4, 0x0

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
