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

    .prologue
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

    .line 506
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 505
    sput-object v0, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    .line 512
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 511
    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    .line 1024
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 1023
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1042
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1060
    new-array v0, v3, [Ljava/text/DateFormat$Field;

    .line 1061
    sget-object v3, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v1

    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v4

    .line 1062
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1063
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1064
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1065
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1066
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

    .line 1067
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1068
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1069
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1071
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1072
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1060
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    .line 407
    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    .line 1024
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

    .line 1042
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

    .prologue
    const/4 v1, 0x3

    .line 542
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    .line 541
    return-void
.end method

.method constructor <init>(IILjava/util/Locale;)V
    .locals 10
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 610
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 432
    iput v6, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 451
    const/16 v3, 0x2d

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 457
    iput-boolean v5, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 611
    if-nez p3, :cond_0

    .line 612
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 615
    :cond_0
    iput-object p3, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 617
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 620
    sget-object v3, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 621
    .local v1, "dateTimePatterns":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 622
    invoke-static {p3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 623
    .local v2, "localeData":Llibcore/icu/LocaleData;
    const/16 v3, 0x9

    new-array v1, v3, [Ljava/lang/String;

    .line 624
    invoke-virtual {v2, v8}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 625
    invoke-virtual {v2, v7}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 626
    invoke-virtual {v2, v6}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 627
    invoke-virtual {v2, v5}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 628
    invoke-virtual {v2, v8}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 629
    invoke-virtual {v2, v7}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 630
    invoke-virtual {v2, v6}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 631
    invoke-virtual {v2, v5}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 632
    const-string/jumbo v3, "{0} {1}"

    aput-object v3, v1, v9

    .line 634
    sget-object v3, Ljava/text/SimpleDateFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .end local v2    # "localeData":Llibcore/icu/LocaleData;
    :cond_1
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 637
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    .line 638
    new-array v0, v7, [Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x4

    aget-object v3, v1, v3

    aput-object v3, v0, v5

    aget-object v3, v1, p1

    aput-object v3, v0, v6

    .line 639
    .local v0, "dateTimeArgs":[Ljava/lang/Object;
    aget-object v3, v1, v9

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 651
    .end local v0    # "dateTimeArgs":[Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 610
    return-void

    .line 641
    :cond_2
    if-ltz p1, :cond_3

    .line 642
    aget-object v3, v1, p1

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_3
    if-ltz p2, :cond_4

    .line 645
    add-int/lit8 v3, p2, 0x4

    aget-object v3, v1, v3

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_0

    .line 648
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "No date or time style specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 558
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 556
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    const/4 v1, 0x1

    .line 595
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 432
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 451
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 597
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 601
    :cond_1
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 602
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 603
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 604
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 605
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 606
    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 595
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 432
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 451
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 575
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 579
    :cond_1
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 580
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 581
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 582
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 583
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 573
    return-void
.end method

.method private checkNegativeNumberExpression()V
    .locals 5

    .prologue
    .line 2458
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v3, v3, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_0

    .line 2459
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2460
    :cond_1
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 2461
    .local v1, "numberPattern":Ljava/lang/String;
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2462
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2464
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2467
    .local v2, "separatorIndex":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2468
    const/16 v3, 0x2d

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2469
    .local v0, "minusIndex":I
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 2470
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 2471
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2472
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 2475
    .end local v0    # "minusIndex":I
    :cond_2
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    .line 2477
    .end local v2    # "separatorIndex":I
    :cond_3
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    goto :goto_0
.end method

.method private compile(Ljava/lang/String;)[C
    .locals 18
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 750
    .local v11, "length":I
    const/4 v7, 0x0

    .line 751
    .local v7, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v15, v11, 0x2

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 752
    .local v3, "compiledPattern":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 753
    .local v14, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 754
    .local v4, "count":I
    const/4 v9, -0x1

    .line 756
    .local v9, "lastTag":I
    const/4 v6, 0x0

    .end local v14    # "tmpBuffer":Ljava/lang/StringBuilder;
    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_16

    .line 757
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 759
    .local v1, "c":C
    const/16 v15, 0x27

    if-ne v1, v15, :cond_8

    .line 762
    add-int/lit8 v15, v6, 0x1

    if-ge v15, v11, :cond_2

    .line 763
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 764
    const/16 v15, 0x27

    if-ne v1, v15, :cond_2

    .line 765
    add-int/lit8 v6, v6, 0x1

    .line 766
    if-eqz v4, :cond_0

    .line 767
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 768
    const/4 v9, -0x1

    .line 769
    const/4 v4, 0x0

    .line 771
    :cond_0
    if-eqz v7, :cond_1

    .line 772
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 774
    :cond_1
    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 779
    :cond_2
    if-nez v7, :cond_5

    .line 780
    if-eqz v4, :cond_3

    .line 781
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 782
    const/4 v9, -0x1

    .line 783
    const/4 v4, 0x0

    .line 785
    :cond_3
    if-nez v14, :cond_4

    .line 786
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 790
    :goto_2
    const/4 v7, 0x1

    goto :goto_1

    .line 788
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 792
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 793
    .local v10, "len":I
    const/4 v15, 0x1

    if-ne v10, v15, :cond_7

    .line 794
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 795
    .local v2, "ch":C
    const/16 v15, 0x80

    if-ge v2, v15, :cond_6

    .line 796
    or-int/lit16 v15, v2, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    .end local v2    # "ch":C
    :goto_3
    const/4 v7, 0x0

    goto :goto_1

    .line 798
    .restart local v2    # "ch":C
    :cond_6
    const/16 v15, 0x6501

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 802
    .end local v2    # "ch":C
    :cond_7
    const/16 v15, 0x65

    invoke-static {v15, v10, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 803
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 809
    .end local v10    # "len":I
    :cond_8
    if-eqz v7, :cond_9

    .line 810
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 813
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

    .line 814
    :cond_b
    if-eqz v4, :cond_c

    .line 815
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 816
    const/4 v9, -0x1

    .line 817
    const/4 v4, 0x0

    .line 819
    :cond_c
    const/16 v15, 0x80

    if-ge v1, v15, :cond_d

    .line 821
    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 826
    :cond_d
    add-int/lit8 v8, v6, 0x1

    .local v8, "j":I
    :goto_4
    if-ge v8, v11, :cond_e

    .line 827
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 828
    .local v5, "d":C
    const/16 v15, 0x27

    if-eq v5, v15, :cond_e

    const/16 v15, 0x61

    if-lt v5, v15, :cond_f

    const/16 v15, 0x7a

    if-gt v5, v15, :cond_f

    .line 832
    .end local v5    # "d":C
    :cond_e
    sub-int v15, v8, v6

    or-int/lit16 v15, v15, 0x6500

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :goto_5
    if-ge v6, v8, :cond_11

    .line 834
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 828
    .restart local v5    # "d":C
    :cond_f
    const/16 v15, 0x41

    if-lt v5, v15, :cond_10

    const/16 v15, 0x5a

    if-le v5, v15, :cond_e

    .line 826
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 836
    .end local v5    # "d":C
    :cond_11
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 842
    .end local v8    # "j":I
    :cond_12
    const-string/jumbo v15, "GyMdkHmsSEDFwWahKzZYuXLc"

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .local v13, "tag":I
    const/4 v15, -0x1

    if-ne v13, v15, :cond_13

    .line 843
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Illegal pattern character \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 844
    const-string/jumbo v17, "\'"

    .line 843
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 846
    :cond_13
    const/4 v15, -0x1

    if-eq v9, v15, :cond_14

    if-ne v9, v13, :cond_15

    .line 847
    :cond_14
    move v9, v13

    .line 848
    add-int/lit8 v4, v4, 0x1

    .line 849
    goto/16 :goto_1

    .line 851
    :cond_15
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 852
    move v9, v13

    .line 853
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 856
    .end local v1    # "c":C
    .end local v13    # "tag":I
    :cond_16
    if-eqz v7, :cond_17

    .line 857
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Unterminated quote"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 860
    :cond_17
    if-eqz v4, :cond_18

    .line 861
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 865
    :cond_18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 866
    .restart local v10    # "len":I
    new-array v12, v10, [C

    .line 867
    .local v12, "r":[C
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v10, v12, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 868
    return-object v12
.end method

.method private static final encode(IILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 875
    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 876
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

    .line 878
    :cond_0
    const/16 v0, 0xff

    if-ge p1, v0, :cond_1

    .line 879
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    :goto_0
    return-void

    .line 881
    :cond_1
    shl-int/lit8 v0, p0, 0x8

    or-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;

    .prologue
    .line 953
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 955
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v5

    .line 957
    .local v5, "useDateFormatSymbols":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 958
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v0, v0, v6

    ushr-int/lit8 v1, v0, 0x8

    .line 959
    .local v1, "tag":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-char v0, v0, v6

    and-int/lit16 v2, v0, 0xff

    .line 960
    .local v2, "count":I
    const/16 v0, 0xff

    if-ne v2, v0, :cond_1

    .line 961
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-char v0, v0, v7

    shl-int/lit8 v2, v0, 0x10

    .line 962
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-char v0, v0, v6

    or-int/2addr v2, v0

    move v6, v7

    .line 965
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    .line 976
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    goto :goto_0

    .line 967
    :pswitch_0
    int-to-char v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 971
    :pswitch_1
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    invoke-virtual {p2, v0, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 972
    add-int/2addr v6, v2

    .line 973
    goto :goto_0

    .line 980
    .end local v1    # "tag":I
    .end local v2    # "count":I
    :cond_0
    return-object p2

    .end local v6    # "i":I
    .restart local v1    # "tag":I
    .restart local v2    # "count":I
    .restart local v7    # "i":I
    :cond_1
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 965
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "maxIntCount"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z
    .param p6, "standalone"    # Z

    .prologue
    const/4 v3, 0x3

    .line 1305
    const/4 v0, 0x0

    .line 1306
    .local v0, "current":Ljava/lang/String;
    if-eqz p5, :cond_8

    .line 1308
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1309
    if-eqz p6, :cond_2

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .line 1318
    :goto_0
    if-eqz v1, :cond_0

    .line 1319
    aget-object v0, v1, p2

    .line 1327
    .end local v0    # "current":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 1328
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v2, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1331
    :cond_1
    return-object v0

    .line 1309
    .restart local v0    # "current":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    .local v1, "months":[Ljava/lang/String;
    goto :goto_0

    .line 1310
    .end local v1    # "months":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 1311
    if-eqz p6, :cond_4

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "months":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .line 1312
    .end local v1    # "months":[Ljava/lang/String;
    :cond_5
    if-ne p1, v3, :cond_7

    .line 1313
    if-eqz p6, :cond_6

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "months":[Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .line 1315
    .end local v1    # "months":[Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    .local v1, "months":[Ljava/lang/String;
    goto :goto_0

    .line 1322
    .end local v1    # "months":[Ljava/lang/String;
    :cond_8
    if-ge p1, v3, :cond_0

    .line 1323
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private formatWeekday(IIZZ)Ljava/lang/String;
    .locals 2
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "useDateFormatSymbols"    # Z
    .param p4, "standalone"    # Z

    .prologue
    .line 1285
    if-eqz p3, :cond_5

    .line 1287
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1288
    if-eqz p4, :cond_0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, "weekdays":[Ljava/lang/String;
    :goto_0
    aget-object v1, v0, p2

    return-object v1

    .line 1288
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .line 1289
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1291
    if-eqz p4, :cond_2

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .line 1294
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_4

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .line 1300
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getCalendarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 2
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 657
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 660
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 661
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 662
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 663
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 666
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 670
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 655
    return-void
.end method

.method private initializeCalendar(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 674
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_2

    .line 675
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

    .line 680
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 673
    :cond_2
    return-void
.end method

.method private initializeDefaultCentury()V
    .locals 4

    .prologue
    .line 891
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 892
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, -0x50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 893
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 890
    return-void
.end method

.method private isDigit(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 1787
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

    .prologue
    .line 2258
    const-string/jumbo v0, "java.util.GregorianCalendar"

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getCalendarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private matchDSTString(Ljava/lang/String;III[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneIndex"    # I
    .param p4, "standardIndex"    # I
    .param p5, "zoneStrings"    # [[Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1641
    add-int/lit8 v6, p4, 0x2

    .line 1642
    .local v6, "index":I
    aget-object v0, p5, p3

    aget-object v3, v0, v6

    .line 1644
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    .line 1643
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    return v1

    .line 1647
    :cond_0
    return v4
.end method

.method private matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p5, "calb"    # Ljava/text/CalendarBuilder;
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

    .prologue
    .line 1606
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_3

    .line 1607
    const/4 v6, 0x0

    .line 1609
    .local v6, "bestMatch":Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v6    # "bestMatch":Ljava/lang/String;
    .local v7, "name$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1610
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1611
    .local v5, "length":I
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v5, v0, :cond_0

    .line 1612
    :cond_1
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    move-object v6, v3

    .local v6, "bestMatch":Ljava/lang/String;
    goto :goto_0

    .line 1618
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "bestMatch":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1619
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1620
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    .line 1623
    .end local v7    # "name$iterator":Ljava/util/Iterator;
    :cond_3
    neg-int v0, p2

    return v0
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1560
    const/16 v17, 0x0

    .line 1561
    .local v17, "i":I
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    .line 1563
    .local v16, "count":I
    const/4 v2, 0x7

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    const/16 v17, 0x1

    .line 1569
    :cond_0
    const/4 v15, 0x0

    .local v15, "bestMatchLength":I
    const/4 v14, -0x1

    .line 1570
    .local v14, "bestMatch":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1572
    aget-object v2, p4, v17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1575
    .local v7, "length":I
    if-le v7, v15, :cond_1

    .line 1576
    aget-object v5, p4, v17

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    .line 1575
    if-eqz v2, :cond_1

    .line 1578
    move/from16 v14, v17

    .line 1579
    move v15, v7

    .line 1584
    :cond_1
    aget-object v2, p4, v17

    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 1585
    add-int/lit8 v2, v7, -0x1

    if-le v2, v15, :cond_2

    .line 1586
    aget-object v11, p4, v17

    add-int/lit8 v13, v7, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v10, p2

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    .line 1584
    if-eqz v2, :cond_2

    .line 1587
    move/from16 v14, v17

    .line 1588
    add-int/lit8 v15, v7, -0x1

    .line 1570
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1591
    .end local v7    # "length":I
    :cond_3
    if-ltz v14, :cond_4

    .line 1593
    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1594
    add-int v2, p2, v15

    return v2

    .line 1596
    :cond_4
    move/from16 v0, p2

    neg-int v2, v0

    return v2
.end method

.method private matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneNames"    # [Ljava/lang/String;

    .prologue
    .line 1627
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x4

    if-gt v6, v0, :cond_1

    .line 1630
    aget-object v3, p3, v6

    .line 1632
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1631
    const/4 v1, 0x1

    .line 1632
    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    .line 1631
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    return v6

    .line 1627
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1636
    .end local v3    # "zoneName":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 900
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 901
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 902
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 899
    return-void
.end method

.method private parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1432
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    .line 1434
    move-object/from16 v0, p2

    iget v4, v0, Ljava/text/ParsePosition;->index:I

    .line 1435
    .local v4, "start":I
    move/from16 v18, v4

    .line 1436
    .local v18, "oldStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    .line 1438
    .local v20, "textLength":I
    const/4 v2, 0x1

    new-array v8, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v2, v8, v3

    .line 1440
    .local v8, "ambiguousYear":[Z
    new-instance v11, Ljava/text/CalendarBuilder;

    invoke-direct {v11}, Ljava/text/CalendarBuilder;-><init>()V

    .line 1442
    .local v11, "calb":Ljava/text/CalendarBuilder;
    const/4 v15, 0x0

    .local v15, "i":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_a

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v5, v2, 0x8

    .line 1444
    .local v5, "tag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    aget-char v2, v2, v15

    and-int/lit16 v6, v2, 0xff

    .line 1445
    .local v6, "count":I
    const/16 v2, 0xff

    if-ne v6, v2, :cond_c

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v2, v2, v16

    shl-int/lit8 v6, v2, 0x10

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    aget-char v2, v2, v15

    or-int/2addr v6, v2

    move/from16 v15, v16

    .line 1450
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 1477
    const/4 v7, 0x0

    .line 1487
    .local v7, "obeyCount":Z
    const/4 v10, 0x0

    .line 1489
    .local v10, "useFollowingMinusSignAsDelimiter":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_3

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v17, v2, 0x8

    .line 1491
    .local v17, "nextTag":I
    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 1492
    const/16 v2, 0x65

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 1493
    const/4 v7, 0x1

    .line 1496
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz v2, :cond_3

    .line 1497
    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 1498
    const/16 v2, 0x65

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 1500
    :cond_2
    const/16 v2, 0x64

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    and-int/lit16 v12, v2, 0xff

    .line 1506
    .local v12, "c":I
    :goto_2
    move-object/from16 v0, p0

    iget-char v2, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v12, v2, :cond_3

    .line 1507
    const/4 v10, 0x1

    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    .line 1511
    invoke-direct/range {v2 .. v11}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    move-result v4

    .line 1514
    if-gez v4, :cond_0

    .line 1515
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1516
    const/4 v2, 0x0

    return-object v2

    .line 1452
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    :pswitch_0
    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v6

    if-eq v2, v3, :cond_5

    .line 1453
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1454
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1455
    const/4 v2, 0x0

    return-object v2

    .line 1457
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1458
    goto/16 :goto_0

    :pswitch_1
    move v13, v6

    .end local v6    # "count":I
    .local v13, "count":I
    move/from16 v16, v15

    .line 1461
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_3
    add-int/lit8 v6, v13, -0x1

    .end local v13    # "count":I
    .restart local v6    # "count":I
    if-lez v13, :cond_8

    .line 1462
    move/from16 v0, v20

    if-ge v4, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v3, v3, v16

    if-eq v2, v3, :cond_7

    .line 1463
    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1464
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1465
    const/4 v2, 0x0

    return-object v2

    .end local v15    # "i":I
    .restart local v16    # "i":I
    :cond_6
    move/from16 v15, v16

    .line 1462
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    .line 1467
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v13, v6

    .end local v6    # "count":I
    .restart local v13    # "count":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_3

    .end local v13    # "count":I
    .restart local v6    # "count":I
    :cond_8
    move/from16 v15, v16

    .line 1469
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_0

    .line 1503
    .restart local v7    # "obeyCount":Z
    .restart local v10    # "useFollowingMinusSignAsDelimiter":Z
    .restart local v17    # "nextTag":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v15, 0x1

    aget-char v12, v2, v3

    .restart local v12    # "c":I
    goto :goto_2

    .line 1525
    .end local v5    # "tag":I
    .end local v6    # "count":I
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_a
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->index:I

    .line 1529
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    .line 1532
    .local v19, "parsedDate":Ljava/util/Date;
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_b

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1534
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

    .line 1546
    :cond_b
    return-object v19

    .line 1540
    .end local v19    # "parsedDate":Ljava/util/Date;
    :catch_0
    move-exception v14

    .line 1541
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1542
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1543
    const/4 v2, 0x0

    return-object v2

    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "i":I
    .restart local v5    # "tag":I
    .restart local v6    # "count":I
    .restart local v16    # "i":I
    :cond_c
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "value"    # I
    .param p4, "start"    # I
    .param p5, "field"    # I
    .param p6, "pos"    # Ljava/text/ParsePosition;
    .param p7, "useDateFormatSymbols"    # Z
    .param p8, "standalone"    # Z
    .param p9, "out"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 2173
    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    .line 2178
    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x2

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2179
    iget v1, p6, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2182
    :cond_0
    const/4 v7, -0x1

    .line 2183
    .local v7, "index":I
    if-eqz p7, :cond_4

    .line 2189
    if-eqz p8, :cond_1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    .line 2188
    :goto_0
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    .line 2187
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_2

    .line 2191
    return v7

    .line 2189
    :cond_1
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2196
    :cond_2
    if-eqz p8, :cond_3

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    .line 2195
    :goto_1
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    .line 2194
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5

    .line 2198
    return v7

    .line 2196
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2201
    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 2203
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 2202
    const/4 v3, 0x0

    .line 2201
    invoke-virtual {v1, p5, v3, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move-object/from16 v6, p9

    .line 2204
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5

    .line 2205
    return v7

    .line 2209
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    return v7
.end method

.method private parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "useDateFormatSymbols"    # Z
    .param p5, "standalone"    # Z
    .param p6, "out"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 2214
    const/4 v6, -0x1

    .line 2215
    .local v6, "index":I
    if-eqz p4, :cond_3

    .line 2220
    if-eqz p5, :cond_0

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    .line 2219
    :goto_0
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    .line 2218
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_1

    .line 2222
    return v6

    .line 2220
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2228
    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    .line 2227
    :goto_1
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    .line 2226
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2230
    return v6

    .line 2228
    :cond_2
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2233
    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v8

    .line 2234
    .local v8, "styles":[I
    const/4 v0, 0x0

    array-length v10, v8

    move v9, v0

    :goto_2
    if-ge v9, v10, :cond_5

    aget v7, v8, v9

    .line 2235
    .local v7, "style":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p3, v7, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v4

    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p6

    .line 2236
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_4

    .line 2237
    return v6

    .line 2234
    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 2242
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "style":I
    .end local v8    # "styles":[I
    :cond_5
    return v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2424
    :try_start_0
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v4

    iput-object v4, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    iget v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v4, v5, :cond_1

    .line 2431
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 2437
    :goto_0
    iput v5, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 2443
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 2444
    .local v2, "tz":Ljava/util/TimeZone;
    instance-of v4, v2, Ljava/util/SimpleTimeZone;

    if-eqz v4, :cond_0

    .line 2445
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 2446
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2447
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2448
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2420
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "zi":Ljava/util/TimeZone;
    :cond_0
    return-void

    .line 2425
    .end local v2    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    .line 2426
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/InvalidObjectException;

    const-string/jumbo v5, "invalid pattern"

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2435
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .locals 32
    .param p1, "patternCharIndex"    # I
    .param p2, "count"    # I
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z

    .prologue
    .line 1082
    const v7, 0x7fffffff

    .line 1083
    .local v7, "maxIntCount":I
    const/16 v16, 0x0

    .line 1084
    .local v16, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    .line 1086
    .local v12, "beginOffset":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v19, v4, p1

    .line 1088
    .local v19, "field":I
    const/16 v4, 0x11

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getWeekYear()I

    move-result v6

    .line 1103
    .local v6, "value":I
    :goto_0
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_6

    const/16 v23, 0x2

    .line 1104
    .local v23, "style":I
    :goto_1
    if-nez p5, :cond_0

    const/16 v4, 0x3e8

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 1112
    .end local v16    # "current":Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1267
    :pswitch_0
    if-nez v16, :cond_1

    .line 1268
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1273
    .end local p2    # "count":I
    :cond_1
    :goto_2
    if-eqz v16, :cond_2

    .line 1274
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    :cond_2
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v9, v4, p1

    .line 1278
    .local v9, "fieldID":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    aget-object v10, v4, p1

    .line 1280
    .local v10, "f":Ljava/text/DateFormat$Field;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move-object/from16 v8, p3

    move-object v11, v10

    move-object/from16 v14, p4

    invoke-interface/range {v8 .. v14}, Ljava/text/Format$FieldDelegate;->formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    .line 1080
    return-void

    .line 1093
    .end local v6    # "value":I
    .end local v9    # "fieldID":I
    .end local v10    # "f":Ljava/text/DateFormat$Field;
    .end local v23    # "style":I
    .restart local v16    # "current":Ljava/lang/String;
    .restart local p2    # "count":I
    :cond_3
    const/16 p1, 0x1

    .line 1094
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v19, v4, p1

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_0

    .line 1097
    .end local v6    # "value":I
    :cond_4
    const/16 v4, 0x3e8

    move/from16 v0, v19

    if-ne v0, v4, :cond_5

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_0

    .line 1100
    .end local v6    # "value":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_0

    .line 1103
    :cond_6
    const/16 v23, 0x1

    .restart local v23    # "style":I
    goto :goto_1

    .line 1114
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_1
    if-eqz p5, :cond_7

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v18

    .line 1116
    .local v18, "eras":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v4, v0

    if-ge v6, v4, :cond_7

    .line 1117
    aget-object v16, v18, v6

    .line 1119
    .end local v18    # "eras":[Ljava/lang/String;
    :cond_7
    if-nez v16, :cond_1

    .line 1120
    const-string/jumbo v16, ""

    .local v16, "current":Ljava/lang/String;
    goto :goto_2

    .line 1125
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_9

    .line 1126
    const/4 v4, 0x2

    move/from16 v0, p2

    if-eq v0, v4, :cond_8

    .line 1127
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_2

    .line 1129
    :cond_8
    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v4, v5, v1}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1131
    :cond_9
    if-nez v16, :cond_1

    .line 1132
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_a

    const/16 p2, 0x1

    .end local p2    # "count":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1141
    .restart local p2    # "count":I
    :pswitch_3
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 1140
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1148
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_4
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 1147
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1153
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_5
    if-nez v16, :cond_1

    .line 1154
    if-nez v6, :cond_b

    .line 1155
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

    .line 1158
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1164
    :pswitch_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1170
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1175
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_8
    if-eqz p5, :cond_1

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v15

    .line 1177
    .local v15, "ampm":[Ljava/lang/String;
    aget-object v16, v15, v6

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1182
    .end local v15    # "ampm":[Ljava/lang/String;
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_9
    if-nez v16, :cond_1

    .line 1183
    if-nez v6, :cond_c

    .line 1184
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

    .line 1187
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1192
    :pswitch_a
    if-nez v16, :cond_1

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 1194
    .local v24, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v17, 0x1

    .line 1195
    .local v17, "daylight":Z
    :goto_3
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_e

    const/16 v25, 0x0

    .line 1196
    .local v25, "tzstyle":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .line 1197
    .local v26, "zoneString":Ljava/lang/String;
    if-eqz v26, :cond_f

    .line 1198
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1194
    .end local v17    # "daylight":Z
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    .restart local v17    # "daylight":Z
    goto :goto_3

    .line 1195
    :cond_e
    const/16 v25, 0x1

    .restart local v25    # "tzstyle":I
    goto :goto_4

    .line 1200
    .restart local v26    # "zoneString":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1201
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1200
    add-int v22, v4, v5

    .line 1202
    .local v22, "offsetMillis":I
    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 v0, v22

    invoke-static {v4, v5, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1209
    .end local v17    # "daylight":Z
    .end local v22    # "offsetMillis":I
    .end local v24    # "tz":Ljava/util/TimeZone;
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
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

    .line 1210
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_10

    const/16 v21, 0x1

    .line 1211
    .local v21, "includeSeparator":Z
    :goto_5
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ne v0, v4, :cond_11

    const/16 v20, 0x1

    .line 1212
    .local v20, "includeGmt":Z
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1210
    .end local v20    # "includeGmt":Z
    .end local v21    # "includeSeparator":Z
    :cond_10
    const/16 v21, 0x0

    .restart local v21    # "includeSeparator":Z
    goto :goto_5

    .line 1211
    :cond_11
    const/16 v20, 0x0

    goto :goto_6

    .line 1218
    .end local v21    # "includeSeparator":Z
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1219
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1218
    add-int v6, v4, v5

    .line 1221
    if-nez v6, :cond_12

    .line 1222
    const/16 v4, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1226
    :cond_12
    const v4, 0xea60

    div-int/2addr v6, v4

    .line 1227
    if-ltz v6, :cond_14

    .line 1228
    const/16 v4, 0x2b

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1234
    :goto_7
    div-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1235
    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 1239
    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_13

    .line 1240
    const/16 v4, 0x3a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1242
    :cond_13
    rem-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1230
    :cond_14
    const/16 v4, 0x2d

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1231
    neg-int v6, v6

    goto :goto_7

    .line 1250
    :pswitch_d
    if-nez v16, :cond_1

    .line 1251
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

    .line 1252
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1112
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
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternCharIndex"    # I
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "ambiguousYear"    # [Z
    .param p7, "origPos"    # Ljava/text/ParsePosition;
    .param p8, "useFollowingMinusSignAsDelimiter"    # Z
    .param p9, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1811
    const/16 v38, 0x0

    .line 1812
    .local v38, "number":Ljava/lang/Number;
    const/4 v12, 0x0

    .line 1813
    .local v12, "value":I
    new-instance v15, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1814
    .local v15, "pos":Ljava/text/ParsePosition;
    move/from16 v0, p2

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    .line 1815
    const/16 v4, 0x13

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1819
    :cond_0
    :goto_0
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v7, v4, p3

    .line 1824
    .local v7, "field":I
    :goto_1
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 1825
    move/from16 v0, p2

    move-object/from16 v1, p7

    iput v0, v1, Ljava/text/ParsePosition;->errorIndex:I

    .line 1826
    const/4 v4, -0x1

    return v4

    .line 1817
    .end local v7    # "field":I
    :cond_1
    const/16 p3, 0x1

    goto :goto_0

    .line 1828
    .restart local v7    # "field":I
    :cond_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 1829
    .local v29, "c":C
    const/16 v4, 0x20

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    const/16 v4, 0x9

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    .line 1839
    const/4 v4, 0x4

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 1840
    const/16 v4, 0xf

    move/from16 v0, p3

    if-ne v0, v4, :cond_6

    .line 1846
    :cond_3
    if-eqz p5, :cond_b

    .line 1847
    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_a

    .line 2165
    .end local v7    # "field":I
    .end local v38    # "number":Ljava/lang/Number;
    :cond_4
    :goto_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p7

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 2166
    const/4 v4, -0x1

    return v4

    .line 1830
    .restart local v7    # "field":I
    .restart local v38    # "number":Ljava/lang/Number;
    :cond_5
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto :goto_1

    .line 1841
    :cond_6
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, p4

    if-le v0, v4, :cond_3

    .line 1842
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 1843
    const/16 v4, 0x13

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 1872
    .end local v38    # "number":Ljava/lang/Number;
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v16

    .line 1875
    .local v16, "useDateFormatSymbols":Z
    packed-switch p3, :pswitch_data_0

    .line 2123
    :pswitch_0
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v39

    .line 2124
    .local v39, "parseStart":I
    if-eqz p5, :cond_28

    .line 2125
    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 2128
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v5, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .line 2132
    .local v38, "number":Ljava/lang/Number;
    :goto_4
    if-eqz v38, :cond_4

    .line 2133
    const/16 v4, 0x8

    move/from16 v0, p3

    if-ne v0, v4, :cond_29

    .line 2140
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v32

    .line 2141
    .local v32, "doubleValue":D
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    sub-int v41, v4, v39

    .line 2142
    .local v41, "width":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move/from16 v0, v41

    int-to-double v10, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    .line 2143
    .local v30, "divisor":D
    div-double v4, v32, v30

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v10

    double-to-int v12, v4

    .line 2148
    .end local v30    # "divisor":D
    .end local v32    # "doubleValue":D
    .end local v41    # "width":I
    :goto_5
    if-eqz p8, :cond_9

    if-gez v12, :cond_9

    .line 2149
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2a

    .line 2150
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_2a

    .line 2153
    :goto_6
    neg-int v12, v12

    .line 2154
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    .line 2157
    :cond_9
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2158
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1850
    .end local v16    # "useDateFormatSymbols":Z
    .end local v39    # "parseStart":I
    .local v38, "number":Ljava/lang/Number;
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

    .line 1854
    .local v38, "number":Ljava/lang/Number;
    :goto_7
    if-nez v38, :cond_c

    .line 1855
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_8

    goto/16 :goto_2

    .line 1852
    .local v38, "number":Ljava/lang/Number;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .local v38, "number":Ljava/lang/Number;
    goto :goto_7

    .line 1859
    :cond_c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1861
    if-eqz p8, :cond_8

    if-gez v12, :cond_8

    .line 1862
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 1863
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_d

    .line 1866
    :goto_8
    neg-int v12, v12

    .line 1867
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_3

    .line 1864
    :cond_d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 1865
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_8

    goto :goto_8

    .line 1877
    .end local v38    # "number":Ljava/lang/Number;
    .restart local v16    # "useDateFormatSymbols":Z
    :pswitch_1
    if-eqz v16, :cond_e

    .line 1878
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

    .end local v7    # "field":I
    move-result v37

    .local v37, "index":I
    if-lez v37, :cond_4

    .line 1879
    return v37

    .line 1882
    .end local v37    # "index":I
    .restart local v7    # "field":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1884
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 1883
    const/4 v6, 0x0

    .line 1882
    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 1885
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_4

    .line 1886
    return v37

    .line 1893
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-nez v4, :cond_11

    .line 1896
    const/4 v4, 0x4

    move/from16 v0, p4

    if-lt v0, v4, :cond_f

    const/16 v40, 0x2

    .line 1897
    .local v40, "style":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v40

    invoke-virtual {v4, v7, v0, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 1898
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 1899
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_10

    .line 1900
    return v37

    .line 1896
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    .end local v40    # "style":I
    :cond_f
    const/16 v40, 0x1

    .restart local v40    # "style":I
    goto :goto_9

    .line 1903
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1904
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1913
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v40    # "style":I
    :cond_11
    const/4 v4, 0x2

    move/from16 v0, p4

    if-gt v0, v4, :cond_12

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    sub-int v4, v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 1914
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    .line 1913
    if-eqz v4, :cond_12

    .line 1915
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    .line 1913
    if-eqz v4, :cond_12

    .line 1924
    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    rem-int/lit8 v28, v4, 0x64

    .line 1925
    .local v28, "ambiguousTwoDigitYear":I
    move/from16 v0, v28

    if-ne v12, v0, :cond_13

    const/4 v4, 0x1

    :goto_a
    const/4 v5, 0x0

    aput-boolean v4, p6, v5

    .line 1926
    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, v4, 0x64

    .line 1927
    move/from16 v0, v28

    if-ge v12, v0, :cond_14

    const/16 v4, 0x64

    .line 1926
    :goto_b
    add-int/2addr v4, v5

    add-int/2addr v12, v4

    .line 1929
    .end local v28    # "ambiguousTwoDigitYear":I
    :cond_12
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1930
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1925
    .restart local v28    # "ambiguousTwoDigitYear":I
    :cond_13
    const/4 v4, 0x0

    goto :goto_a

    .line 1927
    :cond_14
    const/4 v4, 0x0

    goto :goto_b

    .line 1935
    .end local v28    # "ambiguousTwoDigitYear":I
    :pswitch_3
    const/16 v17, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    .line 1934
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1936
    .local v36, "idx":I
    if-lez v36, :cond_4

    .line 1937
    return v36

    .line 1945
    .end local v36    # "idx":I
    :pswitch_4
    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    .line 1944
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1946
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    .line 1947
    return v36

    .line 1954
    .end local v36    # "idx":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1956
    const/4 v4, 0x1

    if-lt v12, v4, :cond_4

    const/16 v4, 0x18

    if-gt v12, v4, :cond_4

    .line 1961
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_16

    .line 1962
    const/4 v12, 0x0

    .line 1963
    :cond_16
    const/16 v4, 0xb

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1964
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1969
    :pswitch_6
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    .line 1968
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1970
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    .line 1971
    return v36

    .line 1980
    .end local v36    # "idx":I
    :pswitch_7
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    .line 1979
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1981
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    .line 1982
    return v36

    .line 1990
    .end local v36    # "idx":I
    :pswitch_8
    if-eqz v16, :cond_17

    .line 1992
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v21

    .line 1991
    const/16 v20, 0x9

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v22, p9

    invoke-direct/range {v17 .. v22}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_4

    .line 1993
    return v37

    .line 1996
    .end local v37    # "index":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 1997
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_4

    .line 1998
    return v37

    .line 2004
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_18

    .line 2006
    const/4 v4, 0x1

    if-lt v12, v4, :cond_4

    const/16 v4, 0xc

    if-gt v12, v4, :cond_4

    .line 2011
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_19

    .line 2012
    const/4 v12, 0x0

    .line 2013
    :cond_19
    const/16 v4, 0xa

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2014
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2019
    :pswitch_a
    const/16 v20, 0x0

    .line 2021
    .local v20, "sign":I
    :try_start_0
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    .line 2022
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_1b

    .line 2023
    const/16 v20, 0x1

    move/from16 v24, v20

    .line 2027
    .end local v20    # "sign":I
    .local v24, "sign":I
    :goto_c
    if-nez v24, :cond_21

    .line 2029
    const/16 v4, 0x47

    move/from16 v0, v29

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x67

    move/from16 v0, v29

    if-ne v0, v4, :cond_1f

    .line 2030
    :cond_1a
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, p2

    const-string/jumbo v5, "GMT"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1f

    .line 2031
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

    .line 2029
    if-eqz v4, :cond_1f

    .line 2032
    const-string/jumbo v4, "GMT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, p2

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    .line 2034
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_2b

    .line 2035
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v29

    .line 2036
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_1c

    .line 2037
    const/16 v20, 0x1

    .line 2043
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    :goto_d
    if-nez v20, :cond_1d

    .line 2044
    const/16 v4, 0xf

    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    .line 2045
    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 2044
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2046
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2024
    :cond_1b
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_2c

    .line 2025
    const/16 v20, -0x1

    move/from16 v24, v20

    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto :goto_c

    .line 2038
    :cond_1c
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_2b

    .line 2039
    const/16 v20, -0x1

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto :goto_d

    .line 2050
    :cond_1d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v21, 0x0

    .line 2051
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v23, p9

    .line 2050
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2052
    .local v35, "i":I
    if-lez v35, :cond_1e

    .line 2053
    return v35

    .line 2055
    :cond_1e
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 2074
    .end local v35    # "i":I
    :catch_0
    move-exception v34

    .local v34, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2

    .line 2059
    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_1f
    :try_start_3
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v4, v2}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v35

    .line 2060
    .restart local v35    # "i":I
    if-lez v35, :cond_20

    .line 2061
    return v35

    .line 2063
    :cond_20
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    .line 2067
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v24    # "sign":I
    :cond_21
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v23, v4, 0x1

    move/from16 v0, v23

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v25, 0x0

    .line 2068
    const/16 v26, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v27, p9

    .line 2067
    invoke-direct/range {v21 .. v27}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2069
    .restart local v35    # "i":I
    if-lez v35, :cond_22

    .line 2070
    return v35

    .line 2072
    :cond_22
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    .line 2081
    .end local v20    # "sign":I
    .end local v35    # "i":I
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_4

    .line 2085
    const/16 v20, 0x0

    .line 2086
    .restart local v20    # "sign":I
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 2087
    const/16 v4, 0x5a

    move/from16 v0, v29

    if-ne v0, v4, :cond_23

    .line 2088
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2089
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2093
    :cond_23
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_24

    .line 2094
    const/16 v20, 0x1

    .line 2101
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

    .line 2102
    .restart local v35    # "i":I
    if-lez v35, :cond_27

    .line 2103
    return v35

    .line 2095
    .end local v35    # "i":I
    :cond_24
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_25

    .line 2096
    const/16 v20, -0x1

    goto :goto_e

    .line 2098
    :cond_25
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_2

    .line 2101
    :cond_26
    const/16 v22, 0x0

    goto :goto_f

    .line 2105
    .restart local v35    # "i":I
    :cond_27
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_2

    .line 2130
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v39    # "parseStart":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .restart local v38    # "number":Ljava/lang/Number;
    goto/16 :goto_4

    .line 2145
    :cond_29
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto/16 :goto_5

    .line 2151
    :cond_2a
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 2152
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_9

    goto/16 :goto_6

    .line 2074
    .end local v38    # "number":Ljava/lang/Number;
    .end local v39    # "parseStart":I
    .restart local v24    # "sign":I
    :catch_1
    move-exception v34

    .restart local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_2b
    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_d

    :cond_2c
    move/from16 v24, v20

    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto/16 :goto_c

    .line 1875
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
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "sign"    # I
    .param p4, "count"    # I
    .param p5, "colonRequired"    # Z
    .param p6, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1735
    move v3, p2

    .line 1739
    .local v3, "index":I
    add-int/lit8 v3, p2, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1742
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 1783
    .end local v0    # "c":C
    :cond_0
    :goto_0
    rsub-int/lit8 v6, v3, 0x1

    return v6

    .line 1745
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v0, -0x30

    .line 1746
    .local v2, "hours":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1747
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    .line 1748
    mul-int/lit8 v6, v2, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v2, v6, v7

    .line 1752
    :goto_1
    const/16 v6, 0x17

    if-le v2, v6, :cond_3

    move v3, v4

    .line 1753
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 1750
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_2
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 1755
    :cond_3
    const/4 v5, 0x0

    .line 1756
    .local v5, "minutes":I
    const/4 v6, 0x1

    if-eq p4, v6, :cond_6

    .line 1758
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 1759
    const/16 v6, 0x3a

    if-ne v0, v6, :cond_4

    .line 1760
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1764
    :goto_2
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 1765
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 1761
    :cond_4
    if-nez p5, :cond_0

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 1767
    :cond_5
    add-int/lit8 v5, v0, -0x30

    .line 1768
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1769
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1772
    mul-int/lit8 v6, v5, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v5, v6, v7

    .line 1773
    const/16 v6, 0x3b

    if-gt v5, v6, :cond_0

    .line 1777
    :goto_3
    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v5, v6

    .line 1778
    const v6, 0xea60

    mul-int/2addr v6, v5

    mul-int/2addr v6, p3

    const/16 v7, 0xf

    invoke-virtual {p6, v7, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v6

    .line 1779
    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 1778
    invoke-virtual {v6, v7, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1780
    return v3

    .line 1781
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v5    # "minutes":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v0    # "c":C
    .restart local v2    # "hours":I
    .restart local v4    # "index":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v4    # "index":I
    .restart local v5    # "minutes":I
    :cond_6
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3
.end method

.method private subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1655
    const/4 v6, 0x0

    .line 1656
    .local v6, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1661
    .local v0, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    .line 1662
    .local v7, "zoneIndex":I
    const/4 v5, 0x0

    .line 1663
    .local v5, "tz":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v9

    .line 1664
    .local v9, "zoneStrings":[[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1665
    .local v8, "zoneNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1666
    .local v4, "nameIndex":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 1667
    aget-object v8, v9, v7

    .line 1668
    .local v8, "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1669
    const/4 v10, 0x2

    if-gt v4, v10, :cond_0

    .line 1671
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1673
    .end local v6    # "useSameName":Z
    :cond_0
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1676
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_3

    .line 1677
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    .line 1678
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    .line 1679
    aget-object v8, v9, v7

    .line 1680
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 1681
    const/4 v10, 0x2

    if-gt v4, v10, :cond_2

    .line 1682
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1684
    :cond_2
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1689
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_5

    .line 1690
    array-length v3, v9

    .line 1691
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 1692
    aget-object v8, v9, v2

    .line 1693
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    .line 1694
    const/4 v10, 0x2

    if-gt v4, v10, :cond_4

    .line 1695
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1697
    :cond_4
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1702
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_c

    .line 1703
    invoke-virtual {v5, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1704
    invoke-virtual {p0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1712
    :cond_6
    const/4 v10, 0x3

    if-lt v4, v10, :cond_a

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    .line 1713
    .local v1, "dstAmount":I
    :goto_1
    if-nez v6, :cond_7

    const/4 v10, 0x3

    if-lt v4, v10, :cond_b

    if-nez v1, :cond_b

    :cond_7
    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_8

    .line 1714
    const/16 v10, 0xf

    invoke-virtual {p3, v10}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1716
    :cond_8
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, p2

    return v10

    .line 1691
    .end local v1    # "dstAmount":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1712
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "dstAmount":I
    goto :goto_1

    .line 1713
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 1718
    .end local v1    # "dstAmount":I
    :cond_c
    const/4 v10, 0x0

    return v10
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x27

    .line 2268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2269
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2270
    .local v3, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 2271
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2272
    .local v0, "c":C
    if-eqz v3, :cond_1

    .line 2273
    if-ne v0, v6, :cond_0

    .line 2274
    const/4 v3, 0x0

    .line 2295
    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2277
    :cond_1
    if-ne v0, v6, :cond_2

    .line 2278
    const/4 v3, 0x1

    goto :goto_1

    .line 2279
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_3

    .line 2280
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2281
    .local v1, "ci":I
    if-ltz v1, :cond_4

    .line 2285
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 2286
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2279
    .end local v1    # "ci":I
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    goto :goto_2

    .line 2289
    .restart local v1    # "ci":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal pattern  character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2291
    const-string/jumbo v7, "\'"

    .line 2289
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2297
    .end local v0    # "c":C
    .end local v1    # "ci":I
    :cond_5
    if-eqz v3, :cond_6

    .line 2298
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Unfinished quote in pattern"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2299
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private useDateFormatSymbols()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2251
    iget-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    if-eqz v1, :cond_0

    .line 2252
    return v0

    .line 2254
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
    .param p1, "value"    # I
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x2

    .line 1344
    :try_start_0
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    if-nez v1, :cond_0

    .line 1345
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    iput-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    .line 1347
    :cond_0
    if-ltz p1, :cond_3

    .line 1348
    const/16 v1, 0x64

    if-ge p1, v1, :cond_4

    const/4 v1, 0x1

    if-lt p2, v1, :cond_4

    if-gt p2, v2, :cond_4

    .line 1349
    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    .line 1350
    if-ne p2, v2, :cond_1

    .line 1351
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1353
    :cond_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    add-int/2addr v1, p1

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1358
    :goto_0
    return-void

    .line 1355
    :cond_2
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1356
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1375
    :catch_0
    move-exception v0

    .line 1378
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1379
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1380
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v2, p1

    sget-object v4, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, v3, p4, v4}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1337
    return-void

    .line 1359
    :cond_4
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_3

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_3

    .line 1360
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    .line 1361
    :try_start_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit16 v2, p1, 0x3e8

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1362
    rem-int/lit16 p1, p1, 0x3e8

    .line 1363
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0x64

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1364
    rem-int/lit8 p1, p1, 0x64

    .line 1365
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1366
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1367
    return-void

    .line 1369
    :cond_5
    if-ne p2, v2, :cond_3

    if-ne p3, v2, :cond_3

    .line 1370
    rem-int/lit8 v1, p1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1371
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2345
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    .line 2346
    const-string/jumbo v2, "GyMdkHmsSEDFwWahKzZYuXLc"

    .line 2344
    invoke-direct {p0, p1, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2347
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2348
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2343
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2331
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2332
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2329
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2382
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2383
    .local v0, "other":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2384
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2407
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 2408
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2409
    .local v0, "that":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2410
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2409
    :cond_1
    return v1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v0, 0x0

    .line 945
    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    .line 946
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1001
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1002
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/CharacterIteratorFieldDelegate;

    invoke-direct {v0}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    .line 1005
    .local v0, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 1006
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    .line 1019
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 1008
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 1009
    new-instance v2, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v2, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1011
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    .line 1012
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1013
    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    .line 1012
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1016
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1017
    const-string/jumbo v3, "Cannot format given Object as a Date"

    .line 1016
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1422
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1424
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1426
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1424
    return-object v1

    .line 1425
    :catchall_0
    move-exception v1

    .line 1426
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1425
    throw v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 4
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 915
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 914
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 2371
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2372
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 2369
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2317
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2318
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZYuXLc"

    .line 2319
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    .line 2317
    invoke-direct {p0, v0, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
