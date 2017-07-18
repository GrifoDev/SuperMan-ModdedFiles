.class public Lsun/util/calendar/Gregorian;
.super Lsun/util/calendar/BaseCalendar;
.source "Gregorian.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/Gregorian$Date;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->getCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/Gregorian;->getCalendarDate(J)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/Gregorian$Date;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->newCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/Gregorian$Date;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->newCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;
    .locals 1

    invoke-virtual {p0, p3}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/Gregorian$Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gregorian"

    return-object v0
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->newCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/Gregorian$Date;
    .locals 1

    new-instance v0, Lsun/util/calendar/Gregorian$Date;

    invoke-direct {v0}, Lsun/util/calendar/Gregorian$Date;-><init>()V

    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;
    .locals 1

    new-instance v0, Lsun/util/calendar/Gregorian$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/Gregorian$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method
