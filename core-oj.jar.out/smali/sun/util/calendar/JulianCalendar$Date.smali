.class Lsun/util/calendar/JulianCalendar$Date;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "JulianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Date"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    const/16 v1, 0x16d

    invoke-virtual {p0, v0, v2, v3, v1}, Lsun/util/calendar/JulianCalendar$Date;->setCache(IJI)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 4

    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    const/16 v1, 0x16d

    invoke-virtual {p0, v0, v2, v3, v1}, Lsun/util/calendar/JulianCalendar$Date;->setCache(IJI)V

    return-void
.end method


# virtual methods
.method public getNormalizedYear()I
    .locals 3

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method protected setKnownEra(Lsun/util/calendar/Era;)V
    .locals 0

    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    return-void
.end method

.method public setNormalizedYear(I)V
    .locals 2

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    rsub-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setKnownEra(Lsun/util/calendar/Era;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setKnownEra(Lsun/util/calendar/Era;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x2d

    const/4 v6, 0x2

    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x54

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getMonth()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
