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

    invoke-direct {p0}, Lsun/util/calendar/CalendarDate;-><init>()V

    const/16 v0, 0x7d4

    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    const-wide/32 v0, 0xb29bd

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 4

    invoke-direct {p0, p1}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    const/16 v0, 0x7d4

    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    const-wide/32 v0, 0xb29bd

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    return-void
.end method


# virtual methods
.method protected getCachedJan1()J
    .locals 2

    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    return-wide v0
.end method

.method protected getCachedYear()I
    .locals 1

    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    return v0
.end method

.method public abstract getNormalizedYear()I
.end method

.method protected final hit(I)Z
    .locals 1

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

    const/4 v0, 0x0

    iget-wide v2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected setCache(IJI)V
    .locals 2

    iput p1, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    iput-wide p2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    int-to-long v0, p4

    add-long/2addr v0, p2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    return-void
.end method

.method public setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    invoke-virtual {p0, p2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public abstract setNormalizedYear(I)V
.end method
