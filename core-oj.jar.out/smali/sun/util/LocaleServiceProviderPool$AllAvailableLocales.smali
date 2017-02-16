.class Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;
.super Ljava/lang/Object;
.source "LocaleServiceProviderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/LocaleServiceProviderPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllAvailableLocales"
.end annotation


# static fields
.field static final allAvailableLocales:[Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 166
    const/16 v6, 0x9

    new-array v5, v6, [Ljava/lang/Class;

    .line 167
    const-class v6, Ljava/text/spi/BreakIteratorProvider;

    aput-object v6, v5, v7

    .line 168
    const-class v6, Ljava/text/spi/CollatorProvider;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 169
    const-class v6, Ljava/text/spi/DateFormatProvider;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 170
    const-class v6, Ljava/text/spi/DateFormatSymbolsProvider;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    .line 171
    const-class v6, Ljava/text/spi/DecimalFormatSymbolsProvider;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    .line 172
    const-class v6, Ljava/text/spi/NumberFormatProvider;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    .line 173
    const-class v6, Ljava/util/spi/CurrencyNameProvider;

    const/4 v8, 0x6

    aput-object v6, v5, v8

    .line 174
    const-class v6, Ljava/util/spi/LocaleNameProvider;

    const/4 v8, 0x7

    aput-object v6, v5, v8

    .line 175
    const-class v6, Ljava/util/spi/TimeZoneNameProvider;

    const/16 v8, 0x8

    aput-object v6, v5, v8

    .line 179
    .local v5, "providerClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<Ljava/util/spi/LocaleServiceProvider;>;"
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 180
    .local v1, "allLocales":[Ljava/util/Locale;
    new-instance v0, Ljava/util/HashSet;

    array-length v6, v1

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 181
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    array-length v8, v1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v1, v6

    .line 182
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->-wrap0(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    array-length v8, v5

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v4, v5, v6

    .line 187
    .local v4, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/spi/LocaleServiceProvider;>;"
    invoke-static {v4}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v3

    .line 188
    .local v3, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-static {v3}, Lsun/util/LocaleServiceProviderPool;->-wrap1(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 185
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 191
    .end local v3    # "pool":Lsun/util/LocaleServiceProviderPool;
    .end local v4    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/spi/LocaleServiceProvider;>;"
    :cond_1
    new-array v6, v7, [Ljava/util/Locale;

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    sput-object v6, Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;->allAvailableLocales:[Ljava/util/Locale;

    .line 156
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
