.class public abstract Lsun/util/calendar/BaseCalendar$Date;
.super Lsun/util/calendar/CalendarDate;
.source "BaseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/BaseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Date"
.end annotation


# instance fields
.field cachedFixedDateJan1:J

.field cachedFixedDateNextJan1:J

.field cachedYear:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 146
    invoke-direct {p0}, Lsun/util/calendar/CalendarDate;-><init>()V

    .line 165
    const/16 v0, 0x7d4

    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    .line 166
    const-wide/32 v0, 0xb29bd

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    .line 167
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    .line 145
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 4
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    .line 165
    const/16 v0, 0x7d4

    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    .line 166
    const-wide/32 v0, 0xb29bd

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    .line 167
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    .line 148
    return-void
.end method


# virtual methods
.method protected getCachedJan1()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    return-wide v0
.end method

.method protected getCachedYear()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    return v0
.end method

.method public abstract getNormalizedYear()I
.end method

.method protected final hit(I)Z
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 170
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hit(J)Z
    .locals 5
    .param p1, "fixedDate"    # J

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-wide v2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 175
    iget-wide v2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 174
    :cond_0
    return v0
.end method

.method protected setCache(IJI)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "jan1"    # J
    .param p4, "len"    # I

    .prologue
    .line 186
    iput p1, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    .line 187
    iput-wide p2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    .line 188
    int-to-long v0, p4

    add-long/2addr v0, p2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    .line 185
    return-void
.end method

.method public setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;
    .locals 1
    .param p1, "normalizedYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 154
    invoke-virtual {p0, p2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 155
    return-object p0
.end method

.method public abstract setNormalizedYear(I)V
.end method
