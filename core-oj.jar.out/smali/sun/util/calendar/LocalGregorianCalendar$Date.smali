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

    .prologue
    .line 54
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "localYear"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "localYear"    # I

    .prologue
    .line 72
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 73
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 74
    return-object p0
.end method

.method public getNormalizedYear()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return v0
.end method

.method public bridge synthetic setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 64
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 65
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 66
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 68
    :cond_0
    return-object p0
.end method

.method setLocalEra(Lsun/util/calendar/Era;)V
    .locals 0
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 93
    return-void
.end method

.method setLocalYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 98
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 97
    return-void
.end method

.method public setNormalizedYear(I)V
    .locals 0
    .param p1, "normalizedYear"    # I

    .prologue
    .line 90
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 89
    return-void
.end method

.method public bridge synthetic setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "localYear"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "localYear"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 79
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 80
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 82
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2e

    const/4 v5, 0x2

    .line 102
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "time":Ljava/lang/String;
    const/16 v4, 0x54

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    .line 106
    .local v1, "era":Lsun/util/calendar/Era;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "abbr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v4

    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
