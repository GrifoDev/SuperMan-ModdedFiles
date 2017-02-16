.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final synthetic -java-math-RoundingModeSwitchesValues:[I = null

.field static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final MAXIMUM_FRACTION_DIGITS:I = 0x7fffffff

.field static final MAXIMUM_INTEGER_DIGITS:I = 0x7fffffff

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient icuDecimalFormat:Landroid/icu/text/DecimalFormat;

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private roundingMode:Ljava/math/RoundingMode;

.field private symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method private static synthetic -getjava-math-RoundingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1432
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 1433
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "positivePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1434
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "positiveSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1435
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negativePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1436
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negativeSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    .line 1437
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "posPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1438
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "posSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1439
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1440
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1441
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "multiplier"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1442
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingSize"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1443
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingUsed"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1444
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "decimalSeparatorAlwaysShown"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1445
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "parseBigDecimal"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1446
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "roundingMode"

    const-class v3, Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1447
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "symbols"

    const-class v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1448
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "useExponentialNotation"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1449
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minExponentDigits"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1450
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "maximumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1451
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minimumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1452
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "maximumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1453
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minimumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1454
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1432
    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1663
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1662
    sput-object v0, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    .line 380
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 1640
    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 400
    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 402
    .local v0, "def":Ljava/util/Locale;
    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 405
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-object v1, v2, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    .line 407
    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 410
    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 1640
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 433
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 434
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 1640
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 461
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 462
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method private compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z
    .locals 3
    .param p1, "other"    # Landroid/icu/text/DecimalFormat;

    .prologue
    const/4 v1, 0x0

    .line 1080
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1081
    .local v0, "increment":Ljava/math/BigDecimal;
    if-eqz v0, :cond_1

    .line 1082
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1083
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1082
    :cond_0
    return v1

    .line 1085
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static convertRoundingMode(Ljava/math/RoundingMode;)I
    .locals 2
    .param p0, "rm"    # Ljava/math/RoundingMode;

    .prologue
    .line 1361
    invoke-static {}, Ljava/text/DecimalFormat;->-getjava-math-RoundingModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid rounding mode specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1365
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1367
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1369
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1371
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 1373
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1375
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1377
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 650
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 651
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 652
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 653
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 654
    return-object p2
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 670
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 671
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 672
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 673
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 674
    return-object p2
.end method

.method private static getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;
    .locals 4
    .param p0, "fp"    # Ljava/text/FieldPosition;

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p0

    .line 480
    :cond_0
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_1

    .line 481
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 506
    .local v0, "attribute":Landroid/icu/text/NumberFormat$Field;
    :goto_0
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 507
    .local v1, "icuFieldPosition":Ljava/text/FieldPosition;
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 508
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 509
    return-object v1

    .line 482
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    .end local v1    # "icuFieldPosition":Ljava/text/FieldPosition;
    :cond_1
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_2

    .line 483
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 484
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_2
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_3

    .line 485
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 486
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_3
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_4

    .line 487
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 488
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_4
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_5

    .line 489
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 490
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_5
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_6

    .line 491
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 492
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_6
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_7

    .line 493
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 494
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_7
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_8

    .line 495
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 496
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_8
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_9

    .line 497
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 498
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_9
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_a

    .line 499
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 500
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_a
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_b

    .line 501
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto/16 :goto_0

    .line 503
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unexpected field position attribute type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private init(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 466
    new-instance v0, Landroid/icu/text/DecimalFormat;

    .line 467
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 466
    invoke-direct {v0, p1, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    .line 468
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 465
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x154

    const/16 v11, 0x135

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1529
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1530
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "symbols"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DecimalFormatSymbols;

    iput-object v5, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 1532
    const-string/jumbo v5, ""

    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 1534
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "positivePrefix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1535
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "positiveSuffix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1536
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "negativePrefix"

    const-string/jumbo v7, "-"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1537
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "negativeSuffix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1538
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "multiplier"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    .line 1539
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "groupingSize"

    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    .line 1540
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "groupingUsed"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 1541
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "decimalSeparatorAlwaysShown"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1544
    const-string/jumbo v5, "roundingMode"

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/RoundingMode;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 1546
    const-string/jumbo v5, "maximumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1547
    .local v2, "maximumIntegerDigits":I
    const-string/jumbo v5, "minimumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 1548
    .local v4, "minimumIntegerDigits":I
    const-string/jumbo v5, "maximumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 1549
    .local v1, "maximumFractionDigits":I
    const-string/jumbo v5, "minimumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    .line 1555
    .local v3, "minimumFractionDigits":I
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5, v2}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1556
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1558
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1559
    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1560
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1561
    const-string/jumbo v5, "parseBigDecimal"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 1563
    const-string/jumbo v5, "serialVersionOnStream"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v10, :cond_0

    .line 1564
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1565
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1566
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1567
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1528
    :cond_0
    return-void
.end method

.method private static toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;
    .locals 3
    .param p0, "icuAttribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 519
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 522
    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 525
    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 528
    :cond_2
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 531
    :cond_3
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 534
    :cond_4
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 537
    :cond_5
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 538
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 540
    :cond_6
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 541
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 543
    :cond_7
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 544
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 546
    :cond_8
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 547
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 549
    :cond_9
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 550
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 552
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateFieldsFromIcu()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    const/16 v1, 0x135

    if-ne v0, v1, :cond_0

    .line 1173
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const v1, 0x77359400

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1175
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 1176
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 1177
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 1178
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 1168
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1458
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1459
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "positivePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1460
    const-string/jumbo v1, "positiveSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1461
    const-string/jumbo v1, "negativePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1462
    const-string/jumbo v1, "negativeSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1463
    const-string/jumbo v3, "posPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1464
    const-string/jumbo v3, "posSuffixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1465
    const-string/jumbo v3, "negPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1466
    const-string/jumbo v1, "negSuffixPattern"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1467
    const-string/jumbo v1, "multiplier"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1468
    const-string/jumbo v1, "groupingSize"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1469
    const-string/jumbo v1, "groupingUsed"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1470
    const-string/jumbo v1, "decimalSeparatorAlwaysShown"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1471
    const-string/jumbo v1, "parseBigDecimal"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1472
    const-string/jumbo v1, "roundingMode"

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1473
    const-string/jumbo v1, "symbols"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1474
    const-string/jumbo v1, "useExponentialNotation"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1475
    const-string/jumbo v1, "minExponentDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1476
    const-string/jumbo v1, "maximumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1477
    const-string/jumbo v1, "minimumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1478
    const-string/jumbo v1, "maximumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1479
    const-string/jumbo v1, "minimumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1480
    const-string/jumbo v1, "serialVersionOnStream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1481
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1457
    return-void
.end method


# virtual methods
.method adjustForCurrencyDefaultFractionDigits()V
    .locals 5

    .prologue
    .line 1405
    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    .line 1406
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    .line 1408
    :try_start_0
    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1412
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1413
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    .line 1414
    .local v1, "digits":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 1415
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v3

    .line 1418
    .local v3, "oldMinDigits":I
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1419
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1420
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1404
    .end local v1    # "digits":I
    .end local v3    # "oldMinDigits":I
    :cond_1
    :goto_1
    return-void

    .line 1422
    .restart local v1    # "digits":I
    .restart local v3    # "oldMinDigits":I
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1423
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    goto :goto_1

    .line 1409
    .end local v1    # "digits":I
    .end local v3    # "oldMinDigits":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1164
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 1163
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1136
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 1137
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 1135
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1051
    :try_start_0
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    .line 1052
    .local v1, "other":Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DecimalFormat;

    iput-object v2, v1, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    .line 1053
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DecimalFormatSymbols;

    iput-object v2, v1, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    return-object v1

    .line 1055
    .end local v1    # "other":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1065
    if-nez p1, :cond_0

    .line 1066
    return v1

    .line 1068
    :cond_0
    if-ne p0, p1, :cond_1

    .line 1069
    const/4 v1, 0x1

    return v1

    .line 1071
    :cond_1
    instance-of v2, p1, Ljava/text/DecimalFormat;

    if-nez v2, :cond_2

    .line 1072
    return v1

    :cond_2
    move-object v0, p1

    .line 1074
    check-cast v0, Ljava/text/DecimalFormat;

    .line 1075
    .local v0, "other":Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v3, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1076
    iget-object v1, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z

    move-result v1

    .line 1075
    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 610
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 611
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 612
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 613
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 614
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # J
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 630
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 631
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 632
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 633
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 634
    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 579
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 580
    instance-of v0, p1, Ljava/lang/Short;

    .line 579
    if-nez v0, :cond_0

    .line 580
    instance-of v0, p1, Ljava/lang/Byte;

    .line 579
    if-nez v0, :cond_0

    .line 581
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 579
    if-nez v0, :cond_0

    .line 582
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 579
    if-nez v0, :cond_0

    .line 583
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 584
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 585
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 586
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 587
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 588
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    .line 589
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 590
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 591
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 593
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 697
    if-nez p1, :cond_0

    .line 698
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "object == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 704
    :cond_0
    iget-object v9, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v9, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    .line 707
    .local v5, "original":Ljava/text/AttributedCharacterIterator;
    new-instance v8, Ljava/lang/StringBuilder;

    .line 708
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v10

    sub-int/2addr v9, v10

    .line 707
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 710
    .local v8, "textBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 711
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    :cond_1
    new-instance v6, Ljava/text/AttributedString;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 717
    .local v6, "result":Ljava/text/AttributedString;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    :goto_1
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 718
    invoke-interface {v5, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 721
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 720
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "attribute$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 722
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v7

    .line 723
    .local v7, "start":I
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v2

    .line 724
    .local v2, "end":I
    invoke-static {v0}, Ljava/text/DecimalFormat;->toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;

    move-result-object v4

    .line 725
    .local v4, "javaAttr":Ljava/text/NumberFormat$Field;
    invoke-virtual {v6, v4, v4, v7, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_2

    .line 717
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v2    # "end":I
    .end local v4    # "javaAttr":Ljava/text/NumberFormat$Field;
    .end local v7    # "start":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 729
    .end local v1    # "attribute$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v6}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    return-object v9
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public getGroupingSize()I
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    .prologue
    .line 1270
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getMultiplier()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1092
    invoke-super {p0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v0

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v3, 0x0

    .line 790
    iget v1, p2, Ljava/text/ParsePosition;->index:I

    if-ltz v1, :cond_0

    iget v1, p2, Ljava/text/ParsePosition;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 791
    :cond_0
    return-object v3

    .line 795
    :cond_1
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 796
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_2

    .line 797
    return-object v3

    .line 799
    :cond_2
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 800
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 801
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    .line 803
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 807
    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_7

    move-object v1, v0

    .line 808
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    .line 807
    if-eqz v1, :cond_7

    .line 809
    :cond_5
    return-object v0

    :cond_6
    move-object v1, v0

    .line 804
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_4

    .line 805
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 811
    :cond_7
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-eqz v1, :cond_8

    .line 812
    check-cast v0, Landroid/icu/math/BigDecimal;

    .end local v0    # "number":Ljava/lang/Number;
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 815
    .restart local v0    # "number":Ljava/lang/Number;
    :cond_8
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-nez v1, :cond_9

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_a

    .line 816
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 818
    :cond_a
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/Double;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/lang/Number;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 819
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 821
    :cond_b
    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    .line 1338
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1339
    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 1341
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1344
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1345
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    goto :goto_0
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 3
    .param p1, "newSymbols"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 844
    :try_start_0
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 845
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .local v0, "foo":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 1002
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1001
    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 965
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    .line 964
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 984
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 983
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x154

    .line 1230
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 1231
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1233
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_0

    .line 1234
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 1235
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1238
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1229
    return-void

    .line 1232
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    goto :goto_0

    .line 1236
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    goto :goto_1
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x135

    .line 1190
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 1191
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1193
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_0

    .line 1194
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 1195
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1198
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1189
    return-void

    .line 1192
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    goto :goto_0

    .line 1196
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    goto :goto_1
.end method

.method public setMinimumFractionDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x154

    .line 1250
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 1251
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1253
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_0

    .line 1254
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 1255
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1258
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1249
    return-void

    .line 1252
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    goto :goto_0

    .line 1256
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    goto :goto_1
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x135

    .line 1210
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 1211
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1213
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_0

    .line 1214
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 1215
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1218
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1209
    return-void

    .line 1212
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    goto :goto_0

    .line 1216
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    goto :goto_1
.end method

.method public setMultiplier(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 939
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    .line 938
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 880
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 912
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 1022
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 1021
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1030
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 1031
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 1029
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 896
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 2
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1391
    if-nez p1, :cond_0

    .line 1392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1395
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 1397
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-static {p1}, Ljava/text/DecimalFormat;->convertRoundingMode(Ljava/math/RoundingMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setRoundingMode(I)V

    .line 1390
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
