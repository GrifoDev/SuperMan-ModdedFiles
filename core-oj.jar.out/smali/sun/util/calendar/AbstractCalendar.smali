.class public abstract Lsun/util/calendar/AbstractCalendar;
.super Lsun/util/calendar/CalendarSystem;
.source "AbstractCalendar.java"


# static fields
.field static final DAY_IN_MILLIS:I = 0x5265c00

.field static final EPOCH_OFFSET:I = 0xaf93b

.field static final HOUR_IN_MILLIS:I = 0x36ee80

.field static final MINUTE_IN_MILLIS:I = 0xea60

.field static final SECOND_IN_MILLIS:I = 0x3e8


# instance fields
.field private eras:[Lsun/util/calendar/Era;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/util/calendar/CalendarSystem;-><init>()V

    return-void
.end method

.method static getDayOfWeekDateAfter(JI)J
    .locals 2

    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static getDayOfWeekDateBefore(JI)J
    .locals 2

    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDayOfWeekDateOnOrBefore(JI)J
    .locals 6

    const-wide/16 v4, 0x7

    add-int/lit8 v2, p2, -0x1

    int-to-long v2, v2

    sub-long v0, p0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    rem-long v2, v0, v4

    sub-long v2, p0, v2

    return-wide v2

    :cond_0
    invoke-static {v0, v1, v4, v5}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v2

    sub-long v2, p0, v2

    return-wide v2
.end method


# virtual methods
.method public getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 3

    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    return-object v1
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v7, 0x2

    new-array v3, v7, [I

    invoke-virtual {v5, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    const/4 v8, 0x0

    aput v7, v3, v8

    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int v7, v6, v7

    const/4 v8, 0x1

    aput v7, v3, v8

    const v7, 0x5265c00

    div-int v7, v6, v7

    int-to-long v0, v7

    const v7, 0x5265c00

    rem-int v2, v6, v7

    const/4 v7, 0x1

    aget v4, v3, v7

    :cond_0
    invoke-virtual {p3, v6}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    invoke-virtual {p3, v4}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    const-wide/32 v8, 0x5265c00

    div-long v8, p1, v8

    add-long/2addr v0, v8

    const-wide/32 v8, 0x5265c00

    rem-long v8, p1, v8

    long-to-int v7, v8

    add-int/2addr v2, v7

    const v7, 0x5265c00

    if-lt v2, v7, :cond_2

    const v7, 0x5265c00

    sub-int/2addr v2, v7

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    :cond_1
    const-wide/32 v8, 0xaf93b

    add-long/2addr v0, v8

    invoke-virtual {p0, p3, v0, v1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    invoke-virtual {p0, p3, v2}, Lsun/util/calendar/AbstractCalendar;->setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->isLeapYear(Lsun/util/calendar/CalendarDate;)Z

    move-result v7

    invoke-virtual {p3, v7}, Lsun/util/calendar/CalendarDate;->setLeapYear(Z)V

    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    return-object p3

    :cond_2
    :goto_0
    if-gez v2, :cond_1

    const v7, 0x5265c00

    add-int/2addr v2, v7

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    goto :goto_0
.end method

.method protected abstract getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
.end method

.method public getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getEras()[Lsun/util/calendar/Era;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    new-array v0, v1, [Lsun/util/calendar/Era;

    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method protected abstract getFixedDate(Lsun/util/calendar/CalendarDate;)J
.end method

.method public getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 10

    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, v2}, Lsun/util/calendar/AbstractCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    invoke-virtual {p0, v2}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    if-lez p1, :cond_0

    mul-int/lit8 v3, p1, 0x7

    int-to-long v6, v3

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateBefore(JI)J

    move-result-wide v8

    add-long v4, v6, v8

    :goto_0
    invoke-virtual {p0, v2, v4, v5}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    return-object v2

    :cond_0
    mul-int/lit8 v3, p1, 0x7

    int-to-long v6, v3

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateAfter(JI)J

    move-result-wide v8

    add-long v4, v6, v8

    goto :goto_0
.end method

.method public getTime(Lsun/util/calendar/CalendarDate;)J
    .locals 12

    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    const-wide/32 v8, 0xaf93b

    sub-long v8, v0, v8

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    add-long v2, v8, v10

    const/4 v6, 0x0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v7

    int-to-long v8, v7

    sub-long v8, v2, v8

    return-wide v8

    :cond_0
    const/4 v7, 0x2

    new-array v4, v7, [I

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v8, v7

    sub-long v8, v2, v8

    invoke-virtual {v5, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    :cond_1
    :goto_0
    int-to-long v8, v6

    sub-long/2addr v2, v8

    invoke-virtual {p0, v2, v3, p1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    return-wide v2

    :cond_2
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v8, v7

    sub-long v8, v2, v8

    invoke-virtual {v5, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    goto :goto_0
.end method

.method protected getTimeOfDay(Lsun/util/calendar/CalendarDate;)J
    .locals 4

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    return-wide v0
.end method

.method public getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J
    .locals 6

    const-wide/16 v4, 0x3c

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v2

    int-to-long v0, v2

    mul-long/2addr v0, v4

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWeekLength()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected abstract isLeapYear(Lsun/util/calendar/CalendarDate;)Z
.end method

.method normalizeTime(Lsun/util/calendar/CalendarDate;)I
    .locals 14

    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    const-wide/32 v6, 0x5265c00

    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v6

    if-ltz v4, :cond_2

    div-long v0, v2, v6

    rem-long/2addr v2, v6

    :cond_0
    :goto_0
    cmp-long v4, v0, v10

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2, v3}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    :cond_1
    rem-long v4, v2, v12

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    div-long/2addr v2, v12

    rem-long v4, v2, v8

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    div-long/2addr v2, v8

    rem-long v4, v2, v8

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    div-long v4, v2, v8

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    long-to-int v4, v0

    return v4

    :cond_2
    cmp-long v4, v2, v10

    if-gez v4, :cond_0

    invoke-static {v2, v3, v6, v7}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    cmp-long v4, v0, v10

    if-eqz v4, :cond_0

    mul-long v4, v6, v0

    sub-long/2addr v2, v4

    goto :goto_0
.end method

.method public setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown era name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setEras([Lsun/util/calendar/Era;)V
    .locals 0

    iput-object p1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    return-void
.end method

.method public setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
    .locals 8

    const v6, 0x36ee80

    const v5, 0xea60

    if-gez p2, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v2

    move v4, p2

    div-int v0, p2, v6

    rem-int v4, p2, v6

    div-int v1, v4, v5

    rem-int/2addr v4, v5

    div-int/lit16 v3, v4, 0x3e8

    rem-int/lit16 v4, v4, 0x3e8

    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p1, v3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    int-to-long v6, p2

    invoke-virtual {p1, v6, v7}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    const/16 v5, 0x18

    if-ge v0, v5, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    :cond_1
    return-object p1
.end method

.method public validateTime(Lsun/util/calendar/CalendarDate;)Z
    .locals 4

    const/16 v3, 0x3c

    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v0

    if-ltz v0, :cond_2

    if-lt v0, v3, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v0

    if-ltz v0, :cond_4

    if-lt v0, v3, :cond_5

    :cond_4
    return v2

    :cond_5
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_7

    :cond_6
    return v2

    :cond_7
    const/4 v1, 0x1

    return v1
.end method
