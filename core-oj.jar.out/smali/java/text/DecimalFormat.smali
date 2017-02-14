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

    const/4 v4, 0x3

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "positivePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "positiveSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negativePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negativeSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "posPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "posSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "multiplier"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingSize"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingUsed"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "decimalSeparatorAlwaysShown"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "parseBigDecimal"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "roundingMode"

    const-class v3, Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "symbols"

    const-class v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "useExponentialNotation"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minExponentDigits"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "maximumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minimumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "maximumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minimumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-object v1, v2, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    return-void
.end method

.method private compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

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

    invoke-static {}, Ljava/text/DecimalFormat;->-getjava-math-RoundingModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid rounding mode specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x5

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

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

    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object p2
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object p2
.end method

.method private static getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;
    .locals 4

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_1

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    :goto_0
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_2

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_3

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_4

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_5

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_6

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_7

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_8

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_9

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_a

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_b

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    goto/16 :goto_0

    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unexpected field position attribute type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private init(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v12, 0x154

    const/16 v11, 0x135

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string/jumbo v5, "symbols"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DecimalFormatSymbols;

    iput-object v5, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    const-string/jumbo v5, ""

    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "positivePrefix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "positiveSuffix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "negativePrefix"

    const-string/jumbo v7, "-"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "negativeSuffix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "multiplier"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "groupingSize"

    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "groupingUsed"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "decimalSeparatorAlwaysShown"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    const-string/jumbo v5, "roundingMode"

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/RoundingMode;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    const-string/jumbo v5, "maximumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "minimumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "maximumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "minimumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5, v2}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    const-string/jumbo v5, "parseBigDecimal"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    const-string/jumbo v5, "serialVersionOnStream"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v10, :cond_0

    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    :cond_0
    return-void
.end method

.method private static toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;
    .locals 3

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    return-object v0

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

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    const/16 v1, 0x135

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const v1, 0x77359400

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "positivePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "positiveSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "negativePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "negativeSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "posPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "posSuffixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "negPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "negSuffixPattern"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "multiplier"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "groupingSize"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string/jumbo v1, "groupingUsed"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string/jumbo v1, "decimalSeparatorAlwaysShown"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string/jumbo v1, "parseBigDecimal"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string/jumbo v1, "roundingMode"

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "symbols"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "useExponentialNotation"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string/jumbo v1, "minExponentDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string/jumbo v1, "maximumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "minimumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "maximumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "minimumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "serialVersionOnStream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method adjustForCurrencyDefaultFractionDigits()V
    .locals 5

    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DecimalFormat;

    iput-object v2, v1, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DecimalFormatSymbols;

    iput-object v2, v1, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
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
    instance-of v2, p1, Ljava/text/DecimalFormat;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v3, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 11

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "object == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    iget-object v9, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v9, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    :goto_0
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-ge v3, v9, :cond_1

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->next()C

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/text/AttributedString;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    :goto_1
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-ge v3, v9, :cond_3

    invoke-interface {v5, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v7

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v2

    invoke-static {v0}, Ljava/text/DecimalFormat;->toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;

    move-result-object v4

    invoke-virtual {v6, v4, v4, v7, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    return-object v9
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public getGroupingSize()I
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getMultiplier()I
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

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

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v0

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 4

    const/4 v3, 0x0

    iget v1, p2, Ljava/text/ParsePosition;->index:I

    if-ltz v1, :cond_0

    iget v1, p2, Ljava/text/ParsePosition;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    if-eqz v1, :cond_8

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    return-object v0

    :cond_6
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_7
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/icu/math/BigDecimal;

    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    :cond_8
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-nez v1, :cond_9

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

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

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_b
    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2

    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    goto :goto_0
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 3

    const/16 v1, 0x154

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_0

    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void

    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    goto :goto_1
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 3

    const/16 v1, 0x135

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_0

    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    return-void

    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    goto :goto_1
.end method

.method public setMinimumFractionDigits(I)V
    .locals 3

    const/16 v1, 0x154

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_0

    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    return-void

    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    goto :goto_1
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 3

    const/16 v1, 0x135

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_0

    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    return-void

    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    goto :goto_1
.end method

.method public setMultiplier(I)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 1

    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-static {p1}, Ljava/text/DecimalFormat;->convertRoundingMode(Ljava/math/RoundingMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setRoundingMode(I)V

    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
