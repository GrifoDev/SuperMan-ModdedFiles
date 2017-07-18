.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final GMT:Ljava/lang/String; = "GMT"

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

.field private static final TAG_QUOTE_ASCII_CHAR:I = 0x64

.field private static final TAG_QUOTE_CHARS:I = 0x65

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient compiledPattern:[C

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Ljava/text/DateFormatSymbols;

.field private transient hasFollowingMinusSign:Z

.field private locale:Ljava/util/Locale;

.field private transient minusSign:C

.field private transient originalNumberFormat:Ljava/text/NumberFormat;

.field private transient originalNumberPattern:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private serialVersionOnStream:I

.field transient useDateFormatSymbols:Z

.field private transient zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x18

    const/4 v4, 0x3

    const-class v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    new-array v0, v3, [Ljava/text/DateFormat$Field;

    sget-object v3, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v1

    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v4

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0xf
        0x11
        0x3e8
        0xf
        0x2
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x11
        0x1
        0x9
        0x11
        0x2
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    return-void
.end method

.method constructor <init>(IILjava/util/Locale;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    iput v6, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    const/16 v3, 0x2d

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    iput-boolean v5, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iput-object p3, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    sget-object v3, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    const/16 v3, 0x9

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    invoke-virtual {v2, v7}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    invoke-virtual {v2, v6}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    invoke-virtual {v2, v5}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    invoke-virtual {v2, v8}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v2, v7}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {v2, v6}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v2, v5}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string/jumbo v3, "{0} {1}"

    aput-object v3, v1, v9

    sget-object v3, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    new-array v0, v7, [Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x4

    aget-object v3, v1, v3

    aput-object v3, v0, v5

    aget-object v3, v1, p1

    aput-object v3, v0, v6

    aget-object v3, v1, v9

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    return-void

    :cond_2
    if-ltz p1, :cond_3

    aget-object v3, v1, p1

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ltz p2, :cond_4

    add-int/lit8 v3, p2, 0x4

    aget-object v3, v1, v3

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "No date or time style specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    return-void
.end method

.method private checkNegativeNumberExpression()V
    .locals 5

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v3, v3, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    const/16 v3, 0x2d

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_2

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    :cond_2
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    :cond_3
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    goto :goto_0
.end method

.method private compile(Ljava/lang/String;)[C
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v15, v11, 0x2

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_16

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v15, 0x27

    if-ne v1, v15, :cond_8

    add-int/lit8 v15, v6, 0x1

    if-ge v15, v11, :cond_2

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v15, 0x27

    if-ne v1, v15, :cond_2

    add-int/lit8 v6, v6, 0x1

    if-eqz v4, :cond_0

    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    const/4 v9, -0x1

    const/4 v4, 0x0

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-nez v7, :cond_5

    if-eqz v4, :cond_3

    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    const/4 v9, -0x1

    const/4 v4, 0x0

    :cond_3
    if-nez v14, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_2
    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v15, 0x1

    if-ne v10, v15, :cond_7

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v15, 0x80

    if-ge v2, v15, :cond_6

    or-int/lit16 v15, v2, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    const/16 v15, 0x6501

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/16 v15, 0x65

    invoke-static {v15, v10, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const/16 v15, 0x61

    if-lt v1, v15, :cond_a

    const/16 v15, 0x7a

    if-le v1, v15, :cond_12

    :cond_a
    const/16 v15, 0x41

    if-lt v1, v15, :cond_b

    const/16 v15, 0x5a

    if-le v1, v15, :cond_12

    :cond_b
    if-eqz v4, :cond_c

    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    const/4 v9, -0x1

    const/4 v4, 0x0

    :cond_c
    const/16 v15, 0x80

    if-ge v1, v15, :cond_d

    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_d
    add-int/lit8 v8, v6, 0x1

    :goto_4
    if-ge v8, v11, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x27

    if-eq v5, v15, :cond_e

    const/16 v15, 0x61

    if-lt v5, v15, :cond_f

    const/16 v15, 0x7a

    if-gt v5, v15, :cond_f

    :cond_e
    sub-int v15, v8, v6

    or-int/lit16 v15, v15, 0x6500

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    if-ge v6, v8, :cond_11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_f
    const/16 v15, 0x41

    if-lt v5, v15, :cond_10

    const/16 v15, 0x5a

    if-le v5, v15, :cond_e

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_11
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v15, "GyMdkHmsSEDFwWahKzZYuXLc"

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_13

    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Illegal pattern character \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_13
    const/4 v15, -0x1

    if-eq v9, v15, :cond_14

    if-ne v9, v13, :cond_15

    :cond_14
    move v9, v13

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_15
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    move v9, v13

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_16
    if-eqz v7, :cond_17

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Unterminated quote"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_17
    if-eqz v4, :cond_18

    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    :cond_18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    new-array v12, v10, [C

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v10, v12, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v12
.end method

.method private static final encode(IILjava/lang/StringBuilder;)V
    .locals 3

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid ISO 8601 format: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xff

    if-ge p1, v0, :cond_1

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_1
    shl-int/lit8 v0, p0, 0x8

    or-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .locals 8

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v5

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v0, v0, v6

    ushr-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    aget-char v0, v0, v6

    and-int/lit16 v2, v0, 0xff

    const/16 v0, 0xff

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v6, v7, 0x1

    aget-char v0, v0, v7

    shl-int/lit8 v2, v0, 0x10

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    aget-char v0, v0, v6

    or-int/2addr v2, v0

    move v6, v7

    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    goto :goto_0

    :pswitch_0
    int-to-char v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    invoke-virtual {p2, v0, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/2addr v6, v2

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    move v6, v7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    if-eqz p5, :cond_8

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    if-eqz p6, :cond_2

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    aget-object v0, v1, p2

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v2, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    if-eqz p6, :cond_4

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_7

    if-eqz p6, :cond_6

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    if-ge p1, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private formatWeekday(IIZZ)Ljava/lang/String;
    .locals 2

    if-eqz p3, :cond_5

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-eqz p4, :cond_0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    aget-object v1, v0, p2

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    if-eqz p4, :cond_2

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getCalendarName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    return-void
.end method

.method private initializeCalendar(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_2

    sget-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    :cond_2
    return-void
.end method

.method private initializeDefaultCentury()V
    .locals 4

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, -0x50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    return-void
.end method

.method private isDigit(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isGregorianCalendar()Z
    .locals 2

    const-string/jumbo v0, "java.util.GregorianCalendar"

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getCalendarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private matchDSTString(Ljava/lang/String;III[[Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    add-int/lit8 v6, p4, 0x2

    aget-object v0, p5, p3

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v4
.end method

.method private matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/text/CalendarBuilder;",
            ")I"
        }
    .end annotation

    if-eqz p4, :cond_3

    const/4 v6, 0x0

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v5, v0, :cond_0

    :cond_1
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    :cond_3
    neg-int v0, p2

    return v0
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I
    .locals 18

    const/16 v17, 0x0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/4 v2, 0x7

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    const/16 v17, 0x1

    :cond_0
    const/4 v15, 0x0

    const/4 v14, -0x1

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    aget-object v2, p4, v17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v15, :cond_1

    aget-object v5, p4, v17

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v14, v17

    move v15, v7

    :cond_1
    aget-object v2, p4, v17

    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v7, -0x1

    if-le v2, v15, :cond_2

    aget-object v11, p4, v17

    add-int/lit8 v13, v7, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v10, p2

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v14, v17

    add-int/lit8 v15, v7, -0x1

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_3
    if-ltz v14, :cond_4

    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    add-int v2, p2, v15

    return v2

    :cond_4
    move/from16 v0, p2

    neg-int v2, v0

    return v2
.end method

.method private matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x1

    :goto_0
    const/4 v0, 0x4

    if-gt v6, v0, :cond_1

    aget-object v3, p3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 2

    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 21

    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    move-object/from16 v0, p2

    iget v4, v0, Ljava/text/ParsePosition;->index:I

    move/from16 v18, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    const/4 v2, 0x1

    new-array v8, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v2, v8, v3

    new-instance v11, Ljava/text/CalendarBuilder;

    invoke-direct {v11}, Ljava/text/CalendarBuilder;-><init>()V

    const/4 v15, 0x0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v5, v2, 0x8

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    aget-char v2, v2, v15

    and-int/lit16 v6, v2, 0xff

    const/16 v2, 0xff

    if-ne v6, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    aget-char v2, v2, v16

    shl-int/lit8 v6, v2, 0x10

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    aget-char v2, v2, v15

    or-int/2addr v6, v2

    move/from16 v15, v16

    :goto_1
    packed-switch v5, :pswitch_data_0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v17, v2, 0x8

    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    const/16 v2, 0x65

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    const/4 v7, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    const/16 v2, 0x65

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x64

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    and-int/lit16 v12, v2, 0xff

    :goto_2
    move-object/from16 v0, p0

    iget-char v2, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v12, v2, :cond_3

    const/4 v10, 0x1

    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v11}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    move-result v4

    if-gez v4, :cond_0

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    const/4 v2, 0x0

    return-object v2

    :pswitch_0
    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v6

    if-eq v2, v3, :cond_5

    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v2, 0x0

    return-object v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :pswitch_1
    move v13, v6

    move/from16 v16, v15

    :goto_3
    add-int/lit8 v6, v13, -0x1

    if-lez v13, :cond_8

    move/from16 v0, v20

    if-ge v4, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    aget-char v3, v3, v16

    if-eq v2, v3, :cond_7

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v2, 0x0

    return-object v2

    :cond_6
    move/from16 v15, v16

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v13, v6

    move/from16 v16, v15

    goto :goto_3

    :cond_8
    move/from16 v15, v16

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v15, 0x1

    aget-char v12, v2, v3

    goto :goto_2

    :cond_a
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->index:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x64

    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->addYear(I)Ljava/text/CalendarBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :cond_b
    return-object v19

    :catch_0
    move-exception v14

    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    const/4 v2, 0x0

    return-object v2

    :cond_c
    move/from16 v15, v16

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I
    .locals 8

    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x2

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v1, p6, Ljava/text/ParsePosition;->index:I

    return v1

    :cond_0
    const/4 v7, -0x1

    if-eqz p7, :cond_4

    if-eqz p8, :cond_1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_2

    return v7

    :cond_1
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz p8, :cond_3

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5

    return v7

    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {v1, p5, v3, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5

    return v7

    :cond_5
    return v7
.end method

.method private parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I
    .locals 11

    const/4 v6, -0x1

    if-eqz p4, :cond_3

    if-eqz p5, :cond_0

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_1

    return v6

    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_5

    return v6

    :cond_2
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v8

    const/4 v0, 0x0

    array-length v10, v8

    move v9, v0

    :goto_2
    if-ge v9, v10, :cond_5

    aget v7, v8, v9

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p3, v7, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_4

    return v6

    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    :cond_5
    return v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v4

    iput-object v4, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v4, v5, :cond_1

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    :goto_0
    iput v5, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    instance-of v4, v2, Ljava/util/SimpleTimeZone;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v4, Ljava/io/InvalidObjectException;

    const-string/jumbo v5, "invalid pattern"

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .locals 32

    const v7, 0x7fffffff

    const/16 v16, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v19, v4, p1

    const/16 v4, 0x11

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getWeekYear()I

    move-result v6

    :goto_0
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_6

    const/16 v23, 0x2

    :goto_1
    if-nez p5, :cond_0

    const/16 v4, 0x3e8

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    :cond_1
    :goto_2
    if-eqz v16, :cond_2

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v9, v4, p1

    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    aget-object v10, v4, p1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move-object/from16 v8, p3

    move-object v11, v10

    move-object/from16 v14, p4

    invoke-interface/range {v8 .. v14}, Ljava/text/Format$FieldDelegate;->formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    return-void

    :cond_3
    const/16 p1, 0x1

    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v19, v4, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    goto :goto_0

    :cond_4
    const/16 v4, 0x3e8

    move/from16 v0, v19

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    move-result v6

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    goto :goto_0

    :cond_6
    const/16 v23, 0x1

    goto :goto_1

    :pswitch_1
    if-eqz p5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v4, v0

    if-ge v6, v4, :cond_7

    aget-object v16, v18, v6

    :cond_7
    if-nez v16, :cond_1

    const-string/jumbo v16, ""

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    move/from16 v0, p2

    if-eq v0, v4, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_2

    :cond_8
    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v4, v5, v1}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :cond_9
    if-nez v16, :cond_1

    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_a

    const/16 p2, 0x1

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :pswitch_3
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_4
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_5
    if-nez v16, :cond_1

    if-nez v6, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :pswitch_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_8
    if-eqz p5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v15

    aget-object v16, v15, v6

    goto/16 :goto_2

    :pswitch_9
    if-nez v16, :cond_1

    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :pswitch_a
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v17, 0x1

    :goto_3
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_e

    const/16 v25, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_f

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    goto :goto_3

    :cond_e
    const/16 v25, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v22, v4, v5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 v0, v22

    invoke-static {v4, v5, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v6, v4, v5

    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_10

    const/16 v21, 0x1

    :goto_5
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ne v0, v4, :cond_11

    const/16 v20, 0x1

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_10
    const/16 v21, 0x0

    goto :goto_5

    :cond_11
    const/16 v20, 0x0

    goto :goto_6

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v6, v4, v5

    if-nez v6, :cond_12

    const/16 v4, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_12
    const v4, 0xea60

    div-int/2addr v6, v4

    if-ltz v6, :cond_14

    const/16 v4, 0x2b

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    div-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_13

    const/16 v4, 0x3a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_13
    rem-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_14
    const/16 v4, 0x2d

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v6, v6

    goto :goto_7

    :pswitch_d
    if-nez v16, :cond_1

    int-to-double v4, v6

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v4, v4, v28

    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    mul-double v4, v4, v28

    double-to-int v6, v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I
    .locals 42

    const/16 v38, 0x0

    const/4 v12, 0x0

    new-instance v15, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Ljava/text/ParsePosition;-><init>(I)V

    move/from16 v0, p2

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v4, 0x13

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v7, v4, p3

    :goto_1
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    move/from16 v0, p2

    move-object/from16 v1, p7

    iput v0, v1, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v4, -0x1

    return v4

    :cond_1
    const/16 p3, 0x1

    goto :goto_0

    :cond_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v4, 0x20

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    const/16 v4, 0x9

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    const/16 v4, 0xf

    move/from16 v0, p3

    if-ne v0, v4, :cond_6

    :cond_3
    if-eqz p5, :cond_b

    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_a

    :cond_4
    :goto_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p7

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v4, -0x1

    return v4

    :cond_5
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, p4

    if-le v0, v4, :cond_3

    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    const/16 v4, 0x13

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v16

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v39

    if-eqz p5, :cond_28

    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v5, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    :goto_4
    if-eqz v38, :cond_4

    const/16 v4, 0x8

    move/from16 v0, p3

    if-ne v0, v4, :cond_29

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v32

    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    sub-int v41, v4, v39

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move/from16 v0, v41

    int-to-double v10, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    div-double v4, v32, v30

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v10

    double-to-int v12, v4

    :goto_5
    if-eqz p8, :cond_9

    if-gez v12, :cond_9

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2a

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_2a

    :goto_6
    neg-int v12, v12

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    :cond_9
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v5, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    :goto_7
    if-nez v38, :cond_c

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_8

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    goto :goto_7

    :cond_c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-eqz p8, :cond_8

    if-gez v12, :cond_8

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_d

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_d

    :goto_8
    neg-int v12, v12

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_3

    :cond_d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_8

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_8

    goto :goto_8

    :pswitch_1
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v37

    if-lez v37, :cond_4

    return v37

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    if-lez v37, :cond_4

    return v37

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-nez v4, :cond_11

    const/4 v4, 0x4

    move/from16 v0, p4

    if-lt v0, v4, :cond_f

    const/16 v40, 0x2

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v40

    invoke-virtual {v4, v7, v0, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    if-lez v37, :cond_10

    return v37

    :cond_f
    const/16 v40, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    :cond_11
    const/4 v4, 0x2

    move/from16 v0, p4

    if-gt v0, v4, :cond_12

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    sub-int v4, v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    rem-int/lit8 v28, v4, 0x64

    move/from16 v0, v28

    if-ne v12, v0, :cond_13

    const/4 v4, 0x1

    :goto_a
    const/4 v5, 0x0

    aput-boolean v4, p6, v5

    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, v4, 0x64

    move/from16 v0, v28

    if-ge v12, v0, :cond_14

    const/16 v4, 0x64

    :goto_b
    add-int/2addr v4, v5

    add-int/2addr v12, v4

    :cond_12
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    :cond_13
    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    goto :goto_b

    :pswitch_3
    const/16 v17, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    if-lez v36, :cond_4

    return v36

    :pswitch_4
    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    if-lez v36, :cond_4

    return v36

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x1

    if-lt v12, v4, :cond_4

    const/16 v4, 0x18

    if-gt v12, v4, :cond_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_16

    const/4 v12, 0x0

    :cond_16
    const/16 v4, 0xb

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    :pswitch_6
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    if-lez v36, :cond_4

    return v36

    :pswitch_7
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    if-lez v36, :cond_4

    return v36

    :pswitch_8
    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v21

    const/16 v20, 0x9

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v22, p9

    invoke-direct/range {v17 .. v22}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v37

    if-lez v37, :cond_4

    return v37

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    if-lez v37, :cond_4

    return v37

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    if-lt v12, v4, :cond_4

    const/16 v4, 0xc

    if-gt v12, v4, :cond_4

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_19

    const/4 v12, 0x0

    :cond_19
    const/16 v4, 0xa

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    :pswitch_a
    const/16 v20, 0x0

    :try_start_0
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_1b

    const/16 v20, 0x1

    move/from16 v24, v20

    :goto_c
    if-nez v24, :cond_21

    const/16 v4, 0x47

    move/from16 v0, v29

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x67

    move/from16 v0, v29

    if-ne v0, v4, :cond_1f

    :cond_1a
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, p2

    const-string/jumbo v5, "GMT"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1f

    const-string/jumbo v20, "GMT"

    const-string/jumbo v4, "GMT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v18, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, p1

    move/from16 v19, p2

    invoke-virtual/range {v17 .. v22}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string/jumbo v4, "GMT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, p2

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_2b

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v29

    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_1c

    const/16 v20, 0x1

    :goto_d
    if-nez v20, :cond_1d

    const/16 v4, 0xf

    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    :cond_1b
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_2c

    const/16 v20, -0x1

    move/from16 v24, v20

    goto :goto_c

    :cond_1c
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_2b

    const/16 v20, -0x1

    goto :goto_d

    :cond_1d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v23, p9

    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    if-lez v35, :cond_1e

    return v35

    :cond_1e
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v34

    goto/16 :goto_2

    :cond_1f
    :try_start_3
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v4, v2}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v35

    if-lez v35, :cond_20

    return v35

    :cond_20
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    move/from16 v20, v24

    goto/16 :goto_2

    :cond_21
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v23, v4, 0x1

    move/from16 v0, v23

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v27, p9

    invoke-direct/range {v21 .. v27}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    if-lez v35, :cond_22

    return v35

    :cond_22
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v20, v24

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_4

    const/16 v20, 0x0

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v4, 0x5a

    move/from16 v0, v29

    if-ne v0, v4, :cond_23

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    :cond_23
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_24

    const/16 v20, 0x1

    :goto_e
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_26

    const/16 v22, 0x1

    :goto_f
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v21, p4

    move-object/from16 v23, p9

    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    if-lez v35, :cond_27

    return v35

    :cond_24
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_25

    const/16 v20, -0x1

    goto :goto_e

    :cond_25
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_2

    :cond_26
    const/16 v22, 0x0

    goto :goto_f

    :cond_27
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_2

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    goto/16 :goto_4

    :cond_29
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto/16 :goto_5

    :cond_2a
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_9

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_9

    goto/16 :goto_6

    :catch_1
    move-exception v34

    move/from16 v20, v24

    goto/16 :goto_2

    :cond_2b
    move/from16 v20, v24

    goto/16 :goto_d

    :cond_2c
    move/from16 v24, v20

    goto/16 :goto_c

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I
    .locals 9

    move v3, p2

    add-int/lit8 v3, p2, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    rsub-int/lit8 v6, v3, 0x1

    return v6

    :cond_1
    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v4, v3, 0x1

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    mul-int/lit8 v6, v2, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v2, v6, v7

    :goto_1
    const/16 v6, 0x17

    if-le v2, v6, :cond_3

    move v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p4, v6, :cond_6

    add-int/lit8 v3, v4, 0x1

    :try_start_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    const/16 v6, 0x3a

    if-ne v0, v6, :cond_4

    add-int/lit8 v4, v3, 0x1

    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    goto :goto_0

    :cond_4
    if-nez p5, :cond_0

    move v4, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v0, -0x30

    add-int/lit8 v3, v4, 0x1

    :try_start_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v6, v5, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v5, v6, v7

    const/16 v6, 0x3b

    if-gt v5, v6, :cond_0

    :goto_3
    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v5, v6

    const v6, 0xea60

    mul-int/2addr v6, v5

    mul-int/2addr v6, p3

    const/16 v7, 0xf

    invoke-virtual {p6, v7, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    return v3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move v3, v4

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method private subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .locals 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v5, 0x0

    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    aget-object v8, v9, v7

    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v10, 0x2

    if-gt v4, v10, :cond_0

    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :cond_0
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    :cond_1
    if-nez v5, :cond_3

    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    aget-object v8, v9, v7

    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v10, 0x2

    if-gt v4, v10, :cond_2

    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :cond_2
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    :cond_3
    if-nez v5, :cond_5

    array-length v3, v9

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v8, v9, v2

    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    const/4 v10, 0x2

    if-gt v4, v10, :cond_4

    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :cond_4
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_c

    invoke-virtual {v5, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {p0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_6
    const/4 v10, 0x3

    if-lt v4, v10, :cond_a

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    :goto_1
    if-nez v6, :cond_7

    const/4 v10, 0x3

    if-lt v4, v10, :cond_b

    if-nez v1, :cond_b

    :cond_7
    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_8

    const/16 v10, 0xf

    invoke-virtual {p3, v10}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    :cond_8
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, p2

    return v10

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    :cond_c
    const/4 v10, 0x0

    return v10
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v6, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v3, :cond_1

    if-ne v0, v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_3

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal pattern  character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    if-eqz v3, :cond_6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Unfinished quote in pattern"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private useDateFormatSymbols()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->isGregorianCalendar()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    .locals 5

    const/4 v2, 0x2

    :try_start_0
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    iput-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    :cond_0
    if-ltz p1, :cond_3

    const/16 v1, 0x64

    if-ge p1, v1, :cond_4

    const/4 v1, 0x1

    if-lt p2, v1, :cond_4

    if-gt p2, v2, :cond_4

    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    if-ne p2, v2, :cond_1

    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    add-int/2addr v1, p1

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_2
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v2, p1

    sget-object v4, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, v3, p4, v4}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-void

    :cond_4
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_3

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    :try_start_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit16 v2, p1, 0x3e8

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit16 p1, p1, 0x3e8

    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0x64

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 p1, p1, 0x64

    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_5
    if-ne p2, v2, :cond_3

    if-ne p3, v2, :cond_3

    rem-int/lit8 v1, p1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GyMdkHmsSEDFwWahKzZYuXLc"

    invoke-direct {p0, p1, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/text/CharacterIteratorFieldDelegate;

    invoke-direct {v0}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/util/Date;

    invoke-direct {p0, p1, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v2, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Cannot format given Object as a Date"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    throw v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZYuXLc"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
