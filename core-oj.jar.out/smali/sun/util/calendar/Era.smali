.class public final Lsun/util/calendar/Era;
.super Ljava/lang/Object;
.source "Era.java"


# instance fields
.field private final abbr:Ljava/lang/String;

.field private hash:I

.field private final localTime:Z

.field private final name:Ljava/lang/String;

.field private final since:J

.field private final sinceDate:Lsun/util/calendar/CalendarDate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "abbr"    # Ljava/lang/String;
    .param p3, "since"    # J
    .param p5, "localTime"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v2, 0x0

    iput v2, p0, Lsun/util/calendar/Era;->hash:I

    .line 82
    iput-object p1, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    .line 84
    iput-wide p3, p0, Lsun/util/calendar/Era;->since:J

    .line 85
    iput-boolean p5, p0, Lsun/util/calendar/Era;->localTime:Z

    .line 86
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v1

    .line 87
    .local v1, "gcal":Lsun/util/calendar/Gregorian;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    .line 88
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v1, p3, p4, v0}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    .line 89
    new-instance v2, Lsun/util/calendar/ImmutableGregorianDate;

    invoke-direct {v2, v0}, Lsun/util/calendar/ImmutableGregorianDate;-><init>(Lsun/util/calendar/BaseCalendar$Date;)V

    iput-object v2, p0, Lsun/util/calendar/Era;->sinceDate:Lsun/util/calendar/CalendarDate;

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 125
    instance-of v2, p1, Lsun/util/calendar/Era;

    if-nez v2, :cond_0

    .line 126
    return v1

    :cond_0
    move-object v0, p1

    .line 128
    check-cast v0, Lsun/util/calendar/Era;

    .line 129
    .local v0, "that":Lsun/util/calendar/Era;
    iget-object v2, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    iget-object v3, v0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    iget-object v3, v0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 129
    if-eqz v2, :cond_1

    .line 131
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    iget-wide v4, v0, Lsun/util/calendar/Era;->since:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 132
    iget-boolean v2, p0, Lsun/util/calendar/Era;->localTime:Z

    iget-boolean v3, v0, Lsun/util/calendar/Era;->localTime:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 129
    :cond_1
    return v1
.end method

.method public getAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    return-object v0
.end method

.method public getDiaplayAbbreviation(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 105
    iget-object v0, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 97
    iget-object v0, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSince(Ljava/util/TimeZone;)J
    .locals 6
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lsun/util/calendar/Era;->localTime:Z

    if-eqz v1, :cond_0

    .line 112
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    invoke-virtual {p1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 113
    .local v0, "offset":I
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    return-wide v2

    .line 110
    .end local v0    # "offset":I
    :cond_0
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    return-wide v2
.end method

.method public getSinceDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lsun/util/calendar/Era;->sinceDate:Lsun/util/calendar/CalendarDate;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 138
    iget v1, p0, Lsun/util/calendar/Era;->hash:I

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v1, v2

    .line 140
    iget-boolean v2, p0, Lsun/util/calendar/Era;->localTime:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 139
    :cond_0
    xor-int/2addr v0, v1

    iput v0, p0, Lsun/util/calendar/Era;->hash:I

    .line 142
    :cond_1
    iget v0, p0, Lsun/util/calendar/Era;->hash:I

    return v0
.end method

.method public isLocalTime()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lsun/util/calendar/Era;->localTime:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v1, " since "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    iget-boolean v1, p0, Lsun/util/calendar/Era;->localTime:Z

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    const-string/jumbo v1, " local time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
