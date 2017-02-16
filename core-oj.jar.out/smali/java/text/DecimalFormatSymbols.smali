.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;
    }
.end annotation


# static fields
.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x3

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private transient cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

.field private transient currency:Ljava/util/Currency;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private exponential:C

.field private exponentialSeparator:Ljava/lang/String;

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private minusSign:C

.field private monetarySeparator:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private serialVersionOnStream:I

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 750
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 751
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "currencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 752
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "decimalSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 753
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "digit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 754
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "exponential"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    .line 755
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "exponentialSeparator"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 756
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 757
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "infinity"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 758
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "intlCurrencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 759
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minusSign"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 760
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "monetarySeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 761
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "NaN"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 762
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "patternSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 763
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "percent"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 764
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "perMill"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 765
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 766
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "zeroDigit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 767
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "locale"

    const-class v3, Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 768
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minusSignStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 769
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "percentStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 750
    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1045
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 81
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 96
    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 95
    return-void
.end method

.method protected static fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;
    .locals 3
    .param p0, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    .prologue
    .line 720
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 721
    .local v1, "result":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 722
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 723
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 724
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 725
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 726
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 727
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 728
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 729
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 730
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 735
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 746
    return-object v1

    .line 738
    :cond_0
    :try_start_1
    const-string/jumbo v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 115
    const-class v1, Ljava/text/spi/DecimalFormatSymbolsProvider;

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    .line 116
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance()Ljava/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 150
    const-class v2, Ljava/text/spi/DecimalFormatSymbolsProvider;

    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    .line 151
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-static {}, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->-get0()Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;

    move-result-object v2

    .line 152
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p0, v3}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    .line 154
    .local v1, "providersInstance":Ljava/text/DecimalFormatSymbols;
    if-eqz v1, :cond_0

    .line 155
    return-object v1

    .line 159
    .end local v1    # "providersInstance":Ljava/text/DecimalFormatSymbols;
    :cond_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v2
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 13
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 577
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 580
    const/4 v3, 0x0

    .line 581
    .local v3, "needCacheUpdate":Z
    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 582
    .local v0, "data":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 583
    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    .line 584
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 585
    .local v2, "localeData":Llibcore/icu/LocaleData;
    new-array v0, v11, [Ljava/lang/Object;

    .line 586
    const/16 v6, 0xb

    new-array v5, v6, [Ljava/lang/String;

    .line 587
    .local v5, "values":[Ljava/lang/String;
    iget-char v6, v2, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 588
    iget-char v6, v2, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 589
    iget-char v6, v2, Llibcore/icu/LocaleData;->patternSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 590
    iget-object v6, v2, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 591
    iget-char v6, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 592
    const-string/jumbo v6, "#"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 593
    iget-object v6, v2, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 594
    iget-object v6, v2, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    aput-object v6, v5, v12

    .line 595
    iget-char v6, v2, Llibcore/icu/LocaleData;->perMill:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 596
    iget-object v6, v2, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    const/16 v7, 0x9

    aput-object v6, v5, v7

    .line 597
    iget-object v6, v2, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    const/16 v7, 0xa

    aput-object v6, v5, v7

    .line 598
    aput-object v5, v0, v8

    .line 599
    const/4 v3, 0x1

    .line 602
    .end local v2    # "localeData":Llibcore/icu/LocaleData;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    aget-object v4, v0, v8

    check-cast v4, [Ljava/lang/String;

    .line 604
    .local v4, "numberElements":[Ljava/lang/String;
    aget-object v6, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 605
    aget-object v6, v4, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 606
    aget-object v6, v4, v10

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 607
    aget-object v6, v4, v11

    const/16 v7, 0x25

    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 608
    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 609
    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 610
    const/4 v6, 0x6

    aget-object v6, v4, v6

    const/16 v7, 0x2d

    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 611
    aget-object v6, v4, v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 612
    aget-object v6, v4, v12

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 613
    const/16 v6, 0x8

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 614
    const/16 v6, 0x9

    aget-object v6, v4, v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 615
    const/16 v6, 0xa

    aget-object v6, v4, v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 621
    const-string/jumbo v6, ""

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 623
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 628
    :cond_1
    :goto_0
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-eqz v6, :cond_4

    .line 629
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v6}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 630
    aget-object v6, v0, v9

    if-eqz v6, :cond_3

    aget-object v6, v0, v9

    iget-object v7, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    if-ne v6, v7, :cond_3

    .line 631
    aget-object v6, v0, v10

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 650
    :goto_1
    iget-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 652
    if-eqz v3, :cond_2

    .line 653
    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_2
    return-void

    .line 633
    :cond_3
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v6, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 634
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    aput-object v6, v0, v9

    .line 635
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    aput-object v6, v0, v10

    .line 636
    const/4 v3, 0x1

    goto :goto_1

    .line 640
    :cond_4
    const-string/jumbo v6, "XXX"

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 642
    :try_start_1
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    :goto_2
    const-string/jumbo v6, "\u00a4"

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_1

    .line 643
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 624
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private static maybeStripMarkers(Ljava/lang/String;C)C
    .locals 5
    .param p0, "symbol"    # Ljava/lang/String;
    .param p1, "fallback"    # C

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 665
    .local v1, "length":I
    if-ne v1, v4, :cond_0

    .line 666
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    return v2

    .line 669
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 670
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 671
    .local v0, "first":C
    const/16 v2, 0x200e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x200f

    if-ne v0, v2, :cond_2

    .line 672
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    return v2

    .line 671
    :cond_2
    const/16 v2, 0x61c

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 676
    .end local v0    # "first":C
    :cond_3
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 818
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 819
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "serialVersionOnStream"

    invoke-virtual {v1, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 820
    .local v4, "serialVersionOnStream":I
    const-string/jumbo v5, "currencySymbol"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 821
    const-string/jumbo v5, "decimalSeparator"

    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 822
    const-string/jumbo v5, "digit"

    const/16 v6, 0x23

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 823
    const-string/jumbo v5, "groupingSeparator"

    const/16 v6, 0x2c

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 824
    const-string/jumbo v5, "infinity"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 825
    const-string/jumbo v5, "intlCurrencySymbol"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 826
    const-string/jumbo v5, "NaN"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 827
    const-string/jumbo v5, "patternSeparator"

    const/16 v6, 0x3b

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 833
    const-string/jumbo v5, "minusSignStr"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 834
    .local v2, "minusSignStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 835
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 839
    :goto_0
    const-string/jumbo v5, "percentStr"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 840
    .local v3, "percentStr":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 841
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 846
    :goto_1
    const-string/jumbo v5, "perMill"

    const/16 v6, 0x2030

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 847
    const-string/jumbo v5, "zeroDigit"

    const/16 v6, 0x30

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 848
    const-string/jumbo v5, "locale"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 849
    if-nez v4, :cond_2

    .line 850
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 855
    :goto_2
    if-nez v4, :cond_3

    .line 857
    const-string/jumbo v5, "E"

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 867
    :goto_3
    :try_start_0
    iget-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_4
    return-void

    .line 837
    .end local v3    # "percentStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "minusSign"

    const/16 v6, 0x2d

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    goto :goto_0

    .line 843
    .restart local v3    # "percentStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "percent"

    const/16 v6, 0x25

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    goto :goto_1

    .line 852
    :cond_2
    const-string/jumbo v5, "monetarySeparator"

    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    goto :goto_2

    .line 858
    :cond_3
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 860
    const-string/jumbo v5, "exponential"

    const/16 v6, 0x45

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_3

    .line 863
    :cond_4
    const-string/jumbo v5, "exponentialSeparator"

    const-string/jumbo v6, "E"

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_3

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iput-object v7, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 774
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "currencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 775
    const-string/jumbo v1, "decimalSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 776
    const-string/jumbo v1, "digit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 777
    const-string/jumbo v1, "exponential"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 778
    const-string/jumbo v1, "exponentialSeparator"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    const-string/jumbo v1, "groupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 780
    const-string/jumbo v1, "infinity"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    const-string/jumbo v1, "intlCurrencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    const-string/jumbo v1, "monetarySeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 783
    const-string/jumbo v1, "NaN"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    const-string/jumbo v1, "patternSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 785
    const-string/jumbo v1, "perMill"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 786
    const-string/jumbo v1, "serialVersionOnStream"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 787
    const-string/jumbo v1, "zeroDigit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 788
    const-string/jumbo v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    const-string/jumbo v1, "minusSign"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 793
    const-string/jumbo v1, "percent"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 795
    const-string/jumbo v1, "minusSignStr"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 796
    const-string/jumbo v1, "percentStr"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 772
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 517
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 528
    if-nez p1, :cond_0

    return v1

    .line 529
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    .line 530
    :cond_1
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    .line 531
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    .line 532
    .local v0, "other":Ljava/text/DecimalFormatSymbols;
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    if-ne v2, v3, :cond_3

    .line 533
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_3

    .line 534
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_3

    .line 535
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_3

    .line 536
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_3

    .line 537
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_3

    .line 538
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_3

    .line 539
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_3

    .line 540
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 532
    if-eqz v2, :cond_3

    .line 541
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 532
    if-eqz v2, :cond_3

    .line 542
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 532
    if-eqz v2, :cond_3

    .line 543
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 532
    if-eqz v2, :cond_3

    .line 544
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne v2, v3, :cond_3

    .line 545
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_3

    .line 546
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 532
    if-eqz v2, :cond_3

    .line 547
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v2, v0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 532
    :cond_3
    return v1
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .prologue
    .line 196
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDigit()C
    .locals 1

    .prologue
    .line 250
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    return-object v0
.end method

.method getExponentialSymbol()C
    .locals 1

    .prologue
    .line 466
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    return v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    .prologue
    .line 181
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method protected getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 3

    .prologue
    .line 684
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v1

    .line 688
    :cond_0
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 689
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 690
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDigit(C)V

    .line 691
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 692
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 693
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 694
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPercent(C)V

    .line 695
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 696
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 697
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 702
    :try_start_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 703
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v2

    .line 702
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v1

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "XXX"

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    .prologue
    .line 318
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    .prologue
    .line 444
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    .prologue
    .line 266
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .locals 1

    .prologue
    .line 211
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPercent()C
    .locals 1

    .prologue
    .line 226
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZeroDigit()C
    .locals 1

    .prologue
    .line 166
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 554
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 555
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int v0, v1, v2

    .line 556
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int v0, v1, v2

    .line 557
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    add-int v0, v1, v2

    .line 558
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    add-int v0, v1, v2

    .line 559
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    add-int v0, v1, v2

    .line 560
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    add-int v0, v1, v2

    .line 561
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    add-int v0, v1, v2

    .line 562
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 563
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 564
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 565
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 566
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 567
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    add-int v0, v1, v2

    .line 568
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 569
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 570
    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    const/4 v1, 0x0

    .line 428
    if-nez p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 431
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 432
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 427
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 358
    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 1
    .param p1, "decimalSeparator"    # C

    .prologue
    .line 203
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 202
    return-void
.end method

.method public setDigit(C)V
    .locals 1
    .param p1, "digit"    # C

    .prologue
    .line 257
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 256
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 1
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 504
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 499
    return-void
.end method

.method setExponentialSymbol(C)V
    .locals 1
    .param p1, "exp"    # C

    .prologue
    .line 486
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 484
    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 1
    .param p1, "groupingSeparator"    # C

    .prologue
    .line 188
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 187
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 1
    .param p1, "infinity"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 290
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 391
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 392
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 393
    if-eqz p1, :cond_0

    .line 395
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 396
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 389
    return-void

    .line 397
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public setMinusSign(C)V
    .locals 1
    .param p1, "minusSign"    # C

    .prologue
    .line 339
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 338
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 1
    .param p1, "sep"    # C

    .prologue
    .line 453
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 451
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 1
    .param p1, "NaN"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 307
    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 1
    .param p1, "patternSeparator"    # C

    .prologue
    .line 274
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 273
    return-void
.end method

.method public setPerMill(C)V
    .locals 1
    .param p1, "perMill"    # C

    .prologue
    .line 218
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 217
    return-void
.end method

.method public setPercent(C)V
    .locals 1
    .param p1, "percent"    # C

    .prologue
    .line 242
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 241
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 1
    .param p1, "zeroDigit"    # C

    .prologue
    .line 173
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 172
    return-void
.end method
