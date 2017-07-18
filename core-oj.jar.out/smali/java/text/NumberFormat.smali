.class public abstract Ljava/text/NumberFormat;
.super Ljava/text/Format;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/NumberFormat$Field;,
        Ljava/text/NumberFormat$NumberFormatGetter;
    }
.end annotation


# static fields
.field private static final CURRENCYSTYLE:I = 0x1

.field public static final FRACTION_FIELD:I = 0x1

.field private static final INTEGERSTYLE:I = 0x3

.field public static final INTEGER_FIELD:I = 0x0

.field private static final NUMBERSTYLE:I = 0x0

.field private static final PERCENTSTYLE:I = 0x2

.field private static final cachedLocaleData:Ljava/util/Hashtable;

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x20094c40ec82f818L


# instance fields
.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/16 v3, 0x28

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iput-byte v3, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    iput-byte v2, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    iput v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iput v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-class v1, Ljava/text/spi/NumberFormatProvider;

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static final getCurrencyInstance()Ljava/text/NumberFormat;
    .locals 2

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/NumberFormat;
    .locals 2

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-class v7, Ljava/text/spi/NumberFormatProvider;

    invoke-static {v7}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Ljava/text/NumberFormat$NumberFormatGetter;->-get0()Ljava/text/NumberFormat$NumberFormatGetter;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, p0, v8}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/NumberFormat;

    if-eqz v5, :cond_0

    return-object v5

    :cond_0
    sget-object v7, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    invoke-virtual {v7, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    iget-object v7, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    aput-object v7, v3, v10

    iget-object v7, v0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    aput-object v7, v3, v11

    iget-object v7, v0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v3, v8

    iget-object v7, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    aput-object v7, v3, v12

    sget-object v7, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    invoke-virtual {v7, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    if-ne p1, v12, :cond_3

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    aget-object v7, v3, v1

    invoke-direct {v2, v7, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    if-ne p1, v12, :cond_4

    invoke-virtual {v2, v10}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v2, v10}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    invoke-virtual {v2, v11}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    move v1, p1

    goto :goto_0

    :cond_4
    if-ne p1, v11, :cond_2

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->adjustForCurrencyDefaultFractionDigits()V

    goto :goto_1
.end method

.method public static final getIntegerInstance()Ljava/text/NumberFormat;
    .locals 2

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getNumberInstance()Ljava/text/NumberFormat;
    .locals 2

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPercentInstance()Ljava/text/NumberFormat;
    .locals 2

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    if-ge v0, v2, :cond_0

    iget-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget-byte v0, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    :cond_0
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Digit count range invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ltz v0, :cond_1

    iput v2, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x7f

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_3

    :goto_3
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_0
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    int-to-byte v0, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    int-to-byte v1, v0

    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/text/NumberFormat;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/NumberFormat;

    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->groupingUsed:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
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

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unparseable number: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupingUsed(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
