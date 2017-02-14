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

    const/4 v7, 0x0

    const/16 v6, 0x9

    new-array v5, v6, [Ljava/lang/Class;

    const-class v6, Ljava/text/spi/BreakIteratorProvider;

    aput-object v6, v5, v7

    const-class v6, Ljava/text/spi/CollatorProvider;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Ljava/text/spi/DateFormatProvider;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/text/spi/DateFormatSymbolsProvider;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-class v6, Ljava/text/spi/DecimalFormatSymbolsProvider;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    const-class v6, Ljava/text/spi/NumberFormatProvider;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    const-class v6, Ljava/util/spi/CurrencyNameProvider;

    const/4 v8, 0x6

    aput-object v6, v5, v8

    const-class v6, Ljava/util/spi/LocaleNameProvider;

    const/4 v8, 0x7

    aput-object v6, v5, v8

    const-class v6, Ljava/util/spi/TimeZoneNameProvider;

    const/16 v8, 0x8

    aput-object v6, v5, v8

    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    array-length v6, v1

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    array-length v8, v1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v1, v6

    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->-wrap0(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    array-length v8, v5

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v4, v5, v6

    invoke-static {v4}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v3

    invoke-static {v3}, Lsun/util/LocaleServiceProviderPool;->-wrap1(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-array v6, v7, [Ljava/util/Locale;

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    sput-object v6, Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;->allAvailableLocales:[Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
