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

    .prologue
    .line 838
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    .line 183
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 203
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 853
    iput-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 871
    iput-byte v3, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    .line 889
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    .line 907
    iput-byte v2, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    .line 925
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    .line 933
    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 946
    iput v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 957
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 968
    iput v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 979
    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 1004
    iput v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    .line 203
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 486
    const-class v1, Ljava/text/spi/NumberFormatProvider;

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    .line 487
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static final getCurrencyInstance()Ljava/text/NumberFormat;
    .locals 2

    .prologue
    .line 447
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
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/NumberFormat;
    .locals 2

    .prologue
    .line 385
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
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;
    .locals 13
    .param p0, "desiredLocale"    # Ljava/util/Locale;
    .param p1, "choice"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 734
    const-class v7, Ljava/text/spi/NumberFormatProvider;

    invoke-static {v7}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v4

    .line 735
    .local v4, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v4}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 737
    invoke-static {}, Ljava/text/NumberFormat$NumberFormatGetter;->-get0()Ljava/text/NumberFormat$NumberFormatGetter;

    move-result-object v7

    .line 736
    new-array v8, v11, [Ljava/lang/Object;

    .line 739
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 736
    invoke-virtual {v4, v7, p0, v8}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/NumberFormat;

    .line 740
    .local v5, "providersInstance":Ljava/text/NumberFormat;
    if-eqz v5, :cond_0

    .line 741
    return-object v5

    .line 746
    .end local v5    # "providersInstance":Ljava/text/NumberFormat;
    :cond_0
    sget-object v7, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    invoke-virtual {v7, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 747
    .local v3, "numberPatterns":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 748
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 749
    .local v0, "data":Llibcore/icu/LocaleData;
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    .line 750
    iget-object v7, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    aput-object v7, v3, v10

    .line 751
    iget-object v7, v0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    aput-object v7, v3, v11

    .line 752
    iget-object v7, v0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v3, v8

    .line 753
    iget-object v7, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    aput-object v7, v3, v12

    .line 755
    sget-object v7, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    invoke-virtual {v7, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    .end local v0    # "data":Llibcore/icu/LocaleData;
    :cond_1
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    .line 759
    .local v6, "symbols":Ljava/text/DecimalFormatSymbols;
    if-ne p1, v12, :cond_3

    const/4 v1, 0x0

    .line 760
    .local v1, "entry":I
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    aget-object v7, v3, v1

    invoke-direct {v2, v7, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 762
    .local v2, "format":Ljava/text/DecimalFormat;
    if-ne p1, v12, :cond_4

    .line 763
    invoke-virtual {v2, v10}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 764
    invoke-virtual {v2, v10}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 765
    invoke-virtual {v2, v11}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 770
    :cond_2
    :goto_1
    return-object v2

    .line 759
    .end local v1    # "entry":I
    .end local v2    # "format":Ljava/text/DecimalFormat;
    :cond_3
    move v1, p1

    .restart local v1    # "entry":I
    goto :goto_0

    .line 766
    .restart local v2    # "format":Ljava/text/DecimalFormat;
    :cond_4
    if-ne p1, v11, :cond_2

    .line 767
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->adjustForCurrencyDefaultFractionDigits()V

    goto :goto_1
.end method

.method public static final getIntegerInstance()Ljava/text/NumberFormat;
    .locals 2

    .prologue
    .line 424
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
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 440
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getNumberInstance()Ljava/text/NumberFormat;
    .locals 2

    .prologue
    .line 401
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
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPercentInstance()Ljava/text/NumberFormat;
    .locals 2

    .prologue
    .line 461
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
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 468
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
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

    .line 796
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 797
    iget v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    if-ge v0, v2, :cond_0

    .line 799
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 800
    iget-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 801
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 802
    iget-byte v0, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 804
    :cond_0
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v0, v1, :cond_1

    .line 805
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    .line 807
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Digit count range invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_2
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ltz v0, :cond_1

    .line 809
    iput v2, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    .line 794
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7f

    .line 824
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    .line 826
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    .line 828
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    .line 830
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_3

    :goto_3
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    .line 832
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 822
    return-void

    .line 825
    :cond_0
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_0

    .line 827
    :cond_1
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_1

    .line 829
    :cond_2
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    int-to-byte v0, v0

    goto :goto_2

    .line 831
    :cond_3
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    int-to-byte v1, v0

    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    .line 525
    .local v0, "other":Ljava/text/NumberFormat;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 502
    if-nez p1, :cond_0

    .line 503
    return v2

    .line 505
    :cond_0
    if-ne p0, p1, :cond_1

    .line 506
    return v1

    .line 508
    :cond_1
    invoke-virtual {p0}, Ljava/text/NumberFormat;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 509
    return v2

    :cond_2
    move-object v0, p1

    .line 511
    check-cast v0, Ljava/text/NumberFormat;

    .line 512
    .local v0, "other":Ljava/text/NumberFormat;
    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v3, v4, :cond_4

    .line 513
    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v3, v4, :cond_4

    .line 514
    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ne v3, v4, :cond_4

    .line 515
    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ne v3, v4, :cond_4

    .line 516
    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->groupingUsed:Z

    if-ne v3, v4, :cond_4

    .line 517
    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v3, v4, :cond_3

    .line 512
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 517
    goto :goto_0

    :cond_4
    move v1, v2

    .line 512
    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    .line 287
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 299
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    .line 298
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
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 239
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 240
    instance-of v0, p1, Ljava/lang/Short;

    .line 239
    if-nez v0, :cond_0

    .line 240
    instance-of v0, p1, Ljava/lang/Byte;

    .line 239
    if-nez v0, :cond_0

    .line 241
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 239
    if-nez v0, :cond_0

    .line 241
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 239
    if-nez v0, :cond_0

    .line 242
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 243
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 244
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 245
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 246
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 248
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .prologue
    .line 706
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 494
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 348
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 349
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 350
    .local v1, "result":Ljava/lang/Number;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-nez v2, :cond_0

    .line 351
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

    .line 352
    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 351
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 354
    :cond_0
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 277
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 1
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    .line 689
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupingUsed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 544
    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 543
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 623
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    .line 624
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 621
    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 569
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    .line 570
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 567
    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 650
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    .line 651
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 648
    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 596
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    .line 597
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 594
    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 373
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 1
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 724
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
