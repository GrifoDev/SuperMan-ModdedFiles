.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Calendar$CalendarAccessControlContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ALL_FIELDS:I = 0x1ffff

.field public static final ALL_STYLES:I = 0x0

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field static final AM_PM_MASK:I = 0x200

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field private static final COMPUTED:I = 0x1

.field public static final DATE:I = 0x5

.field static final DATE_MASK:I = 0x20

.field public static final DAY_OF_MONTH:I = 0x5

.field static final DAY_OF_MONTH_MASK:I = 0x20

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field static final DAY_OF_WEEK_IN_MONTH_MASK:I = 0x100

.field static final DAY_OF_WEEK_MASK:I = 0x80

.field public static final DAY_OF_YEAR:I = 0x6

.field static final DAY_OF_YEAR_MASK:I = 0x40

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field static final DST_OFFSET_MASK:I = 0x10000

.field public static final ERA:I = 0x0

.field static final ERA_MASK:I = 0x1

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field private static final FIELD_NAME:[Ljava/lang/String;

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field static final HOUR_MASK:I = 0x400

.field public static final HOUR_OF_DAY:I = 0xb

.field static final HOUR_OF_DAY_MASK:I = 0x800

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LONG:I = 0x2

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field static final MILLISECOND_MASK:I = 0x4000

.field private static final MINIMUM_USER_STAMP:I = 0x2

.field public static final MINUTE:I = 0xc

.field static final MINUTE_MASK:I = 0x1000

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field static final MONTH_MASK:I = 0x4

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field static final SECOND_MASK:I = 0x2000

.field public static final SEPTEMBER:I = 0x8

.field public static final SHORT:I = 0x1

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field private static final UNSET:I = 0x0

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field static final WEEK_OF_MONTH_MASK:I = 0x10

.field public static final WEEK_OF_YEAR:I = 0x3

.field static final WEEK_OF_YEAR_MASK:I = 0x8

.field public static final YEAR:I = 0x1

.field static final YEAR_MASK:I = 0x2

.field public static final ZONE_OFFSET:I = 0xf

.field static final ZONE_OFFSET_MASK:I = 0x8000

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "[I>;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field transient areAllFieldsSet:Z

.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private nextStamp:I

.field private serialVersionOnStream:I

.field private transient sharedZone:Z

.field private transient stamp:[I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/util/Calendar;->-assertionsDisabled:Z

    .line 842
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 841
    sput-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    .line 2502
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 2503
    const-string/jumbo v3, "ERA"

    aput-object v3, v0, v1

    const-string/jumbo v1, "YEAR"

    aput-object v1, v0, v2

    const-string/jumbo v1, "MONTH"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v4

    const-string/jumbo v1, "WEEK_OF_MONTH"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_MONTH"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2504
    const-string/jumbo v1, "DAY_OF_YEAR"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_WEEK"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_WEEK_IN_MONTH"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "AM_PM"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "HOUR"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2505
    const-string/jumbo v1, "HOUR_OF_DAY"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "MINUTE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "SECOND"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "MILLISECOND"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "ZONE_OFFSET"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2506
    const-string/jumbo v1, "DST_OFFSET"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2502
    sput-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    .line 309
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 938
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 936
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x11

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 874
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/Calendar;->nextStamp:I

    .line 906
    iput v2, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 954
    if-nez p2, :cond_0

    .line 955
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 957
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    .line 958
    new-array v0, v1, [Z

    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    .line 959
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->stamp:[I

    .line 961
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 962
    invoke-direct {p0, p2}, Ljava/util/Calendar;->setWeekCountData(Ljava/util/Locale;)V

    .line 948
    return-void
.end method

.method private final adjustStamp()V
    .locals 6

    .prologue
    .line 2614
    const/4 v1, 0x2

    .line 2615
    .local v1, "max":I
    const/4 v3, 0x2

    .line 2618
    .local v3, "newStamp":I
    :cond_0
    const v2, 0x7fffffff

    .line 2619
    .local v2, "min":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 2620
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v5, v0

    .line 2621
    .local v4, "v":I
    if-lt v4, v3, :cond_1

    if-le v2, v4, :cond_1

    .line 2622
    move v2, v4

    .line 2624
    :cond_1
    if-ge v1, v4, :cond_2

    .line 2625
    move v1, v4

    .line 2619
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2628
    .end local v4    # "v":I
    :cond_3
    if-eq v1, v2, :cond_4

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_4

    .line 2641
    :goto_1
    iput v3, p0, Ljava/util/Calendar;->nextStamp:I

    .line 2613
    return-void

    .line 2631
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v0, v5, :cond_6

    .line 2632
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aget v5, v5, v0

    if-ne v5, v2, :cond_5

    .line 2633
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aput v3, v5, v0

    .line 2631
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2636
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 2637
    if-ne v2, v1, :cond_0

    goto :goto_1
.end method

.method private static final aggregateStamp(II)I
    .locals 1
    .param p0, "stamp_a"    # I
    .param p1, "stamp_b"    # I

    .prologue
    const/4 v0, 0x0

    .line 1858
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1859
    :cond_0
    return v0

    .line 1861
    :cond_1
    if-le p0, p1, :cond_2

    .end local p0    # "stamp_a":I
    :goto_0
    return p0

    .restart local p0    # "stamp_a":I
    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method private static final appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "valid"    # Z
    .param p3, "value"    # J

    .prologue
    .line 2554
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2555
    if-eqz p2, :cond_0

    .line 2556
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2553
    :goto_0
    return-void

    .line 2558
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private compareTo(J)I
    .locals 3
    .param p1, "t"    # J

    .prologue
    .line 2596
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 2597
    .local v0, "thisTime":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 1025
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    .line 1039
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;
    .locals 6
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1482
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    .line 1483
    .local v3, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v3}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v2

    .line 1484
    .local v2, "strings":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1485
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1486
    .local v1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 1487
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1486
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1490
    :cond_0
    aget-object v4, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1492
    :cond_1
    return-object v1

    .line 1494
    .end local v0    # "i":I
    .end local v1    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    return-object v4
.end method

.method static final getFieldName(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    .prologue
    .line 2518
    sget-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;
    .locals 2
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "symbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    const/4 v1, 0x2

    .line 1510
    const/4 v0, 0x0

    .line 1511
    .local v0, "strings":[Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1528
    .end local v0    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1513
    .restart local v0    # "strings":[Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    .line 1517
    .local v0, "strings":[Ljava/lang/String;
    :sswitch_1
    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    .local v0, "strings":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    .line 1521
    .local v0, "strings":[Ljava/lang/String;
    :sswitch_2
    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    .local v0, "strings":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    .line 1525
    .local v0, "strings":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    .line 1511
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getInstance()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 974
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v1

    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 975
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/Calendar;->sharedZone:Z

    .line 976
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 1002
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, p0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1003
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/Calendar;->sharedZone:Z

    .line 1004
    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1
    .param p0, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 989
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 1019
    invoke-static {p0, p1}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static final getMillisOf(Ljava/util/Calendar;)J
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 2601
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v1, :cond_0

    .line 2602
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    return-wide v2

    .line 2604
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 2605
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 2606
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private invalidateWeekFields()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 2650
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v5

    if-eq v3, v6, :cond_0

    .line 2651
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v4

    if-eq v3, v6, :cond_0

    .line 2652
    return-void

    .line 2658
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 2659
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setLenient(Z)V

    .line 2660
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->clear(I)V

    .line 2661
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 2663
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v5

    if-ne v3, v6, :cond_1

    .line 2664
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2665
    .local v1, "weekOfMonth":I
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v3, v5

    if-eq v3, v1, :cond_1

    .line 2666
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v3, v5

    .line 2670
    .end local v1    # "weekOfMonth":I
    :cond_1
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v4

    if-ne v3, v6, :cond_2

    .line 2671
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2672
    .local v2, "weekOfYear":I
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v3, v4

    if-eq v3, v2, :cond_2

    .line 2673
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v3, v4

    .line 2648
    .end local v2    # "weekOfYear":I
    :cond_2
    return-void
.end method

.method static final isFieldSet(II)Z
    .locals 3
    .param p0, "fieldMask"    # I
    .param p1, "field"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1676
    shl-int v2, v0, p1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v8, 0x11

    .line 2725
    move-object v2, p1

    .line 2726
    .local v2, "input":Ljava/io/ObjectInputStream;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2728
    new-array v4, v8, [I

    iput-object v4, p0, Ljava/util/Calendar;->stamp:[I

    .line 2733
    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    const/4 v7, 0x2

    if-lt v4, v7, :cond_3

    .line 2735
    iput-boolean v5, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 2736
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    if-nez v4, :cond_0

    new-array v4, v8, [I

    iput-object v4, p0, Ljava/util/Calendar;->fields:[I

    .line 2737
    :cond_0
    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    if-nez v4, :cond_1

    new-array v4, v8, [Z

    iput-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    .line 2745
    :cond_1
    iput v5, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 2751
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    instance-of v4, v4, Ljava/util/SimpleTimeZone;

    if-eqz v4, :cond_2

    .line 2752
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 2753
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2754
    .local v3, "tz":Ljava/util/TimeZone;
    if-eqz v3, :cond_2

    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2755
    iput-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2723
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_2
    return-void

    .line 2739
    :cond_3
    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    if-ltz v4, :cond_1

    .line 2741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 2742
    iget-object v7, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    aput v4, v7, v0

    .line 2741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v4, v6

    .line 2742
    goto :goto_1
.end method

.method private setWeekCountData(Ljava/util/Locale;)V
    .locals 5
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2571
    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2572
    .local v0, "data":[I
    if-nez v0, :cond_0

    .line 2573
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 2574
    .local v1, "localeData":Llibcore/icu/LocaleData;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 2575
    iget-object v2, v1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    .line 2576
    iget-object v2, v1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v4

    .line 2577
    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    :cond_0
    aget v2, v0, v3

    iput v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 2580
    aget v2, v0, v4

    iput v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 2568
    return-void
.end method

.method private updateTime()V
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 2592
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 2588
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2696
    :try_start_0
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2698
    :try_start_1
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2704
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 2692
    return-void

    .line 2700
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "when"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1958
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 1959
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "when":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1958
    :cond_0
    return v0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "when"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1937
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 1938
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "when":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 1937
    :cond_0
    return v0
.end method

.method checkDisplayNameParams(IIIILjava/util/Locale;I)Z
    .locals 1
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "minStyle"    # I
    .param p4, "maxStyle"    # I
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "fieldMask"    # I

    .prologue
    .line 1499
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1500
    :cond_1
    if-lt p2, p3, :cond_0

    if-gt p2, p4, :cond_0

    .line 1503
    if-nez p5, :cond_2

    .line 1504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1506
    :cond_2
    invoke-static {p6, p1}, Ljava/util/Calendar;->isFieldSet(II)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1302
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v4, v3, v0

    aput v4, v2, v0

    .line 1303
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-boolean v4, v2, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1305
    :cond_0
    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v4, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1306
    iput-boolean v4, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1299
    return-void
.end method

.method public final clear(I)V
    .locals 2
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x0

    .line 1332
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v0, p1

    .line 1333
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aput v1, v0, p1

    .line 1334
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    .line 1336
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1337
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1330
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 2483
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 2485
    .local v2, "other":Ljava/util/Calendar;
    const/16 v3, 0x11

    new-array v3, v3, [I

    iput-object v3, v2, Ljava/util/Calendar;->fields:[I

    .line 2486
    const/16 v3, 0x11

    new-array v3, v3, [Z

    iput-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    .line 2487
    const/16 v3, 0x11

    new-array v3, v3, [I

    iput-object v3, v2, Ljava/util/Calendar;->stamp:[I

    .line 2488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 2489
    iget-object v3, v2, Ljava/util/Calendar;->fields:[I

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 2490
    iget-object v3, v2, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 2491
    iget-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, v3, v1

    .line 2488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2493
    :cond_0
    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    iput-object v3, v2, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    return-object v2

    .line 2496
    .end local v1    # "i":I
    .end local v2    # "other":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherCalendar"    # Ljava/lang/Object;

    .prologue
    .line 1981
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "anotherCalendar":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .locals 2
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 1982
    invoke-static {p1}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;->compareTo(J)I

    move-result v0

    return v0
.end method

.method protected complete()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1540
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 1541
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    .line 1542
    :cond_0
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_1

    .line 1538
    :goto_0
    return-void

    .line 1543
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1544
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    goto :goto_0
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1887
    if-ne p0, p1, :cond_0

    .line 1888
    const/4 v4, 0x1

    return v4

    .line 1890
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    move-object v3, v0

    .line 1891
    .local v3, "that":Ljava/util/Calendar;
    invoke-static {v3}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ljava/util/Calendar;->compareTo(J)I

    move-result v5

    if-nez v5, :cond_1

    .line 1892
    iget-boolean v5, p0, Ljava/util/Calendar;->lenient:Z

    iget-boolean v6, v3, Ljava/util/Calendar;->lenient:Z

    if-ne v5, v6, :cond_1

    .line 1893
    iget v5, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    iget v6, v3, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v5, v6, :cond_1

    .line 1894
    iget v5, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    iget v6, v3, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v5, v6, :cond_1

    .line 1895
    iget-object v5, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    iget-object v6, v3, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1891
    :cond_1
    return v4

    .line 1896
    .end local v3    # "that":Ljava/util/Calendar;
    :catch_0
    move-exception v2

    .line 1901
    .local v2, "e":Ljava/lang/Exception;
    return v4
.end method

.method public get(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1144
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1145
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->internalGet(I)I

    move-result v0

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 6
    .param p1, "field"    # I

    .prologue
    .line 2439
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    .line 2440
    .local v1, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 2443
    .local v0, "endValue":I
    if-ne v1, v0, :cond_0

    .line 2444
    return v1

    .line 2449
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 2450
    .local v3, "work":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 2454
    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 2455
    :cond_1
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 2460
    :cond_2
    move v2, v1

    .line 2463
    .local v2, "result":I
    :goto_0
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 2464
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 2472
    :cond_3
    return v2

    .line 2467
    :cond_4
    move v2, v1

    .line 2468
    add-int/lit8 v1, v1, 0x1

    .line 2470
    if-gt v1, v0, :cond_3

    goto :goto_0
.end method

.method public getActualMinimum(I)I
    .locals 5
    .param p1, "field"    # I

    .prologue
    .line 2385
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    .line 2386
    .local v1, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    .line 2389
    .local v0, "endValue":I
    if-ne v1, v0, :cond_0

    .line 2390
    return v1

    .line 2395
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 2396
    .local v3, "work":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 2401
    move v2, v1

    .line 2404
    .local v2, "result":I
    :goto_0
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 2405
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 2413
    :cond_1
    return v2

    .line 2408
    :cond_2
    move v2, v1

    .line 2409
    add-int/lit8 v1, v1, -0x1

    .line 2411
    if-lt v1, v0, :cond_1

    goto :goto_0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v10, 0x0

    .line 1395
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1396
    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 1395
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    return-object v10

    .line 1400
    :cond_0
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v9

    .line 1401
    .local v9, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v9}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v8

    .line 1402
    .local v8, "strings":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1403
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1404
    .local v7, "fieldValue":I
    array-length v0, v8

    if-ge v7, v0, :cond_1

    .line 1405
    aget-object v0, v8, v7

    return-object v0

    .line 1408
    .end local v7    # "fieldValue":I
    :cond_1
    return-object v10
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 10
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1456
    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 1455
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1457
    return-object v9

    .line 1459
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1462
    if-nez p2, :cond_5

    .line 1463
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 1464
    .local v8, "shortNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1465
    :cond_1
    return-object v8

    .line 1467
    :cond_2
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v7

    .line 1468
    .local v7, "longNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v8, :cond_3

    .line 1469
    return-object v7

    .line 1471
    :cond_3
    if-eqz v7, :cond_4

    .line 1472
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1474
    :cond_4
    return-object v8

    .line 1478
    .end local v7    # "longNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "shortNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 2158
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract getGreatestMinimum(I)I
.end method

.method public abstract getLeastMaximum(I)I
.end method

.method public abstract getMaximum(I)I
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 2192
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method final getSetStateFields()I
    .locals 3

    .prologue
    .line 1572
    const/4 v1, 0x0

    .line 1573
    .local v1, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1574
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 1575
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 1573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1578
    :cond_1
    return v1
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1074
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 1100
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 1101
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    .line 1103
    :cond_0
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 2081
    iget-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    iput-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2083
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2085
    :cond_0
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getWeekYear()I
    .locals 1

    .prologue
    .line 2230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWeeksInWeekYear()I
    .locals 1

    .prologue
    .line 2287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1912
    iget-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1913
    :goto_0
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v4, v4, 0x1

    .line 1912
    or-int/2addr v1, v4

    .line 1914
    iget v4, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v4, v4, 0x4

    .line 1912
    or-int/2addr v1, v4

    .line 1915
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->hashCode()I

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    .line 1912
    or-int v0, v1, v4

    .line 1916
    .local v0, "otheritems":I
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 1917
    .local v2, "t":J
    long-to-int v1, v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    xor-int/2addr v1, v0

    return v1

    .line 1912
    .end local v0    # "otheritems":I
    .end local v2    # "t":J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final internalGet(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1158
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method final internalSet(II)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 1175
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 1173
    return-void
.end method

.method final isExternallySet(I)Z
    .locals 2
    .param p1, "field"    # I

    .prologue
    .line 1562
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isFullyNormalized()Z
    .locals 1

    .prologue
    .line 1661
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 2128
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method final isPartiallyNormalized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1653
    iget-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isSet(I)Z
    .locals 2
    .param p1, "field"    # I

    .prologue
    const/4 v0, 0x0

    .line 1350
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWeekDateSupported()Z
    .locals 1

    .prologue
    .line 2208
    const/4 v0, 0x0

    return v0
.end method

.method public roll(II)V
    .locals 2
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    const/4 v1, 0x0

    .line 2041
    :goto_0
    if-lez p2, :cond_0

    .line 2042
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    .line 2043
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2045
    :cond_0
    :goto_1
    if-gez p2, :cond_1

    .line 2046
    invoke-virtual {p0, p1, v1}, Ljava/util/Calendar;->roll(IZ)V

    .line 2047
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2039
    :cond_1
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method final selectFields()I
    .locals 14

    .prologue
    .line 1707
    const/4 v5, 0x2

    .line 1709
    .local v5, "fieldMask":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-eqz v11, :cond_0

    .line 1710
    const/4 v5, 0x3

    .line 1724
    :cond_0
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x7

    aget v2, v11, v12

    .line 1725
    .local v2, "dowStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x2

    aget v8, v11, v12

    .line 1726
    .local v8, "monthStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x5

    aget v1, v11, v12

    .line 1727
    .local v1, "domStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v9

    .line 1728
    .local v9, "womStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v3

    .line 1729
    .local v3, "dowimStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x6

    aget v4, v11, v12

    .line 1730
    .local v4, "doyStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v10

    .line 1732
    .local v10, "woyStamp":I
    move v0, v1

    .line 1733
    .local v0, "bestStamp":I
    if-le v9, v1, :cond_1

    .line 1734
    move v0, v9

    .line 1736
    :cond_1
    if-le v3, v0, :cond_2

    .line 1737
    move v0, v3

    .line 1739
    :cond_2
    if-le v4, v0, :cond_3

    .line 1740
    move v0, v4

    .line 1742
    :cond_3
    if-le v10, v0, :cond_4

    .line 1743
    move v0, v10

    .line 1750
    :cond_4
    if-nez v0, :cond_5

    .line 1751
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v9, v11, v12

    .line 1752
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1753
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x3

    aget v10, v11, v12

    .line 1754
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1760
    if-nez v0, :cond_5

    .line 1761
    move v1, v8

    move v0, v8

    .line 1765
    :cond_5
    if-eq v0, v1, :cond_6

    .line 1766
    if-ne v0, v9, :cond_f

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    if-lt v11, v12, :cond_f

    .line 1768
    :cond_6
    or-int/lit8 v5, v5, 0x4

    .line 1769
    if-ne v0, v1, :cond_12

    .line 1770
    or-int/lit8 v5, v5, 0x20

    .line 1812
    :cond_7
    :goto_0
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xb

    aget v6, v11, v12

    .line 1813
    .local v6, "hourOfDayStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    invoke-static {v11, v12}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v7

    .line 1814
    .local v7, "hourStamp":I
    if-le v7, v6, :cond_23

    move v0, v7

    .line 1817
    :goto_1
    if-nez v0, :cond_8

    .line 1818
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1822
    :cond_8
    if-eqz v0, :cond_9

    .line 1823
    if-ne v0, v6, :cond_24

    .line 1824
    or-int/lit16 v5, v5, 0x800

    .line 1832
    :cond_9
    :goto_2
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xc

    aget v11, v11, v12

    if-eqz v11, :cond_a

    .line 1833
    or-int/lit16 v5, v5, 0x1000

    .line 1835
    :cond_a
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xd

    aget v11, v11, v12

    if-eqz v11, :cond_b

    .line 1836
    or-int/lit16 v5, v5, 0x2000

    .line 1838
    :cond_b
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xe

    aget v11, v11, v12

    if-eqz v11, :cond_c

    .line 1839
    or-int/lit16 v5, v5, 0x4000

    .line 1841
    :cond_c
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xf

    aget v11, v11, v12

    const/4 v12, 0x2

    if-lt v11, v12, :cond_d

    .line 1842
    const v11, 0x8000

    or-int/2addr v5, v11

    .line 1844
    :cond_d
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x10

    aget v11, v11, v12

    const/4 v12, 0x2

    if-lt v11, v12, :cond_e

    .line 1845
    const/high16 v11, 0x10000

    or-int/2addr v5, v11

    .line 1848
    :cond_e
    return v5

    .line 1767
    .end local v6    # "hourOfDayStamp":I
    .end local v7    # "hourStamp":I
    :cond_f
    if-ne v0, v3, :cond_10

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    if-ge v11, v12, :cond_6

    .line 1796
    :cond_10
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_1e

    if-eq v0, v4, :cond_11

    if-ne v0, v10, :cond_1c

    :cond_11
    const/4 v11, 0x1

    :goto_3
    if-nez v11, :cond_1e

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1772
    :cond_12
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_15

    if-eq v0, v9, :cond_13

    if-ne v0, v3, :cond_14

    :cond_13
    const/4 v11, 0x1

    :goto_4
    if-nez v11, :cond_15

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_14
    const/4 v11, 0x0

    goto :goto_4

    .line 1773
    :cond_15
    if-eqz v2, :cond_16

    .line 1774
    or-int/lit16 v5, v5, 0x80

    .line 1776
    :cond_16
    if-ne v9, v3, :cond_18

    .line 1779
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    if-lt v11, v12, :cond_17

    .line 1780
    or-int/lit8 v5, v5, 0x10

    goto/16 :goto_0

    .line 1782
    :cond_17
    or-int/lit16 v5, v5, 0x100

    goto/16 :goto_0

    .line 1785
    :cond_18
    if-ne v0, v9, :cond_19

    .line 1786
    or-int/lit8 v5, v5, 0x10

    goto/16 :goto_0

    .line 1788
    :cond_19
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_1b

    if-ne v0, v3, :cond_1a

    const/4 v11, 0x1

    :goto_5
    if-nez v11, :cond_1b

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_1a
    const/4 v11, 0x0

    goto :goto_5

    .line 1789
    :cond_1b
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    if-eqz v11, :cond_7

    .line 1790
    or-int/lit16 v5, v5, 0x100

    goto/16 :goto_0

    .line 1797
    :cond_1c
    if-nez v0, :cond_1d

    const/4 v11, 0x1

    goto :goto_3

    :cond_1d
    const/4 v11, 0x0

    goto :goto_3

    .line 1798
    :cond_1e
    if-ne v0, v4, :cond_1f

    .line 1799
    or-int/lit8 v5, v5, 0x40

    goto/16 :goto_0

    .line 1801
    :cond_1f
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_21

    if-ne v0, v10, :cond_20

    const/4 v11, 0x1

    :goto_6
    if-nez v11, :cond_21

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_20
    const/4 v11, 0x0

    goto :goto_6

    .line 1802
    :cond_21
    if-eqz v2, :cond_22

    .line 1803
    or-int/lit16 v5, v5, 0x80

    .line 1805
    :cond_22
    or-int/lit8 v5, v5, 0x8

    goto/16 :goto_0

    .restart local v6    # "hourOfDayStamp":I
    .restart local v7    # "hourStamp":I
    :cond_23
    move v0, v6

    .line 1814
    goto/16 :goto_1

    .line 1826
    :cond_24
    or-int/lit16 v5, v5, 0x400

    .line 1827
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    if-eqz v11, :cond_9

    .line 1828
    or-int/lit16 v5, v5, 0x200

    goto/16 :goto_2
.end method

.method public set(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 1196
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_2

    .line 1199
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->internalSet(II)V

    .line 1200
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1201
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1202
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1203
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    iget v1, p0, Ljava/util/Calendar;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar;->nextStamp:I

    aput v1, v0, p1

    .line 1204
    iget v0, p0, Ljava/util/Calendar;->nextStamp:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1205
    invoke-direct {p0}, Ljava/util/Calendar;->adjustStamp()V

    .line 1192
    :cond_1
    return-void

    .line 1197
    :cond_2
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    goto :goto_0
.end method

.method public final set(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .prologue
    .line 1225
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1226
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1227
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1223
    return-void
.end method

.method public final set(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    .line 1249
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1250
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1251
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1252
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 1253
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 1247
    return-void
.end method

.method public final set(IIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 1277
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1278
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1279
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1280
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 1281
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 1282
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    .line 1275
    return-void
.end method

.method final setFieldsComputed(I)V
    .locals 3
    .param p1, "fieldMask"    # I

    .prologue
    const/4 v2, 0x1

    .line 1595
    const v1, 0x1ffff

    if-ne p1, v1, :cond_2

    .line 1596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1597
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aput v2, v1, v0

    .line 1598
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    .line 1596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    :cond_0
    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1594
    :cond_1
    return-void

    .line 1602
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1603
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_4

    .line 1604
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aput v2, v1, v0

    .line 1605
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    .line 1611
    :cond_3
    :goto_2
    ushr-int/lit8 p1, p1, 0x1

    .line 1602
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1607
    :cond_4
    iget-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_3

    .line 1608
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    goto :goto_2
.end method

.method final setFieldsNormalized(I)V
    .locals 4
    .param p1, "fieldMask"    # I

    .prologue
    const/4 v3, 0x0

    .line 1632
    const v1, 0x1ffff

    if-eq p1, v1, :cond_1

    .line 1633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1634
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 1635
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aput v3, v2, v0

    aput v3, v1, v0

    .line 1636
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v3, v1, v0

    .line 1638
    :cond_0
    shr-int/lit8 p1, p1, 0x1

    .line 1633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1644
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1645
    iput-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1631
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2141
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v0, p1, :cond_0

    .line 2142
    return-void

    .line 2144
    :cond_0
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 2145
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 2139
    return-void
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 2116
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    .line 2114
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2173
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v0, p1, :cond_0

    .line 2174
    return-void

    .line 2176
    :cond_0
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 2177
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 2171
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1089
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1088
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    const/4 v2, 0x1

    .line 1116
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_0

    .line 1117
    return-void

    .line 1119
    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    .line 1120
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1121
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1122
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1123
    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1113
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "value"    # Ljava/util/TimeZone;

    .prologue
    const/4 v0, 0x0

    .line 2058
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2059
    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2069
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2056
    return-void
.end method

.method final setUnnormalized()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1668
    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1667
    return-void
.end method

.method public setWeekDate(III)V
    .locals 1
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .prologue
    .line 2266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setZoneShared(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .prologue
    .line 2099
    iput-boolean p1, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2098
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2534
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x320

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2535
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2536
    const-string/jumbo v2, "time"

    iget-boolean v3, p0, Ljava/util/Calendar;->isTimeSet:Z

    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 2537
    const-string/jumbo v2, ",areFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2538
    const-string/jumbo v2, ",areAllFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2539
    const-string/jumbo v2, ",lenient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2540
    const-string/jumbo v2, ",zone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2541
    const-string/jumbo v2, ",firstDayOfWeek"

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    int-to-long v4, v3

    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 2542
    const-string/jumbo v2, ",minimalDaysInFirstWeek"

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    int-to-long v4, v3

    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 2543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 2544
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2545
    sget-object v2, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 2543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2547
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
