.class Lsun/util/calendar/ImmutableGregorianDate;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "ImmutableGregorianDate.java"


# instance fields
.field private final date:Lsun/util/calendar/BaseCalendar$Date;


# direct methods
.method constructor <init>(Lsun/util/calendar/BaseCalendar$Date;)V
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;

    .prologue
    .line 34
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    .line 34
    return-void
.end method

.method private unsupported()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addHours(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 202
    if-ne p0, p1, :cond_0

    .line 203
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    instance-of v0, p1, Lsun/util/calendar/ImmutableGregorianDate;

    if-nez v0, :cond_1

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_1
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    check-cast p1, Lsun/util/calendar/ImmutableGregorianDate;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getDaylightSaving()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDaylightSaving()I

    move-result v0

    return v0
.end method

.method public getEra()Lsun/util/calendar/Era;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMillis()I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v0

    return v0
.end method

.method public getNormalizedYear()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v0

    return v0
.end method

.method public getTimeOfDay()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getTimeOfDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getZoneOffset()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZoneOffset()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDaylightTime()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isDaylightTime()Z

    move-result v0

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v0

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    return v0
.end method

.method public isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 198
    invoke-virtual {p1, p1}, Lsun/util/calendar/CalendarDate;->isSameDate(Lsun/util/calendar/CalendarDate;)Z

    move-result v0

    return v0
.end method

.method public isStandardTime()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isStandardTime()Z

    move-result v0

    return v0
.end method

.method public setDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "date"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected setDayOfWeek(I)V
    .locals 0
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 223
    return-void
.end method

.method protected setDaylightSaving(I)V
    .locals 0
    .param p1, "daylightSaving"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 243
    return-void
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 46
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public setHours(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "hours"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method setLeapYear(Z)V
    .locals 0
    .param p1, "leapYear"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 65
    return-void
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 186
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 185
    return-void
.end method

.method public setMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "millis"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public setMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "minutes"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public setMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected setNormalized(Z)V
    .locals 0
    .param p1, "normalized"    # Z

    .prologue
    .line 228
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 227
    return-void
.end method

.method public setNormalizedYear(I)V
    .locals 0
    .param p1, "normalizedYear"    # I

    .prologue
    .line 252
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 251
    return-void
.end method

.method public setSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public setStandardTime(Z)V
    .locals 0
    .param p1, "standardTime"    # Z

    .prologue
    .line 178
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 177
    return-void
.end method

.method public setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .prologue
    .line 158
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected setTimeOfDay(J)V
    .locals 0
    .param p1, "fraction"    # J

    .prologue
    .line 166
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 165
    return-void
.end method

.method public setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "zoneinfo"    # Ljava/util/TimeZone;

    .prologue
    .line 194
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected setZoneOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 236
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
