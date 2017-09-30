.class public Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;


# static fields
.field private static final formattersNoUTC:[Lorg/joda/time/format/DateTimeFormatter;

.field private static final formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x13

    new-array v0, v0, [Lorg/joda/time/format/DateTimeFormatter;

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->time()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;

    const/16 v0, 0x16

    new-array v0, v0, [Lorg/joda/time/format/DateTimeFormatter;

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHour()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinute()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hour()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinute()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->year()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonth()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonthDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyear()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearWeek()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearWeekDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->formattersNoUTC:[Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;

    aget-object v2, v2, v0

    :try_start_0
    invoke-virtual {v2, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    :goto_2
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->formattersNoUTC:[Lorg/joda/time/format/DateTimeFormatter;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->formattersNoUTC:[Lorg/joda/time/format/DateTimeFormatter;

    aget-object v0, v0, v1

    invoke-static {v2}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
