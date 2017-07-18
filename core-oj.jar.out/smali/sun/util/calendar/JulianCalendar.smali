.class public Lsun/util/calendar/JulianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "JulianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/JulianCalendar$Date;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BCE:I = 0x0

.field private static final CE:I = 0x1

.field private static final JULIAN_EPOCH:I = -0x1

.field private static final eras:[Lsun/util/calendar/Era;


# direct methods
.method static synthetic -get0()[Lsun/util/calendar/Era;
    .locals 1

    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v0, Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    sput-boolean v0, Lsun/util/calendar/JulianCalendar;->-assertionsDisabled:Z

    const/4 v0, 0x2

    new-array v0, v0, [Lsun/util/calendar/Era;

    new-instance v1, Lsun/util/calendar/Era;

    const-string/jumbo v2, "BeforeCommonEra"

    const-string/jumbo v3, "B.C.E."

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    aput-object v1, v0, v6

    new-instance v1, Lsun/util/calendar/Era;

    const-string/jumbo v2, "CommonEra"

    const-string/jumbo v3, "C.E."

    const-wide v4, -0x388318df9000L

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    aput-object v1, v0, v7

    sput-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    return-void

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar;->setEras([Lsun/util/calendar/Era;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1

    invoke-virtual {p0, p3}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/JulianCalendar$Date;

    return-object v0
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 14

    move-object v5, p1

    check-cast v5, Lsun/util/calendar/JulianCalendar$Date;

    const-wide/16 v10, -0x1

    sub-long v10, p2, v10

    const-wide/16 v12, 0x4

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x5b8

    add-long v2, v10, v12

    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-ltz v9, :cond_1

    const-wide/16 v10, 0x5b5

    div-long v10, v2, v10

    long-to-int v8, v10

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    sub-long v10, p2, v10

    long-to-int v7, v10

    invoke-static {v8}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v4

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    cmp-long v9, p2, v10

    if-ltz v9, :cond_0

    if-eqz v4, :cond_2

    const/4 v9, 0x1

    :goto_1
    add-int/2addr v7, v9

    :cond_0
    mul-int/lit8 v9, v7, 0xc

    add-int/lit16 v6, v9, 0x175

    if-lez v6, :cond_3

    div-int/lit16 v6, v6, 0x16f

    :goto_2
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v6, v9, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    sub-long v10, p2, v10

    long-to-int v9, v10

    add-int/lit8 v0, v9, 0x1

    invoke-static/range {p2 .. p3}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v1

    sget-boolean v9, Lsun/util/calendar/JulianCalendar;->-assertionsDisabled:Z

    if-nez v9, :cond_5

    if-lez v1, :cond_4

    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "negative day of week "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :cond_1
    const-wide/16 v10, 0x5b5

    invoke-static {v2, v3, v10, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v10

    long-to-int v8, v10

    goto :goto_0

    :cond_2
    const/4 v9, 0x2

    goto :goto_1

    :cond_3
    const/16 v9, 0x16f

    invoke-static {v6, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v8}, Lsun/util/calendar/JulianCalendar$Date;->setNormalizedYear(I)V

    invoke-virtual {v5, v6}, Lsun/util/calendar/JulianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v5, v0}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v5, v1}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfWeek(I)V

    invoke-virtual {v5, v4}, Lsun/util/calendar/JulianCalendar$Date;->setLeapYear(Z)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lsun/util/calendar/JulianCalendar$Date;->setNormalized(Z)V

    return-void
.end method

.method public getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .locals 3

    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v2

    return v2
.end method

.method public getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .locals 10

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p4, p1}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v6

    return-wide v6

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v6

    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getDayOfYear(III)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    return-wide v6

    :cond_2
    int-to-long v4, p1

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/16 v8, 0x16d

    mul-long/2addr v6, v8

    const-wide/16 v8, -0x2

    add-long/2addr v6, v8

    int-to-long v8, p3

    add-long v0, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    :goto_1
    if-lez p2, :cond_6

    int-to-long v6, p2

    const-wide/16 v8, 0x16f

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    :goto_2
    const/4 v3, 0x2

    if-le p2, v3, :cond_3

    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    int-to-long v6, v3

    sub-long/2addr v0, v6

    :cond_3
    if-eqz p4, :cond_4

    if-eqz v2, :cond_4

    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x16e

    :goto_4
    invoke-virtual {p4, p1, v0, v1, v3}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    :cond_4
    return-wide v0

    :cond_5
    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/16 v8, 0x4

    invoke-static {v6, v7, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    :cond_6
    int-to-long v6, p2

    const-wide/16 v8, 0x16f

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    invoke-static {v6, v7, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_2

    :cond_7
    const/4 v3, 0x2

    goto :goto_3

    :cond_8
    const/16 v3, 0x16d

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "julian"

    return-object v0
.end method

.method public getYearFromFixedDate(J)I
    .locals 7

    const-wide/16 v2, -0x1

    sub-long v2, p1, v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x5b8

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5b5

    invoke-static {v2, v3, v4, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    return v0
.end method

.method isLeapYear(I)Z
    .locals 1

    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .locals 1

    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/JulianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1

    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/JulianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method
