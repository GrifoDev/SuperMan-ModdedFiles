.class public Lsun/util/calendar/LocalGregorianCalendar$Date;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/LocalGregorianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Date"
.end annotation


# instance fields
.field private gregorianYear:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->addYear(I)Lsun/util/calendar/CalendarDate;

    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return-object p0
.end method

.method public getNormalizedYear()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return v0
.end method

.method public bridge synthetic setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    :cond_0
    return-object p0
.end method

.method setLocalEra(Lsun/util/calendar/Era;)V
    .locals 0

    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    return-void
.end method

.method setLocalYear(I)V
    .locals 0

    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    return-void
.end method

.method public setNormalizedYear(I)V
    .locals 0

    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return-void
.end method

.method public bridge synthetic setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2e

    const/4 v5, 0x2

    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x54

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v4

    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
