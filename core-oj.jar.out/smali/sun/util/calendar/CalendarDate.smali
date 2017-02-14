.class public abstract Lsun/util/calendar/CalendarDate;
.super Ljava/lang/Object;
.source "CalendarDate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FIELD_UNDEFINED:I = -0x80000000

.field public static final TIME_UNDEFINED:J = -0x8000000000000000L


# instance fields
.field private dayOfMonth:I

.field private dayOfWeek:I

.field private daylightSaving:I

.field private era:Lsun/util/calendar/Era;

.field private forceStandardTime:Z

.field private fraction:J

.field private hours:I

.field private leapYear:Z

.field private locale:Ljava/util/Locale;

.field private millis:I

.field private minutes:I

.field private month:I

.field private normalized:Z

.field private seconds:I

.field private year:I

.field private zoneOffset:I

.field private zoneinfo:Ljava/util/TimeZone;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public addDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0

    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public addHours(I)Lsun/util/calendar/CalendarDate;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public addMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public addMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public addMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public addSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0

    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMinutes(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addSeconds(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->addMillis(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    instance-of v5, p1, Lsun/util/calendar/CalendarDate;

    if-nez v5, :cond_0

    return v4

    :cond_0
    move-object v1, p1

    check-cast v1, Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v5

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v6

    if-eq v5, v6, :cond_1

    return v4

    :cond_1
    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v5, v1, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v5, :cond_3

    move v2, v3

    :goto_1
    if-eq v0, v2, :cond_4

    return v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    iget-object v6, v1, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v5

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v6

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->year:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->year:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->month:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->month:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->hours:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->hours:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->minutes:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->seconds:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->millis:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->millis:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-ne v5, v6, :cond_7

    :goto_2
    return v3

    :cond_6
    return v4

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_2
.end method

.method public getDayOfMonth()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    :cond_0
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    return v0
.end method

.method public getDaylightSaving()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    return v0
.end method

.method public getEra()Lsun/util/calendar/Era;
    .locals 1

    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    return v0
.end method

.method public getMillis()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    return v0
.end method

.method public getTimeOfDay()J
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide v2, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    return-wide v2

    :cond_0
    iget-wide v0, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    return v0
.end method

.method public getZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getZoneOffset()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 12

    const-wide/16 v10, 0x3c

    iget v6, p0, Lsun/util/calendar/CalendarDate;->year:I

    int-to-long v6, v6

    const-wide/16 v8, 0x7b2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    iget v8, p0, Lsun/util/calendar/CalendarDate;->month:I

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1e

    mul-long/2addr v6, v8

    iget v8, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x18

    mul-long v2, v6, v8

    iget v6, p0, Lsun/util/calendar/CalendarDate;->hours:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    mul-long/2addr v6, v10

    iget v8, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    mul-long/2addr v6, v10

    iget v8, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget v8, p0, Lsun/util/calendar/CalendarDate;->millis:I

    int-to-long v8, v8

    add-long v2, v6, v8

    iget v6, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    int-to-long v6, v6

    sub-long/2addr v2, v6

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/util/calendar/Era;->hashCode()I

    move-result v1

    :cond_0
    iget-object v6, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->hashCode()I

    move-result v5

    :goto_1
    long-to-int v6, v2

    const/16 v7, 0x20

    shr-long v8, v2, v7

    long-to-int v7, v8

    mul-int/2addr v6, v7

    xor-int/2addr v6, v1

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    return v6

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isDaylightTime()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    return v0
.end method

.method public isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStandardTime()Z
    .locals 1

    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    return v0
.end method

.method public setDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0

    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method protected setDayOfWeek(I)V
    .locals 0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    return-void
.end method

.method protected setDaylightSaving(I)V
    .locals 0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    return-void
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    return-object p0
.end method

.method public setHours(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->hours:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method setLeapYear(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    return-void
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->millis:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public setMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public setMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->month:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method protected setNormalized(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    return-void
.end method

.method public setSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public setStandardTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    return-void
.end method

.method public setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0

    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method protected setTimeOfDay(J)V
    .locals 1

    iput-wide p1, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    return-void
.end method

.method public setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->year:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0

    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    return-object p0
.end method

.method protected setZoneOffset(I)V
    .locals 0

    iput p1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x3a

    const/16 v6, 0x2d

    const/4 v5, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lsun/util/calendar/CalendarDate;->year:I

    const/4 v4, 0x4

    invoke-static {v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/util/calendar/CalendarDate;->month:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x54

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/util/calendar/CalendarDate;->hours:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/util/calendar/CalendarDate;->millis:I

    const/4 v4, 0x3

    invoke-static {v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-nez v3, :cond_0

    const/16 v3, 0x5a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-lez v3, :cond_1

    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    const/16 v2, 0x2b

    :goto_1
    const v3, 0xea60

    div-int/2addr v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v0, 0x3c

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    neg-int v0, v3

    const/16 v2, 0x2d

    goto :goto_1

    :cond_2
    const-string/jumbo v3, " local time"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
