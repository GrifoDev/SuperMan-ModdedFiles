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

    const/4 v4, 0x3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "currencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "decimalSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "digit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "exponential"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "exponentialSeparator"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "infinity"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "intlCurrencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minusSign"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "monetarySeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "NaN"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "patternSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "percent"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "perMill"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "zeroDigit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "locale"

    const-class v3, Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minusSignStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "percentStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    return-void
.end method

.method protected static fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;
    .locals 3

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-class v1, Ljava/text/spi/DecimalFormatSymbolsProvider;

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance()Ljava/text/DecimalFormatSymbols;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .locals 4

    const-class v2, Ljava/text/spi/DecimalFormatSymbolsProvider;

    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->-get0()Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p0, v3}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v2
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 13

    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    const/4 v3, 0x0

    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    new-array v0, v11, [Ljava/lang/Object;

    const/16 v6, 0xb

    new-array v5, v6, [Ljava/lang/String;

    iget-char v6, v2, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-char v6, v2, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-char v6, v2, Llibcore/icu/LocaleData;->patternSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, v2, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    iget-char v6, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string/jumbo v6, "#"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    iget-object v6, v2, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    const/4 v7, 0x6

    aput-object v6, v5, v7

    iget-object v6, v2, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    aput-object v6, v5, v12

    iget-char v6, v2, Llibcore/icu/LocaleData;->perMill:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    iget-object v6, v2, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    const/16 v7, 0x9

    aput-object v6, v5, v7

    iget-object v6, v2, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    const/16 v7, 0xa

    aput-object v6, v5, v7

    aput-object v5, v0, v8

    const/4 v3, 0x1

    :cond_0
    aget-object v4, v0, v8

    check-cast v4, [Ljava/lang/String;

    aget-object v6, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    aget-object v6, v4, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    aget-object v6, v4, v10

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    aget-object v6, v4, v11

    const/16 v7, 0x25

    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    const/4 v6, 0x6

    aget-object v6, v4, v6

    const/16 v7, 0x2d

    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    aget-object v6, v4, v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    aget-object v6, v4, v12

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    const/16 v6, 0x9

    aget-object v6, v4, v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v6, v4, v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-eqz v6, :cond_4

    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v6}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    aget-object v6, v0, v9

    if-eqz v6, :cond_3

    aget-object v6, v0, v9

    iget-object v7, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    if-ne v6, v7, :cond_3

    aget-object v6, v0, v10

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    :goto_1
    iget-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-eqz v3, :cond_2

    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v6, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    aput-object v6, v0, v9

    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    aput-object v6, v0, v10

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "XXX"

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    :try_start_1
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string/jumbo v6, "\u00a4"

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static maybeStripMarkers(Ljava/lang/String;C)C
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x200e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x200f

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    return v2

    :cond_2
    const/16 v2, 0x61c

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    const-string/jumbo v5, "serialVersionOnStream"

    invoke-virtual {v1, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "currencySymbol"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    const-string/jumbo v5, "decimalSeparator"

    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    const-string/jumbo v5, "digit"

    const/16 v6, 0x23

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    const-string/jumbo v5, "groupingSeparator"

    const/16 v6, 0x2c

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    const-string/jumbo v5, "infinity"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    const-string/jumbo v5, "intlCurrencySymbol"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string/jumbo v5, "NaN"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    const-string/jumbo v5, "patternSeparator"

    const/16 v6, 0x3b

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    const-string/jumbo v5, "minusSignStr"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    :goto_0
    const-string/jumbo v5, "percentStr"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    :goto_1
    const-string/jumbo v5, "perMill"

    const/16 v6, 0x2030

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    const-string/jumbo v5, "zeroDigit"

    const/16 v6, 0x30

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    const-string/jumbo v5, "locale"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    :goto_2
    if-nez v4, :cond_3

    const-string/jumbo v5, "E"

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    :goto_3
    :try_start_0
    iget-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :cond_0
    const-string/jumbo v5, "minusSign"

    const/16 v6, 0x2d

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "percent"

    const/16 v6, 0x25

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "monetarySeparator"

    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    const-string/jumbo v5, "exponential"

    const/16 v6, 0x45

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string/jumbo v5, "exponentialSeparator"

    const-string/jumbo v6, "E"

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    iput-object v7, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "currencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "decimalSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "digit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "exponential"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "exponentialSeparator"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "groupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "infinity"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "intlCurrencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "monetarySeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "NaN"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "patternSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "perMill"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "serialVersionOnStream"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "zeroDigit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "minusSign"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "percent"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string/jumbo v1, "minusSignStr"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "percentStr"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v2, v0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDigit()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    return-object v0
.end method

.method getExponentialSymbol()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    return v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method protected getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 3

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v1

    :cond_0
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setZeroDigit(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDigit(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPercent(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSign(C)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XXX"

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPercent()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZeroDigit()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setDigit(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    return-void
.end method

.method setExponentialSymbol(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMinusSign(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setPerMill(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setPercent(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 1

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method
