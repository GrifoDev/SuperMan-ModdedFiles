.class public Ljava/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;
    }
.end annotation


# static fields
.field static final PATTERN_AM_PM:I = 0xe

.field static final PATTERN_DAY_OF_MONTH:I = 0x3

.field static final PATTERN_DAY_OF_WEEK:I = 0x9

.field static final PATTERN_DAY_OF_WEEK_IN_MONTH:I = 0xb

.field static final PATTERN_DAY_OF_YEAR:I = 0xa

.field static final PATTERN_ERA:I = 0x0

.field static final PATTERN_HOUR0:I = 0x10

.field static final PATTERN_HOUR1:I = 0xf

.field static final PATTERN_HOUR_OF_DAY0:I = 0x5

.field static final PATTERN_HOUR_OF_DAY1:I = 0x4

.field static final PATTERN_ISO_DAY_OF_WEEK:I = 0x14

.field static final PATTERN_ISO_ZONE:I = 0x15

.field static final PATTERN_MILLISECOND:I = 0x8

.field static final PATTERN_MINUTE:I = 0x6

.field static final PATTERN_MONTH:I = 0x2

.field static final PATTERN_SECOND:I = 0x7

.field static final PATTERN_STANDALONE_DAY_OF_WEEK:I = 0x17

.field static final PATTERN_STANDALONE_MONTH:I = 0x16

.field static final PATTERN_WEEK_OF_MONTH:I = 0xd

.field static final PATTERN_WEEK_OF_YEAR:I = 0xc

.field static final PATTERN_WEEK_YEAR:I = 0x13

.field static final PATTERN_YEAR:I = 0x1

.field static final PATTERN_ZONE_NAME:I = 0x11

.field static final PATTERN_ZONE_VALUE:I = 0x12

.field private static final cachedInstances:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/text/DateFormatSymbols;",
            ">;>;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZYuXLc"

.field static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field transient isZoneStringsSet:Z

.field private transient lastZoneIndex:I

