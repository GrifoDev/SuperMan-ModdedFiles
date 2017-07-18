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

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

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

    const-string/jumbo v1, "DST_OFFSET"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    const/4 v0, 0x2

    iput v0, p0, Ljava/util/Calendar;->nextStamp:I

    iput v2, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->stamp:[I

    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-direct {p0, p2}, Ljava/util/Calendar;->setWeekCountData(Ljava/util/Locale;)V

    return-void
.end method

.method private final adjustStamp()V
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x2

    :cond_0
    const v2, 0x7fffffff

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v5, v0

    if-lt v4, v3, :cond_1

    if-le v2, v4, :cond_1

    move v2, v4

    :cond_1
    if-ge v1, v4, :cond_2

    move v1, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eq v1, v2, :cond_4

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_4

    :goto_1
    iput v3, p0, Ljava/util/Calendar;->nextStamp:I

    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aget v5, v5, v0

    if-ne v5, v2, :cond_5

    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aput v3, v5, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_1
.end method

.method private static final aggregateStamp(II)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    if-le p0, p1, :cond_2

    :goto_0
    return p0

    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method private static final appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private compareTo(J)I
    .locals 3

    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

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

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

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

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    return-object v4
.end method

.method static final getFieldName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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

    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v1

    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/Calendar;->sharedZone:Z

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, p0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/Calendar;->sharedZone:Z

    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static final getMillisOf(Ljava/util/Calendar;)J
    .locals 4

    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private invalidateWeekFields()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x3

    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v5

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v4

    if-eq v3, v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v5

    if-ne v3, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v3, v5

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v3, v5

    :cond_1
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v4

    if-ne v3, v6, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v3, v4

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v3, v4

    :cond_2
    return-void
.end method

.method static final isFieldSet(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v8, 0x11

    move-object v2, p1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-array v4, v8, [I

    iput-object v4, p0, Ljava/util/Calendar;->stamp:[I

    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    const/4 v7, 0x2

    if-lt v4, v7, :cond_3

    iput-boolean v5, p0, Ljava/util/Calendar;->isTimeSet:Z

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    if-nez v4, :cond_0

    new-array v4, v8, [I

    iput-object v4, p0, Ljava/util/Calendar;->fields:[I

    :cond_0
    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    if-nez v4, :cond_1

    new-array v4, v8, [Z

    iput-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    :cond_1
    iput v5, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    instance-of v4, v4, Ljava/util/SimpleTimeZone;

    if-eqz v4, :cond_2

    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

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

    iput-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    :cond_2
    return-void

    :cond_3
    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    if-ltz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    iget-object v7, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    aput v4, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_1
.end method

.method private setWeekCountData(Ljava/util/Locale;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    const/4 v2, 0x2

    new-array v0, v2, [I

    iget-object v2, v1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    iget-object v2, v1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v4

    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    aget v2, v0, v3

    iput v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    aget v2, v0, v4

    iput v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return-void
.end method

.method private updateTime()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

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

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method checkDisplayNameParams(IIIILjava/util/Locale;I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-lt p2, p3, :cond_0

    if-gt p2, p4, :cond_0

    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-static {p6, p1}, Ljava/util/Calendar;->isFieldSet(II)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v4, v3, v0

    aput v4, v2, v0

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    add-int/lit8 v1, v0, 0x1

    aput-boolean v4, v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v4, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v4, p0, Ljava/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public final clear(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v0, p1

    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aput v1, v0, p1

    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    const/16 v5, 0x11

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/16 v3, 0x11

    new-array v3, v3, [I

    iput-object v3, v2, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0x11

    new-array v3, v3, [Z

    iput-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    const/16 v3, 0x11

    new-array v3, v3, [I

    iput-object v3, v2, Ljava/util/Calendar;->stamp:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v3, v2, Ljava/util/Calendar;->fields:[I

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    aput v4, v3, v1

    iget-object v3, v2, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v4, v1

    aput v4, v3, v1

    iget-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    iput-object v3, v2, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;->compareTo(J)I

    move-result v0

    return v0
.end method

.method protected complete()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    :cond_0
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

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

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    move-object v3, v0

    invoke-static {v3}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ljava/util/Calendar;->compareTo(J)I

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Ljava/util/Calendar;->lenient:Z

    iget-boolean v6, v3, Ljava/util/Calendar;->lenient:Z

    if-ne v5, v6, :cond_1

    iget v5, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    iget v6, v3, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    iget v6, v3, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    iget-object v6, v3, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_1
    return v4

    :catch_0
    move-exception v2

    return v4
.end method

.method public get(I)I
    .locals 1

    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->internalGet(I)I

    move-result v0

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 6

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    :cond_1
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    :cond_3
    return v2

    :cond_4
    move v2, v1

    add-int/lit8 v1, v1, 0x1

    if-gt v1, v0, :cond_3

    goto :goto_0
.end method

.method public getActualMinimum(I)I
    .locals 5

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    move v2, v1

    :goto_0
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    move v2, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_1

    goto :goto_0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v10

    :cond_0
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v9

    invoke-direct {p0, p1, p2, v9}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    array-length v0, v8

    if-ge v7, v0, :cond_1

    aget-object v0, v8, v7

    return-object v0

    :cond_1
    return-object v10
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 10
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

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    if-nez p2, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    if-eqz p1, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :cond_1
    return-object v8

    :cond_2
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v7

    if-nez v8, :cond_3

    return-object v7

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    return-object v8

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

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

    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method final getSetStateFields()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    :cond_0
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    iput-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    :cond_0
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getWeekYear()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWeeksInWeekYear()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v1, v4

    iget v4, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v1, v4

    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->hashCode()I

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    or-int v0, v1, v4

    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v2

    long-to-int v1, v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    xor-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final internalGet(I)I
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method final internalSet(II)V
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    return-void
.end method

.method final isExternallySet(I)Z
    .locals 2

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

    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method final isPartiallyNormalized()Z
    .locals 2

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWeekDateSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public roll(II)V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p2, :cond_1

    invoke-virtual {p0, p1, v1}, Ljava/util/Calendar;->roll(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method final selectFields()I
    .locals 14

    const/4 v5, 0x2

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-eqz v11, :cond_0

    const/4 v5, 0x3

    :cond_0
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x7

    aget v2, v11, v12

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x2

    aget v8, v11, v12

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x5

    aget v1, v11, v12

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v9

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v3

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x6

    aget v4, v11, v12

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v10

    move v0, v1

    if-le v9, v1, :cond_1

    move v0, v9

    :cond_1
    if-le v3, v0, :cond_2

    move v0, v3

    :cond_2
    if-le v4, v0, :cond_3

    move v0, v4

    :cond_3
    if-le v10, v0, :cond_4

    move v0, v10

    :cond_4
    if-nez v0, :cond_5

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v9, v11, v12

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x3

    aget v10, v11, v12

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_5

    move v1, v8

    move v0, v8

    :cond_5
    if-eq v0, v1, :cond_6

    if-ne v0, v9, :cond_f

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    if-lt v11, v12, :cond_f

    :cond_6
    or-int/lit8 v5, v5, 0x4

    if-ne v0, v1, :cond_12

    or-int/lit8 v5, v5, 0x20

    :cond_7
    :goto_0
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xb

    aget v6, v11, v12

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    invoke-static {v11, v12}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v7

    if-le v7, v6, :cond_23

    move v0, v7

    :goto_1
    if-nez v0, :cond_8

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_8
    if-eqz v0, :cond_9

    if-ne v0, v6, :cond_24

    or-int/lit16 v5, v5, 0x800

    :cond_9
    :goto_2
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xc

    aget v11, v11, v12

    if-eqz v11, :cond_a

    or-int/lit16 v5, v5, 0x1000

    :cond_a
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xd

    aget v11, v11, v12

    if-eqz v11, :cond_b

    or-int/lit16 v5, v5, 0x2000

    :cond_b
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xe

    aget v11, v11, v12

    if-eqz v11, :cond_c

    or-int/lit16 v5, v5, 0x4000

    :cond_c
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xf

    aget v11, v11, v12

    const/4 v12, 0x2

    if-lt v11, v12, :cond_d

    const v11, 0x8000

    or-int/2addr v5, v11

    :cond_d
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x10

    aget v11, v11, v12

    const/4 v12, 0x2

    if-lt v11, v12, :cond_e

    const/high16 v11, 0x10000

    or-int/2addr v5, v11

    :cond_e
    return v5

    :cond_f
    if-ne v0, v3, :cond_10

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    if-ge v11, v12, :cond_6

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

    :cond_15
    if-eqz v2, :cond_16

    or-int/lit16 v5, v5, 0x80

    :cond_16
    if-ne v9, v3, :cond_18

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    if-lt v11, v12, :cond_17

    or-int/lit8 v5, v5, 0x10

    goto/16 :goto_0

    :cond_17
    or-int/lit16 v5, v5, 0x100

    goto/16 :goto_0

    :cond_18
    if-ne v0, v9, :cond_19

    or-int/lit8 v5, v5, 0x10

    goto/16 :goto_0

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

    :cond_1b
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    if-eqz v11, :cond_7

    or-int/lit16 v5, v5, 0x100

    goto/16 :goto_0

    :cond_1c
    if-nez v0, :cond_1d

    const/4 v11, 0x1

    goto :goto_3

    :cond_1d
    const/4 v11, 0x0

    goto :goto_3

    :cond_1e
    if-ne v0, v4, :cond_1f

    or-int/lit8 v5, v5, 0x40

    goto/16 :goto_0

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

    :cond_21
    if-eqz v2, :cond_22

    or-int/lit16 v5, v5, 0x80

    :cond_22
    or-int/lit8 v5, v5, 0x8

    goto/16 :goto_0

    :cond_23
    move v0, v6

    goto/16 :goto_1

    :cond_24
    or-int/lit16 v5, v5, 0x400

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    if-eqz v11, :cond_9

    or-int/lit16 v5, v5, 0x200

    goto/16 :goto_2
.end method

.method public set(II)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->internalSet(II)V

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    iget v1, p0, Ljava/util/Calendar;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar;->nextStamp:I

    aput v1, v0, p1

    iget v0, p0, Ljava/util/Calendar;->nextStamp:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ljava/util/Calendar;->adjustStamp()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    goto :goto_0
.end method

.method public final set(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIII)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIIII)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method final setFieldsComputed(I)V
    .locals 3

    const/4 v2, 0x1

    const v1, 0x1ffff

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aput v2, v1, v0

    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aput v2, v1, v0

    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    :cond_3
    :goto_2
    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    goto :goto_2
.end method

.method final setFieldsNormalized(I)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x1ffff

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aput v3, v2, v0

    aput v3, v1, v0

    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v3, v1, v0

    :cond_0
    shr-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    return-void
.end method

.method public setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 1

    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 3

    const/4 v2, 0x1

    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    return-void
.end method

.method final setUnnormalized()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    return-void
.end method

.method public setWeekDate(III)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setZoneShared(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/util/Calendar;->sharedZone:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x320

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time"

    iget-boolean v3, p0, Ljava/util/Calendar;->isTimeSet:Z

    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    const-string/jumbo v2, ",areFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",areAllFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",lenient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",zone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",firstDayOfWeek"

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    int-to-long v4, v3

    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    const-string/jumbo v2, ",minimalDaysInFirstWeek"

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    int-to-long v4, v3

    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