.field localPatternChars:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field months:[Ljava/lang/String;

.field private serialVersionOnStream:I

.field shortMonths:[Ljava/lang/String;

.field private shortStandAloneMonths:[Ljava/lang/String;

.field private shortStandAloneWeekdays:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field private standAloneMonths:[Ljava/lang/String;

.field private standAloneWeekdays:[Ljava/lang/String;

.field private tinyMonths:[Ljava/lang/String;

.field private tinyStandAloneMonths:[Ljava/lang/String;

.field private tinyStandAloneWeekdays:[Ljava/lang/String;

.field private tinyWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 767
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 766
    sput-object v0, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 156
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 165
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 174
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 183
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 191
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 218
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 223
    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 269
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 299
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 769
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 121
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 156
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 165
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 174
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 183
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 191
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 218
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 223
    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 269
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 299
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 769
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 140
    invoke-direct {p0, p1}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    .line 138
    return-void
.end method

.method private final copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    .locals 3
    .param p1, "src"    # Ljava/text/DateFormatSymbols;
    .param p2, "dst"    # Ljava/text/DateFormatSymbols;

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 917
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 918
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 919
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 920
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 921
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 922
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 923
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 927
    :goto_0
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 929
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    .line 930
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    .line 932
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    .line 933
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 934
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    .line 936
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    .line 937
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 938
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    .line 914
    return-void

    .line 925
    :cond_0
    iput-object v2, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 373
    const-class v1, Ljava/text/spi/DateFormatSymbolsProvider;

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    .line 374
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 445
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 446
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    const/4 v0, 0x0

    .line 447
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    check-cast v0, Ljava/text/DateFormatSymbols;

    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-nez v0, :cond_1

    .line 448
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_0
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 449
    .restart local v0    # "dfs":Ljava/text/DateFormatSymbols;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 450
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 451
    .local v2, "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    .line 453
    .local v3, "y":Ljava/text/DateFormatSymbols;
    if-eqz v3, :cond_2

    .line 454
    move-object v0, v3

    .line 461
    .end local v2    # "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    .end local v3    # "y":Ljava/text/DateFormatSymbols;
    :cond_1
    :goto_0
    return-object v0

    .line 457
    .restart local v2    # "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    .restart local v3    # "y":Ljava/text/DateFormatSymbols;
    :cond_2
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final getInstance()Ljava/text/DateFormatSymbols;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 404
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getProviderInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 405
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v0, :cond_0

    .line 406
    return-object v0

    .line 408
    :cond_0
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    return-object v1
.end method

.method static final getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 418
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getProviderInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 419
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v0, :cond_0

    .line 420
    return-object v0

    .line 422
    :cond_0
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    return-object v1
.end method

.method private static getProviderInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 431
    .local v1, "providersInstance":Ljava/text/DateFormatSymbols;
    const-class v2, Ljava/text/spi/DateFormatSymbolsProvider;

    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    .line 432
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-static {}, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;->-get0()Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;

    move-result-object v2

    .line 433
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p0, v3}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "providersInstance":Ljava/text/DateFormatSymbols;
    check-cast v1, Ljava/text/DateFormatSymbols;

    .line 436
    :cond_0
    return-object v1
.end method

.method private final getZoneStringsImpl(Z)[[Ljava/lang/String;
    .locals 6
    .param p1, "needsCopy"    # Z

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, "zoneStrings":[[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 893
    return-object v3

    .line 896
    :cond_0
    array-length v2, v3

    .line 897
    .local v2, "len":I
    new-array v0, v2, [[Ljava/lang/String;

    .line 898
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 899
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aput-object v4, v0, v1

    .line 898
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    :cond_1
    return-object v0
.end method

.method private initializeData(Ljava/util/Locale;)V
    .locals 5
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .prologue
    .line 772
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 775
    sget-object v3, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 777
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v0, :cond_0

    .line 778
    invoke-direct {p0, v0, p0}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V

    .line 779
    return-void

    .line 781
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_0
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 782
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 784
    .local v1, "localeData":Llibcore/icu/LocaleData;
    iget-object v3, v1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 787
    iget-object v3, v1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 788
    iget-object v3, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 790
    iget-object v3, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 791
    const-string/jumbo v3, "GyMdkHmsSEDFwWahKzZYuXLc"

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 794
    iget-object v3, v1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 795
    iget-object v3, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 797
    invoke-direct {p0, v1}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    .line 771
    return-void
.end method

.method private initializeSupplementaryData(Llibcore/icu/LocaleData;)V
    .locals 1
    .param p1, "localeData"    # Llibcore/icu/LocaleData;

    .prologue
    .line 802
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    .line 803
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    .line 806
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    .line 807
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 808
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    .line 811
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    .line 812
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 813
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    .line 800
    return-void
.end method

.method private final declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 863
    :try_start_0
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v3, :cond_4

    .line 864
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 867
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    .line 868
    .local v1, "zone":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v0, v1, v5

    .line 869
    .local v0, "id":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v1, v5

    if-nez v5, :cond_0

    .line 871
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 870
    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 873
    :cond_0
    const/4 v5, 0x2

    aget-object v5, v1, v5

    if-nez v5, :cond_1

    .line 875
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 874
    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 877
    :cond_1
    const/4 v5, 0x3

    aget-object v5, v1, v5

    if-nez v5, :cond_2

    .line 878
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    .line 880
    :cond_2
    const/4 v5, 0x4

    aget-object v5, v1, v5

    if-nez v5, :cond_3

    .line 882
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 881
    const/4 v6, 0x4

    aput-object v5, v1, v6

    .line 867
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "zone":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final isSubclassObject()Z
    .locals 2

    .prologue
    .line 905
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "java.text.DateFormatSymbols"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 942
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 944
    iget v1, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    if-ge v1, v2, :cond_0

    .line 945
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 946
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    .line 949
    .end local v0    # "localeData":Llibcore/icu/LocaleData;
    :cond_0
    iput v2, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 941
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    .line 961
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 959
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 707
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    .line 708
    .local v1, "other":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p0, v1}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    return-object v1

    .line 710
    .end local v1    # "other":Ljava/text/DateFormatSymbols;
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 732
    if-ne p0, p1, :cond_0

    return v1

    .line 733
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 734
    check-cast v0, Ljava/text/DateFormatSymbols;

    .line 735
    .local v0, "that":Ljava/text/DateFormatSymbols;
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 736
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 737
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 738
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 739
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 740
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 741
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 742
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 743
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 744
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 745
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 746
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 747
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 748
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 749
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 735
    if-eqz v3, :cond_7

    .line 750
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 751
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 750
    if-nez v3, :cond_4

    .line 752
    :cond_3
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 753
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 735
    :cond_4
    :goto_0
    return v1

    :cond_5
    move v1, v2

    .line 753
    goto :goto_0

    :cond_6
    move v1, v2

    .line 752
    goto :goto_0

    :cond_7
    move v1, v2

    .line 735
    goto :goto_0
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getShortStandAloneMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getShortStandAloneWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getStandAloneMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getStandAloneWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyStandAloneMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyStandAloneWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method final getZoneIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 827
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "zoneStrings":[[Ljava/lang/String;
    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    aget-object v2, v1, v2

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    return v2

    .line 839
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 840
    aget-object v2, v1, v0

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    iput v0, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 842
    return v0

    .line 839
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getZoneStringsWrapper()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->isSubclassObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 858
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "hashcode":I
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v2

    .line 722
    .local v2, "zoneStrings":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    aget-object v3, v2, v4

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 723
    aget-object v3, v2, v4

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    :cond_0
    return v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1
    .param p1, "newAmpms"    # [Ljava/lang/String;

    .prologue
    .line 563
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1
    .param p1, "newEras"    # [Ljava/lang/String;

    .prologue
    .line 477
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLocalPatternChars"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "newMonths"    # [Ljava/lang/String;

    .prologue
    .line 493
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 492
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "newShortMonths"    # [Ljava/lang/String;

    .prologue
    .line 509
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "newShortWeekdays"    # [Ljava/lang/String;

    .prologue
    .line 547
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "newWeekdays"    # [Ljava/lang/String;

    .prologue
    .line 528
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 527
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 4
    .param p1, "newZoneStrings"    # [[Ljava/lang/String;

    .prologue
    .line 638
    array-length v3, p1

    new-array v0, v3, [[Ljava/lang/String;

    .line 639
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 640
    aget-object v3, p1, v1

    array-length v2, v3

    .line 641
    .local v2, "len":I
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 642
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 644
    :cond_0
    aget-object v3, p1, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v0, v1

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v2    # "len":I
    :cond_1
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 647
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 637
    return-void
.end method
